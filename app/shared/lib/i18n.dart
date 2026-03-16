import 'package:core_designsystem/i18n.dart';
import 'package:core_ui/i18n.dart';
import 'package:feature_auth/i18n.dart';
import 'package:feature_capture/i18n.dart';
import 'package:feature_library/i18n.dart';
import 'package:feature_stats/i18n.dart';
import 'package:feature_tasting/i18n.dart';
import 'package:flutter/widgets.dart';

/// 全 i18n パッケージのレジストリ。
final _i18nPackages = <_I18nPackage>[
  const _I18nPackage(
    useDeviceLocale: CoreDesignsystemLocaleSettings.useDeviceLocale,
    setLocaleRaw: CoreDesignsystemLocaleSettings.setLocaleRaw,
    providerBuilder: CoreDesignsystemTranslationProvider.new,
  ),
  const _I18nPackage(
    useDeviceLocale: CoreUiLocaleSettings.useDeviceLocale,
    setLocaleRaw: CoreUiLocaleSettings.setLocaleRaw,
    providerBuilder: CoreUiTranslationProvider.new,
  ),
  const _I18nPackage(
    useDeviceLocale: FeatureAuthLocaleSettings.useDeviceLocale,
    setLocaleRaw: FeatureAuthLocaleSettings.setLocaleRaw,
    providerBuilder: FeatureAuthTranslationProvider.new,
  ),
  const _I18nPackage(
    useDeviceLocale: FeatureCaptureLocaleSettings.useDeviceLocale,
    setLocaleRaw: FeatureCaptureLocaleSettings.setLocaleRaw,
    providerBuilder: FeatureCaptureTranslationProvider.new,
  ),
  const _I18nPackage(
    useDeviceLocale: FeatureLibraryLocaleSettings.useDeviceLocale,
    setLocaleRaw: FeatureLibraryLocaleSettings.setLocaleRaw,
    providerBuilder: FeatureLibraryTranslationProvider.new,
  ),
  const _I18nPackage(
    useDeviceLocale: FeatureStatsLocaleSettings.useDeviceLocale,
    setLocaleRaw: FeatureStatsLocaleSettings.setLocaleRaw,
    providerBuilder: FeatureStatsTranslationProvider.new,
  ),
  const _I18nPackage(
    useDeviceLocale: FeatureTastingLocaleSettings.useDeviceLocale,
    setLocaleRaw: FeatureTastingLocaleSettings.setLocaleRaw,
    providerBuilder: FeatureTastingTranslationProvider.new,
  ),
];

/// i18n パッケージのレジストリエントリ。
final class _I18nPackage {
  const _I18nPackage({
    required this.useDeviceLocale,
    required this.setLocaleRaw,
    required this.providerBuilder,
  });

  final Future<void> Function() useDeviceLocale;
  final Future<void> Function(String) setLocaleRaw;
  final Widget Function({required Widget child}) providerBuilder;
}

/// サポートされるロケール一覧 (core_ui を正規ソースとする)。
List<Locale> get appSupportedLocales => CoreUiAppLocaleUtils.supportedLocales;

/// TranslationProvider ツリーから現在のロケールを取得する。
Locale appCurrentLocaleOf(BuildContext context) {
  return CoreUiTranslationProvider.of(context).flutterLocale;
}

/// デバイスロケールで全パッケージを初期化する。
Future<void> initAppLocaleWithDeviceLocale() async {
  for (final pkg in _i18nPackages) {
    await pkg.useDeviceLocale();
  }
}

/// 全パッケージのロケールを設定する。
Future<void> setAppLocale(String languageCode) async {
  for (final pkg in _i18nPackages) {
    await pkg.setLocaleRaw(languageCode);
  }
}

/// 全 TranslationProvider をネストするウィジェット。
class AppTranslationProviders extends StatelessWidget {
  const AppTranslationProviders({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return _i18nPackages.fold<Widget>(
      child,
      (wrappedChild, pkg) => pkg.providerBuilder(child: wrappedChild),
    );
  }
}
