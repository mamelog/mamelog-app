import 'package:flutter/material.dart';

/// App color scheme constants and generation.
abstract class AppColorScheme {
  /// The seed color for the app theme (Coffee-like brown).
  static const seedColor = Color(0xFF6D4C41);

  /// Creates a light [ColorScheme] from the seed color.
  static ColorScheme light() {
    return ColorScheme.fromSeed(seedColor: seedColor);
  }

  /// Creates a dark [ColorScheme] from the seed color.
  static ColorScheme dark() {
    return ColorScheme.fromSeed(
      seedColor: seedColor,
      brightness: Brightness.dark,
    );
  }
}
