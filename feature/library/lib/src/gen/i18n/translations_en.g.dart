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
	@override String get listAppBarTitle => 'My Library';
	@override String get listEmptyTitle => 'Your library is empty';
	@override String get listEmptySubtitle => 'Scan your first coffee bean bag!';
	@override String get listButtonAddCoffee => 'Add Coffee';
	@override String get detailAppBarTitle => 'Coffee Detail';
	@override String get detailRoastLevel => 'Roast Level';
	@override String get detailBeanType => 'Bean Type';
	@override String get detailUnknown => 'Unknown';
	@override String get detailButtonAddTasting => 'Add Tasting Note';
	@override String get detailSectionDescription => 'Description';
	@override String get detailNoDescription => 'No description provided.';
}
