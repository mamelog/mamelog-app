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

	/// ja: '記録'
	String get listAppBarTitle => '記録';

	/// ja: 'まだ記録がありません'
	String get listEmptyTitle => 'まだ記録がありません';

	/// ja: 'コーヒーの旅を記録しましょう！'
	String get listEmptySubtitle => 'コーヒーの旅を記録しましょう！';

	/// ja: 'ライブラリへ'
	String get listButtonGoToLibrary => 'ライブラリへ';

	/// ja: '新しいテイスティングノート'
	String get addAppBarTitle => '新しいテイスティングノート';

	/// ja: '評価'
	String get addSectionRating => '評価';

	/// ja: 'テイストプロファイル'
	String get addSectionTasteProfile => 'テイストプロファイル';

	/// ja: '酸味'
	String get addSliderAcidity => '酸味';

	/// ja: '香り'
	String get addSliderAroma => '香り';

	/// ja: '甘味'
	String get addSliderSweetness => '甘味';

	/// ja: '苦味'
	String get addSliderBitterness => '苦味';

	/// ja: 'ボディ'
	String get addSliderBody => 'ボディ';

	/// ja: 'メモ'
	String get addSectionMemo => 'メモ';

	/// ja: '体験を記録してください...'
	String get addMemoHint => '体験を記録してください...';

	/// ja: 'テイスティング詳細'
	String get detailAppBarTitle => 'テイスティング詳細';

	/// ja: '評価'
	String get detailSectionRating => '評価';

	/// ja: 'テイストプロファイル'
	String get detailSectionTasteProfile => 'テイストプロファイル';

	/// ja: 'メモ'
	String get detailSectionMemo => 'メモ';

	/// ja: 'メモなし。'
	String get detailNoMemo => 'メモなし。';

	/// ja: '日付'
	String get detailSectionDate => '日付';

	/// ja: 'テイスティングノートを編集'
	String get editAppBarTitle => 'テイスティングノートを編集';
}
