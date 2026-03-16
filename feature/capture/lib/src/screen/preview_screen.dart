import 'dart:io';

import 'package:core_designsystem/spacing.dart';
import 'package:feature_capture/i18n.dart';
import 'package:feature_capture/src/bloc/capture_bloc.dart';
import 'package:feature_capture/src/bloc/capture_event.dart';
import 'package:feature_capture/src/bloc/capture_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class PreviewScreen extends StatelessWidget {
  const PreviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CaptureBloc, CaptureState>(
      builder: (context, state) {
        if (state is! Captured) {
          return Scaffold(body: Center(child: Text(featureCaptureT.previewNoImage)));
        }

        return Scaffold(
          appBar: AppBar(
            title: Text(featureCaptureT.previewAppBarTitle),
          ),
          body: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(AppSpacing.md),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.file(
                      File(state.imagePath),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(AppSpacing.lg),
                child: Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () => context.pop(),
                        child: Text(featureCaptureT.previewButtonRetake),
                      ),
                    ),
                    const SizedBox(width: AppSpacing.md),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () async {
                          context.read<CaptureBloc>().add(const ExtractionRequested());
                          await context.push('/capture/processing');
                        },
                        child: Text(featureCaptureT.previewButtonExtract),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
