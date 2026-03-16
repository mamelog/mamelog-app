import 'package:core_designsystem/spacing.dart';
import 'package:feature_capture/i18n.dart';
import 'package:feature_capture/src/bloc/capture_bloc.dart';
import 'package:feature_capture/src/bloc/capture_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

/// Screen for manually entering a product URL to extract coffee information.
class UrlInputScreen extends StatefulWidget {
  /// Creates a [UrlInputScreen].
  const UrlInputScreen({super.key});

  @override
  State<UrlInputScreen> createState() => _UrlInputScreenState();
}

class _UrlInputScreenState extends State<UrlInputScreen> {
  final TextEditingController _controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(featureCaptureT.urlInputAppBarTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: AppSpacing.md),
              TextFormField(
                controller: _controller,
                autofocus: true,
                keyboardType: TextInputType.url,
                decoration: InputDecoration(
                  labelText: featureCaptureT.urlInputLabel,
                  hintText: featureCaptureT.urlInputHint,
                  border: const OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return featureCaptureT.urlInputErrorEmpty;
                  }
                  final uri = Uri.tryParse(value);
                  if (uri == null ||
                      !uri.hasAbsolutePath ||
                      !(uri.isScheme('http') || uri.isScheme('https'))) {
                    return featureCaptureT.urlInputErrorInvalid;
                  }
                  return null;
                },
              ),
              const SizedBox(height: AppSpacing.lg),
              ElevatedButton(
                onPressed: _onSubmit,
                child: Text(featureCaptureT.urlInputButtonExtract),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onSubmit() {
    if (_formKey.currentState?.validate() ?? false) {
      context.read<CaptureBloc>().add(
        UrlDetected(url: _controller.text, inputType: 'URL'),
      );
      // Start extraction immediately
      context.read<CaptureBloc>().add(const ExtractionRequested());
      context.pushReplacement('/capture/processing');
    }
  }
}
