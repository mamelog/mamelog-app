import 'package:core_designsystem/src/theme/app_color_scheme.dart';
import 'package:core_designsystem/src/theme/app_typography.dart';
import 'package:flutter/material.dart';

/// App theme definitions for light and dark modes.
abstract class AppTheme {
  /// Creates the light theme.
  static ThemeData light() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: AppColorScheme.light(),
      textTheme: AppTypography.textTheme,
    );
  }

  /// Creates the dark theme.
  static ThemeData dark() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: AppColorScheme.dark(),
      textTheme: AppTypography.textTheme,
    );
  }
}
