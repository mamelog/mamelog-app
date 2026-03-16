import 'package:core_designsystem/spacing.dart';
import 'package:core_model/bean.dart';
import 'package:core_ui/core_ui.dart';
import 'package:feature_capture/i18n.dart';
import 'package:feature_capture/src/bloc/capture_bloc.dart';
import 'package:feature_capture/src/bloc/capture_event.dart';
import 'package:feature_capture/src/bloc/capture_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CaptureBloc, CaptureState>(
      listener: (context, state) {
        if (state is Saved) {
          context.go('/library');
        }
      },
      builder: (context, state) {
        return state.maybeMap(
          saving: (_) => const Scaffold(body: AppLoadingIndicator()),
          extracted: (s) {
            final bean = s.extraction.bean;
            final scores = s.extraction.confidenceScores;

            return Scaffold(
              appBar: AppBar(
                title: Text(featureCaptureT.reviewAppBarTitle),
                actions: [
                  TextButton(
                    onPressed: () => context.read<CaptureBloc>().add(const SaveRequested()),
                    child: Text(featureCaptureT.reviewButtonSave),
                  ),
                ],
              ),
              body: SingleChildScrollView(
                padding: const EdgeInsets.all(AppSpacing.md),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _EditableReviewField(
                      label: featureCaptureT.reviewFieldCoffeeName,
                      initialValue: (scores['bean_name'] ?? 0.0) < 0.5 ? '' : (bean?.name ?? ''),
                      score: scores['bean_name'] ?? 0.0,
                      onChanged: (val) {
                        if (bean != null) {
                          context.read<CaptureBloc>().add(
                            BeanUpdated(bean: bean.copyWith(name: val)),
                          );
                        }
                      },
                    ),
                    const SizedBox(height: AppSpacing.md),
                    _EditableReviewField(
                      label: featureCaptureT.reviewFieldRoaster,
                      initialValue: (scores['roaster'] ?? 0.0) < 0.5
                          ? ''
                          : (bean?.roasterId?.value ?? ''), // TODO(ai): Get name
                      score: scores['roaster'] ?? 0.0,
                      onChanged: (val) {
                        // TODO(ai): Handle roaster edit
                      },
                    ),
                    const SizedBox(height: AppSpacing.lg),
                    Text(
                      featureCaptureT.reviewSectionRoastLevel,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    const SizedBox(height: 4),
                    _RoastLevelSelector(
                      selected: bean?.roastLevel,
                      onSelected: (val) {
                        if (bean != null) {
                          context.read<CaptureBloc>().add(
                            BeanUpdated(bean: bean.copyWith(roastLevel: val)),
                          );
                        }
                      },
                    ),
                    const SizedBox(height: AppSpacing.lg),
                    Text(
                      featureCaptureT.reviewSectionOrigins,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: AppSpacing.sm),
                    if (bean?.origins.isEmpty ?? true)
                      Text(featureCaptureT.reviewOriginsEmpty)
                    else
                      ...bean!.origins.map(
                        (o) => Card(
                          child: ListTile(
                            title: Text(o.countryId?.value ?? featureCaptureT.reviewUnknown),
                            subtitle: Text(
                              '${o.varietyId?.value ?? featureCaptureT.reviewUnknownVariety} / ${o.processingMethodId?.value ?? featureCaptureT.reviewUnknownProcess}',
                            ),
                            trailing: ConfidenceBadge(score: scores['variety'] ?? 0.5),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            );
          },
          orElse: () => Scaffold(
            body: Center(child: Text(featureCaptureT.reviewNoData)),
          ),
        );
      },
    );
  }
}

class _RoastLevelSelector extends StatelessWidget {
  const _RoastLevelSelector({required this.selected, required this.onSelected});

  final RoastLevel? selected;
  final ValueChanged<RoastLevel> onSelected;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<RoastLevel>(
      segments: RoastLevel.values
          .map((l) => ButtonSegment(value: l, label: Text(l.name.substring(0, 1).toUpperCase())))
          .toList(),
      selected: selected != null ? {selected!} : {},
      emptySelectionAllowed: true,
      onSelectionChanged: (val) {
        if (val.isNotEmpty) {
          onSelected(val.first);
        }
      },
    );
  }
}

class _EditableReviewField extends StatefulWidget {
  const _EditableReviewField({
    required this.label,
    required this.initialValue,
    required this.score,
    required this.onChanged,
  });

  final String label;
  final String initialValue;
  final double score;
  final ValueChanged<String> onChanged;

  @override
  State<_EditableReviewField> createState() => _EditableReviewFieldState();
}

class _EditableReviewFieldState extends State<_EditableReviewField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(widget.label, style: Theme.of(context).textTheme.labelMedium),
            const Spacer(),
            ConfidenceBadge(score: widget.score),
          ],
        ),
        const SizedBox(height: 4),
        TextField(
          controller: _controller,
          onChanged: widget.onChanged,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          ),
        ),
      ],
    );
  }
}
