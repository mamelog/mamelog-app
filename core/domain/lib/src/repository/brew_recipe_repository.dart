import 'package:core_common/result.dart';
import 'package:core_model/brew_recipe.dart';

/// Repository interface for managing coffee brew recipes.
abstract class BrewRecipeRepository {
  Stream<List<BrewRecipe>> watchAll();
  Future<Result<BrewRecipe>> getById(BrewRecipeId id);
  Future<Result<BrewRecipeId>> create(BrewRecipe recipe);
  Future<Result<void>> update(BrewRecipe recipe);
  Future<Result<void>> delete(BrewRecipeId id);
}
