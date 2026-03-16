import 'package:core_designsystem/i18n.dart';
import 'package:core_designsystem/spacing.dart';
import 'package:core_ui/core_ui.dart';
import 'package:feature_tasting/i18n.dart';
import 'package:feature_tasting/src/edit/tasting_edit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class TastingEditScreen extends StatelessWidget {
  const TastingEditScreen({required this.drinkLogId, super.key});

  final String drinkLogId;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TastingEditCubit, TastingEditState>(
      listener: (context, state) {
        if (state.isSuccess) {
          context.pop();
        }
        if (state.error != null && !state.isLoading && !state.isSaving) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.error!)),
          );
        }
      },
      builder: (context, state) {
        if (state.isLoading) {
          return Scaffold(
            appBar: AppBar(title: Text(featureTastingT.editAppBarTitle)),
            body: const AppLoadingIndicator(),
          );
        }

        if (state.error != null && state.originalLog == null) {
          return Scaffold(
            appBar: AppBar(title: Text(featureTastingT.editAppBarTitle)),
            body: AppErrorWidget(message: state.error!),
          );
        }

        return Scaffold(
          appBar: AppBar(
            title: Text(featureTastingT.editAppBarTitle),
            actions: [
              if (state.isSaving)
                const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: SizedBox(
                      width: 24,
                      height: 24,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                  ),
                )
              else
                TextButton(
                  onPressed: () => context.read<TastingEditCubit>().save(),
                  child: Text(coreDesignsystemT.commonButtonSave),
                ),
            ],
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(AppSpacing.md),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  featureTastingT.addSectionRating,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: AppSpacing.sm),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index) {
                    final rating = index + 1;
                    return IconButton(
                      onPressed: () => context.read<TastingEditCubit>().updateRating(rating),
                      icon: Icon(
                        (state.rating ?? 0) >= rating ? Icons.star : Icons.star_border,
                        size: 40,
                        color: Colors.amber,
                      ),
                    );
                  }),
                ),
                const SizedBox(height: AppSpacing.lg),
                Text(
                  featureTastingT.addSectionTasteProfile,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: AppSpacing.sm),
                _TasteSlider(
                  label: featureTastingT.addSliderAcidity,
                  value: state.acidity,
                  onChanged: (v) => context.read<TastingEditCubit>().updateAcidity(v.toInt()),
                ),
                _TasteSlider(
                  label: featureTastingT.addSliderAroma,
                  value: state.aroma,
                  onChanged: (v) => context.read<TastingEditCubit>().updateAroma(v.toInt()),
                ),
                _TasteSlider(
                  label: featureTastingT.addSliderSweetness,
                  value: state.sweetness,
                  onChanged: (v) => context.read<TastingEditCubit>().updateSweetness(v.toInt()),
                ),
                _TasteSlider(
                  label: featureTastingT.addSliderBitterness,
                  value: state.bitterness,
                  onChanged: (v) => context.read<TastingEditCubit>().updateBitterness(v.toInt()),
                ),
                _TasteSlider(
                  label: featureTastingT.addSliderBody,
                  value: state.body,
                  onChanged: (v) => context.read<TastingEditCubit>().updateBody(v.toInt()),
                ),
                const SizedBox(height: AppSpacing.lg),
                Text(
                  featureTastingT.addSectionMemo,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: AppSpacing.sm),
                TextFormField(
                  initialValue: state.memo,
                  maxLines: 5,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: featureTastingT.addMemoHint,
                  ),
                  onChanged: (v) => context.read<TastingEditCubit>().updateMemo(v),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _TasteSlider extends StatelessWidget {
  const _TasteSlider({
    required this.label,
    required this.value,
    required this.onChanged,
  });

  final String label;
  final int value;
  final ValueChanged<double> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                '$value%',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
        Slider(
          value: value.toDouble(),
          max: 100,
          divisions: 20,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
