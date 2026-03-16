import 'package:uuid/uuid.dart';

extension type const BrewRecipeId(String value) implements String {
  factory BrewRecipeId.generate() => BrewRecipeId(const Uuid().v7());
}
