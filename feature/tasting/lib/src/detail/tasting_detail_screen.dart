import 'package:core_designsystem/spacing.dart';
import 'package:core_ui/core_ui.dart';
import 'package:feature_tasting/i18n.dart';
import 'package:feature_tasting/src/detail/tasting_detail_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class TastingDetailScreen extends StatelessWidget {
  const TastingDetailScreen({required this.drinkLogId, super.key});

  final String drinkLogId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(featureTastingT.detailAppBarTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () => context.push('/records/edit/$drinkLogId'),
          ),
        ],
      ),
      body: BlocBuilder<TastingDetailCubit, TastingDetailState>(
        builder: (context, state) {
          return state.when(
            initial: () => const AppLoadingIndicator(),
            loading: () => const AppLoadingIndicator(),
            error: (message) => AppErrorWidget(message: message),
            success: (log) => SingleChildScrollView(
              padding: const EdgeInsets.all(AppSpacing.md),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Rating
                  Text(
                    featureTastingT.detailSectionRating,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Row(
                    children: List.generate(5, (index) {
                      final star = index + 1;
                      return Icon(
                        (log.rating ?? 0) >= star ? Icons.star : Icons.star_border,
                        size: 32,
                        color: Colors.amber,
                      );
                    }),
                  ),
                  const Divider(height: AppSpacing.xl),

                  // Taste Profile
                  Text(
                    featureTastingT.detailSectionTasteProfile,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  _TasteBar(
                    label: featureTastingT.addSliderAcidity,
                    value: log.acidity ?? 50,
                  ),
                  _TasteBar(
                    label: featureTastingT.addSliderAroma,
                    value: log.aroma ?? 50,
                  ),
                  _TasteBar(
                    label: featureTastingT.addSliderSweetness,
                    value: log.sweetness ?? 50,
                  ),
                  _TasteBar(
                    label: featureTastingT.addSliderBitterness,
                    value: log.bitterness ?? 50,
                  ),
                  _TasteBar(
                    label: featureTastingT.addSliderBody,
                    value: log.body ?? 50,
                  ),
                  const Divider(height: AppSpacing.xl),

                  // Memo
                  Text(
                    featureTastingT.detailSectionMemo,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Text(
                    log.memo ?? featureTastingT.detailNoMemo,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const Divider(height: AppSpacing.xl),

                  // Date
                  Text(
                    featureTastingT.detailSectionDate,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Text(
                    _formatDate(log.drunkAt),
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.year}/${date.month.toString().padLeft(2, '0')}'
        '/${date.day.toString().padLeft(2, '0')}';
  }
}

class _TasteBar extends StatelessWidget {
  const _TasteBar({required this.label, required this.value});

  final String label;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.xs),
      child: Row(
        children: [
          SizedBox(
            width: 80,
            child: Text(
              label,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          const SizedBox(width: AppSpacing.sm),
          Expanded(
            child: LinearProgressIndicator(
              value: value / 100,
              minHeight: 8,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          const SizedBox(width: AppSpacing.sm),
          SizedBox(
            width: 40,
            child: Text(
              '$value%',
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}
