import 'package:core_model/brew_recipe.dart';

/// DAO interface for BrewRecipe table.
abstract class BrewRecipeDao {
  Stream<List<BrewRecipe>> watchAllBrewRecipes();
  Future<BrewRecipe?> getBrewRecipeById(BrewRecipeId id);
  Future<void> insertBrewRecipe(BrewRecipe recipe);
  Future<void> updateBrewRecipe(BrewRecipe recipe);
  Future<void> deleteBrewRecipeById(BrewRecipeId id);
}
