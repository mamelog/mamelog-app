import 'package:core_model/bean.dart';
import 'package:core_model/src/brew_recipe/brew_recipe_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'brew_recipe.freezed.dart';

@freezed
abstract class BrewRecipe with _$BrewRecipe {
  const factory BrewRecipe({
    required BrewRecipeId id,
    required BeanId beanId,
    required String brewMethod,
    required DateTime createdAt,
    required DateTime updatedAt,
    String? grindSetting,
    double? waterTemperature,
    double? coffeeWeight,
    double? waterWeight,
    Duration? totalTime,
    String? notes,
  }) = _BrewRecipe;
}
