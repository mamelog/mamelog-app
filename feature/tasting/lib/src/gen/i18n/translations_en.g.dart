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
	@override String get listAppBarTitle => 'Drink Logs';
	@override String get listEmptyTitle => 'No records yet';
	@override String get listEmptySubtitle => 'Track your coffee journey!';
	@override String get listButtonGoToLibrary => 'Go to Library';
	@override String get addAppBarTitle => 'New Tasting Note';
	@override String get addSectionRating => 'Rating';
	@override String get addSectionTasteProfile => 'Taste Profile';
	@override String get addSliderAcidity => 'Acidity';
	@override String get addSliderAroma => 'Aroma';
	@override String get addSliderSweetness => 'Sweetness';
	@override String get addSliderBitterness => 'Bitterness';
	@override String get addSliderBody => 'Body';
	@override String get addSectionMemo => 'Memo';
	@override String get addMemoHint => 'Describe your experience...';
	@override String get detailAppBarTitle => 'Tasting Detail';
	@override String get detailSectionRating => 'Rating';
	@override String get detailSectionTasteProfile => 'Taste Profile';
	@override String get detailSectionMemo => 'Memo';
	@override String get detailNoMemo => 'No memo.';
	@override String get detailSectionDate => 'Date';
	@override String get editAppBarTitle => 'Edit Tasting Note';
}
