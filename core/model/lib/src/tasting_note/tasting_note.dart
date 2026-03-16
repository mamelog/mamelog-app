import 'package:core_model/bean.dart';
import 'package:core_model/brew_recipe.dart';
import 'package:core_model/src/tasting_note/tasting_note_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tasting_note.freezed.dart';

@freezed
abstract class TastingNote with _$TastingNote {
  const factory TastingNote({
    required TastingNoteId id,
    required BeanId beanId,
    required double totalScore,
    required DateTime createdAt,
    required DateTime updatedAt,
    BrewRecipeId? brewRecipeId,
    RoastLevel? roastLevel,
    double? fragranceAroma,
    double? flavor,
    double? aftertaste,
    double? acidity,
    double? body,
    double? balance,
    double? uniformity,
    double? cleanCup,
    double? sweetness,
    double? overall,
    @Default(0) double defects,
    String? notes,
  }) = _TastingNote;
}
