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

	/// ja: 'マイライブラリ'
	String get listAppBarTitle => 'マイライブラリ';

	/// ja: 'ライブラリは空です'
	String get listEmptyTitle => 'ライブラリは空です';

	/// ja: '最初のコーヒー豆の袋をスキャンしましょう！'
	String get listEmptySubtitle => '最初のコーヒー豆の袋をスキャンしましょう！';

	/// ja: 'コーヒーを追加'
	String get listButtonAddCoffee => 'コーヒーを追加';

	/// ja: 'コーヒー詳細'
	String get detailAppBarTitle => 'コーヒー詳細';

	/// ja: '焙煎度'
	String get detailRoastLevel => '焙煎度';

	/// ja: '豆の種類'
	String get detailBeanType => '豆の種類';

	/// ja: '不明'
	String get detailUnknown => '不明';

	/// ja: 'テイスティングノートを追加'
	String get detailButtonAddTasting => 'テイスティングノートを追加';

	/// ja: '説明'
	String get detailSectionDescription => '説明';

	/// ja: '説明はありません。'
	String get detailNoDescription => '説明はありません。';
}
