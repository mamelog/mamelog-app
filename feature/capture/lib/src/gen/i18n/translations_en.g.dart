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
	@override String get inputMethodAppBarTitle => 'Add Coffee';
	@override String get inputMethodPhotoTitle => 'Take a Photo';
	@override String get inputMethodPhotoSubtitle => 'Extract info from a coffee bean bag';
	@override String get inputMethodQrTitle => 'Scan QR Code';
	@override String get inputMethodQrSubtitle => 'Scan a product page URL';
	@override String get inputMethodUrlTitle => 'Enter URL';
	@override String get inputMethodUrlSubtitle => 'Paste a coffee product URL';
	@override String get inputMethodManualTitle => 'Enter Manually';
	@override String get inputMethodManualSubtitle => 'Input all details by hand';
	@override String get previewAppBarTitle => 'Preview';
	@override String get previewNoImage => 'No image captured';
	@override String get previewButtonRetake => 'Retake';
	@override String get previewButtonExtract => 'Extract Info';
	@override String get processingAppBarTitle => 'Extracting...';
	@override String get qrScannerAppBarTitle => 'Scan QR Code';
	@override String get urlInputAppBarTitle => 'Enter URL';
	@override String get urlInputLabel => 'Product URL';
	@override String get urlInputHint => 'https://example.com/coffee';
	@override String get urlInputErrorEmpty => 'Please enter a URL';
	@override String get urlInputErrorInvalid => 'Please enter a valid HTTP/HTTPS URL';
	@override String get urlInputButtonExtract => 'Extract Info';
	@override String get reviewAppBarTitle => 'Review Results';
	@override String get reviewButtonSave => 'Save';
	@override String get reviewFieldCoffeeName => 'Coffee Name';
	@override String get reviewFieldRoaster => 'Roaster';
	@override String get reviewSectionRoastLevel => 'Roast Level';
	@override String get reviewSectionOrigins => 'Origins';
	@override String get reviewOriginsEmpty => 'No origins detected';
	@override String get reviewUnknown => 'Unknown';
	@override String get reviewUnknownVariety => 'Unknown Variety';
	@override String get reviewUnknownProcess => 'Unknown Process';
	@override String get reviewNoData => 'No data extracted';
}
