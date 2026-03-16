import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:core_designsystem/i18n.dart';
import 'package:core_domain/repository.dart';
import 'package:core_domain/usecase.dart';
import 'package:core_model/pending_extraction.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';

/// Service that monitors connectivity and processes the offline
/// extraction queue when the device comes back online.
@lazySingleton
class OfflineExtractionService {
  OfflineExtractionService(
    this._pendingRepository,
    this._createExtractionUseCase,
    this._notificationsPlugin,
  );

  final PendingExtractionRepository _pendingRepository;
  final CreateExtractionUseCase _createExtractionUseCase;
  final FlutterLocalNotificationsPlugin _notificationsPlugin;

  static final _log = Logger('OfflineExtractionService');

  StreamSubscription<List<ConnectivityResult>>? _connectivitySubscription;
  bool _isProcessing = false;
  static const _maxRetries = 3;

  /// Starts listening to connectivity changes and cleans up old entries.
  void start() {
    _connectivitySubscription = Connectivity().onConnectivityChanged.listen(
      (results) {
        final isOnline = !results.contains(ConnectivityResult.none);
        if (isOnline) {
          unawaited(_processQueue());
        }
      },
      onError: (Object e) {
        _log.warning('Connectivity stream error: $e');
      },
    );
    // Cleanup entries older than 7 days on start
    unawaited(
      _pendingRepository.cleanupOlderThan(const Duration(days: 7)).catchError((Object e) {
        _log.warning('Cleanup failed: $e');
      }),
    );
  }

  /// Cancels the connectivity subscription.
  void dispose() {
    unawaited(_connectivitySubscription?.cancel());
  }

  Future<void> _processQueue() async {
    if (_isProcessing) return;
    _isProcessing = true;

    try {
      final pending = await _pendingRepository.getPending();
      for (final item in pending) {
        if (item.retryCount >= _maxRetries) {
          _log.warning('Max retries reached for ${item.id}');
          await _pendingRepository.updateStatus(
            item.id,
            PendingExtractionStatus.failed,
            errorMessage: 'Max retries exceeded',
          );
          continue;
        }

        await _pendingRepository.updateStatus(
          item.id,
          PendingExtractionStatus.processing,
        );

        try {
          final file = File(item.imagePath);
          if (!file.existsSync()) {
            _log.warning(
              'Image file not found for ${item.id}: ${item.imagePath}',
            );
            await _pendingRepository.remove(item.id);
            continue;
          }

          final bytes = await file.readAsBytes();
          final fileName = item.imagePath.split('/').last;

          final result = await _createExtractionUseCase
              .execute(
                imageBytes: bytes,
                fileName: fileName,
              )
              .timeout(const Duration(seconds: 120));

          await result.when(
            ok: (extraction) async {
              await _pendingRepository.updateStatus(
                item.id,
                PendingExtractionStatus.completed,
              );
              try {
                await _showNotification(
                  title: coreDesignsystemT.notificationExtractionTitle,
                  body: extraction.bean?.name ?? coreDesignsystemT.notificationExtractionBody,
                  payload: extraction.id,
                );
              } on Object catch (e) {
                _log.warning(
                  'Notification failed for ${item.id}: $e',
                );
              }
              // Clean up the queued image file
              await file.delete().catchError((Object e) {
                _log.warning('Failed to delete image: $e');
                return file;
              });
            },
            error: (e) async {
              _log.warning('Extraction failed for ${item.id}: $e');
              await _pendingRepository.updateStatus(
                item.id,
                PendingExtractionStatus.pending,
                retryCount: item.retryCount + 1,
                errorMessage: e.toString(),
              );
            },
          );
        } on Object catch (e) {
          _log.severe('Error processing ${item.id}: $e');
          await _pendingRepository.updateStatus(
            item.id,
            PendingExtractionStatus.pending,
            retryCount: item.retryCount + 1,
            errorMessage: e.toString(),
          );
        }
      }
    } on Object catch (e) {
      _log.severe('Queue processing failed: $e');
    } finally {
      _isProcessing = false;
    }
  }

  Future<void> _showNotification({
    required String title,
    required String body,
    String? payload,
  }) async {
    const androidDetails = AndroidNotificationDetails(
      'mamelog_extraction',
      'Extraction Notifications',
      channelDescription: 'Notifications for completed coffee extractions',
      importance: Importance.high,
      priority: Priority.high,
    );

    const darwinDetails = DarwinNotificationDetails();

    const details = NotificationDetails(
      android: androidDetails,
      iOS: darwinDetails,
    );

    await _notificationsPlugin.show(
      id: DateTime.now().millisecondsSinceEpoch ~/ 1000,
      title: title,
      body: body,
      notificationDetails: details,
      payload: payload,
    );
  }
}
