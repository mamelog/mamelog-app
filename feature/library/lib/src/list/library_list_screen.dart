import 'package:core_designsystem/spacing.dart';
import 'package:core_ui/core_ui.dart';
import 'package:feature_library/i18n.dart';
import 'package:feature_library/src/list/library_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LibraryListScreen extends StatelessWidget {
  const LibraryListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(featureLibraryT.listAppBarTitle),
      ),
      body: BlocBuilder<LibraryListCubit, LibraryListState>(
        builder: (context, state) {
          return state.when(
            initial: () => const AppLoadingIndicator(),
            loading: () => const AppLoadingIndicator(),
            error: (message) => AppErrorWidget(message: message),
            success: (beans) {
              if (beans.isEmpty) {
                return _EmptyState(
                  onAction: () => context.push('/capture'),
                );
              }

              return ListView.separated(
                padding: const EdgeInsets.all(AppSpacing.md),
                itemCount: beans.length,
                separatorBuilder: (context, index) => const SizedBox(height: AppSpacing.sm),
                itemBuilder: (context, index) {
                  final bean = beans[index];
                  return AppCard(
                    onTap: () => context.push('/library/detail/${bean.id.value}'),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          bean.name,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Roaster Name Placeholder', // TODO(ai): Get roaster name
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Theme.of(context).colorScheme.outline,
                          ),
                        ),
                        if (bean.roastLevel != null) ...[
                          const SizedBox(height: 8),
                          const ConfidenceBadge(score: 1),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push('/capture'),
        child: const Icon(Icons.add_a_photo),
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
            Icons.coffee_outlined,
            size: 64,
            color: Theme.of(context).colorScheme.outline,
          ),
          const SizedBox(height: 16),
          Text(
            featureLibraryT.listEmptyTitle,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 8),
          Text(featureLibraryT.listEmptySubtitle),
          const SizedBox(height: 24),
          ElevatedButton.icon(
            onPressed: onAction,
            icon: const Icon(Icons.add),
            label: Text(featureLibraryT.listButtonAddCoffee),
          ),
        ],
      ),
    );
  }
}
