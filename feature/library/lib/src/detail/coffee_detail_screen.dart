import 'dart:async';

import 'package:core_designsystem/spacing.dart';
import 'package:core_model/bean.dart';
import 'package:core_ui/core_ui.dart';
import 'package:feature_library/i18n.dart';
import 'package:feature_library/src/detail/coffee_detail_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CoffeeDetailScreen extends StatefulWidget {
  const CoffeeDetailScreen({
    required this.beanId,
    super.key,
  });

  final String beanId;

  @override
  State<CoffeeDetailScreen> createState() => _CoffeeDetailScreenState();
}

class _CoffeeDetailScreenState extends State<CoffeeDetailScreen> {
  @override
  void initState() {
    super.initState();
    unawaited(context.read<CoffeeDetailCubit>().load(BeanId(widget.beanId)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(featureLibraryT.detailAppBarTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              // TODO(ai): Navigate to edit
            },
          ),
        ],
      ),
      body: BlocBuilder<CoffeeDetailCubit, CoffeeDetailState>(
        builder: (context, state) {
          return state.when(
            initial: () => const AppLoadingIndicator(),
            loading: () => const AppLoadingIndicator(),
            error: (message) => AppErrorWidget(message: message),
            success: (bean) => SingleChildScrollView(
              padding: const EdgeInsets.all(AppSpacing.md),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bean.name,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Text(
                    'Roaster Name Placeholder',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.lg),
                  _DetailRow(
                    label: featureLibraryT.detailRoastLevel,
                    value: bean.roastLevel?.name ?? featureLibraryT.detailUnknown,
                  ),
                  _DetailRow(
                    label: featureLibraryT.detailBeanType,
                    value: bean.beanType?.name ?? featureLibraryT.detailUnknown,
                  ),
                  const Divider(height: AppSpacing.xl),
                  Center(
                    child: ElevatedButton.icon(
                      onPressed: () => context.push('/records/add/${bean.id.value}'),
                      icon: const Icon(Icons.rate_review),
                      label: Text(featureLibraryT.detailButtonAddTasting),
                    ),
                  ),
                  const Divider(height: AppSpacing.xl),
                  Text(
                    featureLibraryT.detailSectionDescription,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(height: AppSpacing.xs),
                  Text(featureLibraryT.detailNoDescription),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  const _DetailRow({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.outline,
            ),
          ),
          Text(value, style: Theme.of(context).textTheme.bodyLarge),
        ],
      ),
    );
  }
}
