import 'package:core_ui/core_ui.dart';
import 'package:feature_capture/i18n.dart';
import 'package:feature_capture/src/bloc/capture_bloc.dart';
import 'package:feature_capture/src/bloc/capture_event.dart';
import 'package:feature_capture/src/bloc/capture_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ProcessingScreen extends StatelessWidget {
  const ProcessingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CaptureBloc, CaptureState>(
      listener: (context, state) {
        if (state is Extracted) {
          context.pushReplacement('/capture/review');
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(featureCaptureT.processingAppBarTitle),
          automaticallyImplyLeading: false,
        ),
        body: BlocBuilder<CaptureBloc, CaptureState>(
          builder: (context, state) {
            if (state is ExtractionFailed) {
              return AppErrorWidget(
                message: state.error,
                onRetry: () => context.read<CaptureBloc>().add(
                  const ExtractionRetried(),
                ),
              );
            }

            return const _ProcessingSkeleton();
          },
        ),
      ),
    );
  }
}

class _ProcessingSkeleton extends StatelessWidget {
  const _ProcessingSkeleton();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Skeleton(height: 200, width: double.infinity),
          SizedBox(height: 24),
          Skeleton(height: 32, width: 200),
          SizedBox(height: 16),
          Skeleton(height: 20, width: double.infinity),
          SizedBox(height: 8),
          Skeleton(height: 20, width: double.infinity),
          SizedBox(height: 8),
          Skeleton(height: 20, width: 150),
        ],
      ),
    );
  }
}
