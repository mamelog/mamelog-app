///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'translations.g.dart';

// Path: <root>
typedef TranslationsJa = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  );

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations

	/// ja: 'まめログ'
	String get appTitle => 'まめログ';

	/// ja: 'ライブラリ'
	String get navLibrary => 'ライブラリ';

	/// ja: '記録'
	String get navRecords => '記録';

	/// ja: 'アカウント'
	String get navAccount => 'アカウント';

	/// ja: '抽出完了'
	String get notificationExtractionTitle => '抽出完了';

	/// ja: 'コーヒー情報を抽出しました'
	String get notificationExtractionBody => 'コーヒー情報を抽出しました';

	/// ja: 'キャンセル'
	String get commonButtonCancel => 'キャンセル';

	/// ja: '保存'
	String get commonButtonSave => '保存';

	/// ja: 'OK'
	String get commonButtonOk => 'OK';

	/// ja: 'リトライ'
	String get commonButtonRetry => 'リトライ';

	/// ja: 'まめログへようこそ'
	String get homeWelcome => 'まめログへようこそ';
}
