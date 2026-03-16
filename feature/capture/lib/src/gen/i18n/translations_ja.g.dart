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

	/// ja: 'コーヒーを追加'
	String get inputMethodAppBarTitle => 'コーヒーを追加';

	/// ja: '写真を撮る'
	String get inputMethodPhotoTitle => '写真を撮る';

	/// ja: 'コーヒー豆の袋から情報を抽出'
	String get inputMethodPhotoSubtitle => 'コーヒー豆の袋から情報を抽出';

	/// ja: 'QRコードをスキャン'
	String get inputMethodQrTitle => 'QRコードをスキャン';

	/// ja: '商品ページのURLをスキャン'
	String get inputMethodQrSubtitle => '商品ページのURLをスキャン';

	/// ja: 'URLを入力'
	String get inputMethodUrlTitle => 'URLを入力';

	/// ja: 'コーヒー商品のURLを貼り付け'
	String get inputMethodUrlSubtitle => 'コーヒー商品のURLを貼り付け';

	/// ja: '手動で入力'
	String get inputMethodManualTitle => '手動で入力';

	/// ja: 'すべての情報を手入力'
	String get inputMethodManualSubtitle => 'すべての情報を手入力';

	/// ja: 'プレビュー'
	String get previewAppBarTitle => 'プレビュー';

	/// ja: '画像がキャプチャされていません'
	String get previewNoImage => '画像がキャプチャされていません';

	/// ja: '撮り直す'
	String get previewButtonRetake => '撮り直す';

	/// ja: '情報を抽出'
	String get previewButtonExtract => '情報を抽出';

	/// ja: '抽出中...'
	String get processingAppBarTitle => '抽出中...';

	/// ja: 'QRコードをスキャン'
	String get qrScannerAppBarTitle => 'QRコードをスキャン';

	/// ja: 'URLを入力'
	String get urlInputAppBarTitle => 'URLを入力';

	/// ja: '商品URL'
	String get urlInputLabel => '商品URL';

	/// ja: 'https://example.com/coffee'
	String get urlInputHint => 'https://example.com/coffee';

	/// ja: 'URLを入力してください'
	String get urlInputErrorEmpty => 'URLを入力してください';

	/// ja: '有効なHTTP/HTTPSのURLを入力してください'
	String get urlInputErrorInvalid => '有効なHTTP/HTTPSのURLを入力してください';

	/// ja: '情報を抽出'
	String get urlInputButtonExtract => '情報を抽出';

	/// ja: '結果を確認'
	String get reviewAppBarTitle => '結果を確認';

	/// ja: '保存'
	String get reviewButtonSave => '保存';

	/// ja: 'コーヒー名'
	String get reviewFieldCoffeeName => 'コーヒー名';

	/// ja: 'ロースター'
	String get reviewFieldRoaster => 'ロースター';

	/// ja: '焙煎度'
	String get reviewSectionRoastLevel => '焙煎度';

	/// ja: '産地'
	String get reviewSectionOrigins => '産地';

	/// ja: '産地が検出されませんでした'
	String get reviewOriginsEmpty => '産地が検出されませんでした';

	/// ja: '不明'
	String get reviewUnknown => '不明';

	/// ja: '不明な品種'
	String get reviewUnknownVariety => '不明な品種';

	/// ja: '不明な精製方法'
	String get reviewUnknownProcess => '不明な精製方法';

	/// ja: 'データが抽出されませんでした'
	String get reviewNoData => 'データが抽出されませんでした';
}
