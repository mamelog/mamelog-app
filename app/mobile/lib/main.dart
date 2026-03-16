import 'dart:async';

import 'package:core_common/log.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:logging/logging.dart';
import 'package:mamelog/firebase_options.dart';
import 'package:mamelog/src/app.dart';
import 'package:mamelog/src/di/injection.dart';
import 'package:mamelog/src/flavor/flavor.dart';
import 'package:mamelog/src/offline/offline_extraction_service.dart';

Future<void> main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      // Global Flutter error handler
      FlutterError.onError = (details) {
        FlutterError.presentError(details);
        Logger('FlutterError').severe(
          'Uncaught Flutter error: ${details.exceptionAsString()}',
          details.exception,
          details.stack,
        );
      };

      // Initialize Logger
      initLogger();
      final log = Logger('main');

      // Get flavor from dart-define
      const flavorString = String.fromEnvironment('FLAVOR', defaultValue: 'dev');
      final flavor = AppFlavor.fromString(flavorString);
      log.info('Starting app with flavor: ${flavor.name}');

      // Initialize Firebase
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform(flavor: flavor),
      );

      // Initialize DI
      await configureDependencies(flavor);

      // Initialize local notifications (non-fatal on failure)
      try {
        final notificationsPlugin = getIt<FlutterLocalNotificationsPlugin>();
        const androidSettings = AndroidInitializationSettings('@mipmap/ic_launcher');
        const iosSettings = DarwinInitializationSettings();
        const initSettings = InitializationSettings(
          android: androidSettings,
          iOS: iosSettings,
        );
        await notificationsPlugin.initialize(settings: initSettings);
      } on Exception catch (e) {
        log.warning('Notification initialization failed: $e');
      }

      // Start offline extraction service
      getIt<OfflineExtractionService>().start();

      runApp(const App());
    },
    (error, stack) {
      Logger('Zone').severe('Uncaught zone error', error, stack);
    },
  );
}
