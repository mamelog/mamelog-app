import 'package:core_designsystem/spacing.dart';
import 'package:core_designsystem/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AppTheme', () {
    test('Scenario: ライトテーマが生成される', () {
      final theme = AppTheme.light();
      expect(theme.brightness, equals(Brightness.light));
      expect(theme.colorScheme, isNotNull);
      expect(theme.textTheme, isNotNull);
      expect(theme.useMaterial3, isTrue);
    });

    test('Scenario: ダークテーマが生成される', () {
      final theme = AppTheme.dark();
      expect(theme.brightness, equals(Brightness.dark));
      expect(theme.colorScheme, isNotNull);
      expect(theme.useMaterial3, isTrue);
    });

    test('Scenario: ライトとダークで colorScheme が異なる', () {
      final light = AppTheme.light();
      final dark = AppTheme.dark();
      expect(light.colorScheme.primary, isNot(equals(dark.colorScheme.primary)));
    });
  });

  group('AppSpacing', () {
    test('Scenario: スペーシング定数が4の倍数体系である', () {
      const constants = [
        AppSpacing.none,
        AppSpacing.xSmall,
        AppSpacing.small,
        AppSpacing.mediumSmall,
        AppSpacing.medium,
        AppSpacing.mediumLarge,
        AppSpacing.large,
        AppSpacing.xLarge,
        AppSpacing.xxLarge,
      ];

      for (final value in constants) {
        if (value != 0) {
          expect(value % 4, equals(0), reason: 'Value $value is not a multiple of 4');
        }
      }
    });
  });
}
