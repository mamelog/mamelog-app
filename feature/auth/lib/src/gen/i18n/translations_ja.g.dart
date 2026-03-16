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
	String get onboardingTitle => 'まめログ';

	/// ja: 'あなたのコーヒー、あなたのライブラリ'
	String get onboardingSubtitle => 'あなたのコーヒー、あなたのライブラリ';

	/// ja: 'Googleでサインイン'
	String get onboardingButtonGoogle => 'Googleでサインイン';

	/// ja: 'Appleでサインイン'
	String get onboardingButtonApple => 'Appleでサインイン';

	/// ja: 'アカウント'
	String get accountAppBarTitle => 'アカウント';

	/// ja: 'サインインしていません'
	String get accountNotSignedIn => 'サインインしていません';

	/// ja: '名前なし'
	String get accountNoName => '名前なし';

	/// ja: 'メールなし'
	String get accountNoEmail => 'メールなし';

	/// ja: 'ログアウト'
	String get accountButtonLogout => 'ログアウト';

	/// ja: 'ログアウト'
	String get accountDialogLogoutTitle => 'ログアウト';

	/// ja: '本当にログアウトしますか？'
	String get accountDialogLogoutMessage => '本当にログアウトしますか？';

	/// ja: 'アカウントを削除'
	String get accountButtonDeleteAccount => 'アカウントを削除';

	/// ja: 'アカウント削除'
	String get accountDialogDeleteTitle => 'アカウント削除';

	/// ja: '本当に削除しますか？この操作は取り消せません。'
	String get accountDialogDeleteMessage => '本当に削除しますか？この操作は取り消せません。';

	/// ja: '削除する'
	String get accountDialogDeleteConfirm => '削除する';

	/// ja: '最終確認'
	String get accountDialogFinalTitle => '最終確認';

	/// ja: '全てのデータが完全に削除されます。'
	String get accountDialogFinalMessage => '全てのデータが完全に削除されます。';

	/// ja: '完全に削除する'
	String get accountDialogFinalConfirm => '完全に削除する';

	/// ja: '再認証が必要です'
	String get accountDialogReauthTitle => '再認証が必要です';

	/// ja: 'アカウントを削除するには、再度ログインしてください。'
	String get accountDialogReauthMessage => 'アカウントを削除するには、再度ログインしてください。';
}
