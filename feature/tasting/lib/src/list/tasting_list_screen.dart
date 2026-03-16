import 'package:core_designsystem/spacing.dart';
import 'package:core_ui/core_ui.dart';
import 'package:feature_tasting/i18n.dart';
import 'package:feature_tasting/src/list/tasting_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class TastingListScreen extends StatelessWidget {
  const TastingListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(featureTastingT.listAppBarTitle),
      ),
      body: BlocBuilder<TastingListCubit, TastingListState>(
        builder: (context, state) {
          return state.when(
            initial: () => const AppLoadingIndicator(),
            loading: () => const AppLoadingIndicator(),
            error: (message) => AppErrorWidget(message: message),
            success: (logs) {
              if (logs.isEmpty) {
                return _EmptyState(
                  onAction: () => context.go('/library'),
                );
              }

              return ListView.separated(
                padding: const EdgeInsets.all(AppSpacing.md),
                itemCount: logs.length,
                separatorBuilder: (context, index) => const SizedBox(height: AppSpacing.sm),
                itemBuilder: (context, index) {
                  final log = logs[index];
                  return AppCard(
                    onTap: () => context.push('/records/detail/${log.id.value}'),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Coffee ${log.beanId.value.substring(0, 4)}', // TODO(ai): Load bean name
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ),
                            if (log.rating != null)
                              Row(
                                children: List.generate(
                                  5,
                                  (i) => Icon(
                                    i < log.rating! ? Icons.star : Icons.star_border,
                                    size: 16,
                                    color: Colors.amber,
                                  ),
                                ),
                              ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(
                          log.drunkAt.toLocal().toString().split('.')[0],
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Theme.of(context).colorScheme.outline,
                          ),
                        ),
                        if (log.memo != null && log.memo!.isNotEmpty) ...[
                          const SizedBox(height: 8),
                          Text(
                            log.memo!,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ],
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState({required this.onAction});

  final VoidCallback onAction;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.history,
            size: 64,
            color: Theme.of(context).colorScheme.outline,
          ),
          const SizedBox(height: 16),
          Text(
            featureTastingT.listEmptyTitle,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 8),
          Text(featureTastingT.listEmptySubtitle),
          const SizedBox(height: 24),
          ElevatedButton.icon(
            onPressed: onAction,
            icon: const Icon(Icons.library_books),
            label: Text(featureTastingT.listButtonGoToLibrary),
          ),
        ],
      ),
    );
  }
}
