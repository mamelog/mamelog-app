import 'package:app_shared/i18n.dart';
import 'package:core_designsystem/i18n.dart';
import 'package:core_designsystem/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mamelog/src/auth/auth_bloc.dart';
import 'package:mamelog/src/di/injection.dart';
import 'package:mamelog/src/router/app_router.dart';

/// The root widget of the application.
class App extends StatelessWidget {
  /// Creates a new [App] instance.
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthBloc>(),
      child: const _AppContent(),
    );
  }
}

class _AppContent extends StatelessWidget {
  const _AppContent();

  @override
  Widget build(BuildContext context) {
    return AppTranslationProviders(
      child: Builder(
        builder: (translationContext) {
          final locale = appCurrentLocaleOf(translationContext);
          return MaterialApp.router(
            title: coreDesignsystemT.appTitle,
            theme: AppTheme.light(),
            darkTheme: AppTheme.dark(),
            routerConfig: appRouter,
            locale: locale,
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: appSupportedLocales,
          );
        },
      ),
    );
  }
}
