import 'dart:async';

import 'package:core_designsystem/i18n.dart';
import 'package:core_model/bean.dart';
import 'package:core_model/drink_log.dart';
import 'package:feature_auth/account.dart';
import 'package:feature_auth/onboarding.dart';
import 'package:feature_capture/capture.dart';
import 'package:feature_library/detail.dart';
import 'package:feature_library/list.dart';
import 'package:feature_tasting/add.dart';
import 'package:feature_tasting/detail.dart';
import 'package:feature_tasting/edit.dart';
import 'package:feature_tasting/list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mamelog/src/auth/auth_bloc.dart';
import 'package:mamelog/src/di/injection.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

/// App router configuration.
final GoRouter appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/library',
  refreshListenable: _AuthRefreshListenable(getIt<AuthBloc>()),
  redirect: (context, state) {
    final authState = getIt<AuthBloc>().state;
    final location = state.matchedLocation;

    return authState.maybeMap(
      initial: (_) {
        // Auth state not yet determined -- stay on current page
        return null;
      },
      unauthenticated: (_) {
        return location == '/onboarding' ? null : '/onboarding';
      },
      authenticated: (_) {
        return location == '/onboarding' ? '/library' : null;
      },
      orElse: () => null,
    );
  },
  routes: [
    GoRoute(
      path: '/onboarding',
      builder: (context, state) => BlocProvider(
        create: (_) => getIt<OnboardingCubit>(),
        child: const OnboardingScreen(),
      ),
    ),
    // Capture flow: CaptureBloc shared across sub-routes via ShellRoute
    ShellRoute(
      parentNavigatorKey: _rootNavigatorKey,
      builder: (context, state, child) => BlocProvider(
        create: (_) => getIt<CaptureBloc>()..add(const CaptureStarted()),
        child: child,
      ),
      routes: [
        GoRoute(
          path: '/capture',
          builder: (context, state) => const InputMethodScreen(),
          routes: [
            GoRoute(
              path: 'preview',
              builder: (context, state) => const PreviewScreen(),
            ),
            GoRoute(
              path: 'qr',
              builder: (context, state) => const QrScannerScreen(),
            ),
            GoRoute(
              path: 'url',
              builder: (context, state) => const UrlInputScreen(),
            ),
            GoRoute(
              path: 'processing',
              builder: (context, state) => const ProcessingScreen(),
            ),
            GoRoute(
              path: 'review',
              builder: (context, state) => const ReviewScreen(),
            ),
          ],
        ),
      ],
    ),
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return ScaffoldWithNavBar(child: child);
      },
      routes: [
        GoRoute(
          path: '/library',
          builder: (context, state) => BlocProvider(
            create: (_) => getIt<LibraryListCubit>(),
            child: const LibraryListScreen(),
          ),
          routes: [
            GoRoute(
              path: 'detail/:id',
              builder: (context, state) {
                final id = state.pathParameters['id'];
                if (id == null) {
                  return const Scaffold(
                    body: Center(child: Text('Invalid bean ID')),
                  );
                }
                return BlocProvider(
                  create: (_) {
                    final cubit = getIt<CoffeeDetailCubit>();
                    unawaited(cubit.load(BeanId(id)));
                    return cubit;
                  },
                  child: CoffeeDetailScreen(beanId: id),
                );
              },
            ),
          ],
        ),
        GoRoute(
          path: '/records',
          builder: (context, state) => BlocProvider(
            create: (_) => getIt<TastingListCubit>(),
            child: const TastingListScreen(),
          ),
          routes: [
            GoRoute(
              path: 'add/:beanId',
              parentNavigatorKey: _rootNavigatorKey,
              builder: (context, state) {
                final beanId = state.pathParameters['beanId'];
                if (beanId == null) {
                  return const Scaffold(
                    body: Center(child: Text('Invalid bean ID')),
                  );
                }
                return BlocProvider(
                  create: (_) => getIt<TastingAddCubit>(param1: BeanId(beanId)),
                  child: TastingAddScreen(beanId: beanId),
                );
              },
            ),
            GoRoute(
              path: 'detail/:id',
              parentNavigatorKey: _rootNavigatorKey,
              builder: (context, state) {
                final id = state.pathParameters['id'];
                if (id == null) {
                  return const Scaffold(
                    body: Center(child: Text('Invalid drink log ID')),
                  );
                }
                return BlocProvider(
                  create: (_) {
                    final cubit = getIt<TastingDetailCubit>();
                    unawaited(cubit.load(DrinkLogId(id)));
                    return cubit;
                  },
                  child: TastingDetailScreen(drinkLogId: id),
                );
              },
            ),
            GoRoute(
              path: 'edit/:id',
              parentNavigatorKey: _rootNavigatorKey,
              builder: (context, state) {
                final id = state.pathParameters['id'];
                if (id == null) {
                  return const Scaffold(
                    body: Center(child: Text('Invalid drink log ID')),
                  );
                }
                return BlocProvider(
                  create: (_) {
                    final cubit = getIt<TastingEditCubit>(
                      param1: DrinkLogId(id),
                    );
                    unawaited(cubit.load());
                    return cubit;
                  },
                  child: TastingEditScreen(drinkLogId: id),
                );
              },
            ),
          ],
        ),
        GoRoute(
          path: '/account',
          builder: (context, state) => BlocProvider(
            create: (_) => getIt<AccountCubit>(),
            child: const AccountScreen(),
          ),
        ),
      ],
    ),
  ],
);

class _AuthRefreshListenable extends ChangeNotifier {
  _AuthRefreshListenable(AuthBloc bloc) {
    _subscription = bloc.stream.listen((_) {
      notifyListeners();
    });
  }

  late final StreamSubscription<AuthBlocState> _subscription;

  @override
  void dispose() {
    unawaited(_subscription.cancel());
    super.dispose();
  }
}

class ScaffoldWithNavBar extends StatelessWidget {
  const ScaffoldWithNavBar({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      floatingActionButton: FloatingActionButton(
        heroTag: 'main_fab',
        onPressed: () => context.push('/capture'),
        child: const Icon(Icons.add_a_photo),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _calculateSelectedIndex(context),
        onDestinationSelected: (index) => _onItemTapped(index, context),
        destinations: [
          NavigationDestination(
            icon: const Icon(Icons.library_books),
            label: coreDesignsystemT.navLibrary,
          ),
          NavigationDestination(
            icon: const Icon(Icons.history),
            label: coreDesignsystemT.navRecords,
          ),
          NavigationDestination(
            icon: const Icon(Icons.person),
            label: coreDesignsystemT.navAccount,
          ),
        ],
      ),
    );
  }

  int _calculateSelectedIndex(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();
    if (location.startsWith('/library')) return 0;
    if (location.startsWith('/records')) return 1;
    if (location.startsWith('/account')) return 2;
    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        context.go('/library');
      case 1:
        context.go('/records');
      case 2:
        context.go('/account');
    }
  }
}
