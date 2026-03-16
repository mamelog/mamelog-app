import 'dart:async';

import 'package:core_designsystem/spacing.dart';
import 'package:feature_capture/i18n.dart';
import 'package:feature_capture/src/bloc/capture_bloc.dart';
import 'package:feature_capture/src/bloc/capture_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class InputMethodScreen extends StatelessWidget {
  const InputMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(featureCaptureT.inputMethodAppBarTitle),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => context.pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: AppSpacing.lg),
            _InputMethodCard(
              title: featureCaptureT.inputMethodPhotoTitle,
              subtitle: featureCaptureT.inputMethodPhotoSubtitle,
              icon: Icons.camera_alt,
              onTap: () {
                unawaited(_takePhoto(context));
              },
            ),
            const SizedBox(height: AppSpacing.md),
            _InputMethodCard(
              title: featureCaptureT.inputMethodQrTitle,
              subtitle: featureCaptureT.inputMethodQrSubtitle,
              icon: Icons.qr_code_scanner,
              onTap: () {
                unawaited(context.push('/capture/qr'));
              },
            ),
            const SizedBox(height: AppSpacing.md),
            _InputMethodCard(
              title: featureCaptureT.inputMethodUrlTitle,
              subtitle: featureCaptureT.inputMethodUrlSubtitle,
              icon: Icons.link,
              onTap: () {
                unawaited(context.push('/capture/url'));
              },
            ),
            const SizedBox(height: AppSpacing.md),
            _InputMethodCard(
              title: featureCaptureT.inputMethodManualTitle,
              subtitle: featureCaptureT.inputMethodManualSubtitle,
              icon: Icons.edit_note,
              onTap: () {
                context.read<CaptureBloc>().add(const ManualInputRequested());
                unawaited(context.push('/capture/review'));
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _takePhoto(BuildContext context) async {
    final picker = ImagePicker();
    final photo = await picker.pickImage(
      source: ImageSource.camera,
      maxWidth: 1920,
      maxHeight: 1920,
    );

    if (photo != null && context.mounted) {
      context.read<CaptureBloc>().add(ImageCaptured(imagePath: photo.path));
      await context.push('/capture/preview');
    }
  }
}

class _InputMethodCard extends StatelessWidget {
  const _InputMethodCard({
    required this.title,
    required this.subtitle,
    required this.icon,
    this.onTap,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final enabled = onTap != null;

    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: Theme.of(context).colorScheme.outlineVariant,
        ),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: Row(
            children: [
              Icon(
                icon,
                size: 32,
                color: enabled
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.outline,
              ),
              const SizedBox(width: AppSpacing.lg),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: enabled ? null : Theme.of(context).colorScheme.outline,
                      ),
                    ),
                    Text(
                      subtitle,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                    ),
                  ],
                ),
              ),
              if (enabled) const Icon(Icons.chevron_right),
            ],
          ),
        ),
      ),
    );
  }
}
