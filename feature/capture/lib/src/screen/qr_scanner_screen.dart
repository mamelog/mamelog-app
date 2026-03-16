import 'dart:async';

import 'package:feature_capture/i18n.dart';
import 'package:feature_capture/src/bloc/capture_bloc.dart';
import 'package:feature_capture/src/bloc/capture_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

/// Screen for scanning QR codes to extract coffee information from a URL.
class QrScannerScreen extends StatefulWidget {
  /// Creates a [QrScannerScreen].
  const QrScannerScreen({super.key});

  @override
  State<QrScannerScreen> createState() => _QrScannerScreenState();
}

class _QrScannerScreenState extends State<QrScannerScreen> {
  final MobileScannerController controller = MobileScannerController();
  bool _isDetected = false;

  @override
  void dispose() {
    unawaited(controller.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(featureCaptureT.qrScannerAppBarTitle),
      ),
      body: MobileScanner(
        controller: controller,
        onDetect: (capture) {
          if (_isDetected) return;
          final barcodes = capture.barcodes;
          for (final barcode in barcodes) {
            final code = barcode.rawValue;
            // Only process URLs
            if (code != null && (code.startsWith('http://') || code.startsWith('https://'))) {
              setState(() {
                _isDetected = true;
              });
              context.read<CaptureBloc>().add(
                UrlDetected(url: code, inputType: 'QR_CODE'),
              );
              // Start extraction immediately
              context.read<CaptureBloc>().add(const ExtractionRequested());
              context.pushReplacement('/capture/processing');
              break;
            }
          }
        },
      ),
    );
  }
}
