///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'translations.g.dart';

// Path: <root>
class TranslationsEn extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsEn _root = this; // ignore: unused_field

	@override 
	TranslationsEn $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEn(meta: meta ?? this.$meta);

	// Translations
	@override String get onboardingTitle => 'Mamelog';
	@override String get onboardingSubtitle => 'Your Coffee, Your Library';
	@override String get onboardingButtonGoogle => 'Sign in with Google';
	@override String get onboardingButtonApple => 'Sign in with Apple';
	@override String get accountAppBarTitle => 'Account';
	@override String get accountNotSignedIn => 'Not signed in';
	@override String get accountNoName => 'No name';
	@override String get accountNoEmail => 'No email';
	@override String get accountButtonLogout => 'Logout';
	@override String get accountDialogLogoutTitle => 'Logout';
	@override String get accountDialogLogoutMessage => 'Are you sure you want to logout?';
	@override String get accountButtonDeleteAccount => 'Delete Account';
	@override String get accountDialogDeleteTitle => 'Delete Account';
	@override String get accountDialogDeleteMessage => 'Are you sure? This action cannot be undone.';
	@override String get accountDialogDeleteConfirm => 'Delete';
	@override String get accountDialogFinalTitle => 'Final Confirmation';
	@override String get accountDialogFinalMessage => 'All data will be completely deleted.';
	@override String get accountDialogFinalConfirm => 'Delete Completely';
	@override String get accountDialogReauthTitle => 'Re-authentication Required';
	@override String get accountDialogReauthMessage => 'To delete your account, please sign in again.';
}
