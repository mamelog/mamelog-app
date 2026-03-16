import 'package:core_model/bean.dart';
import 'package:core_model/brew_recipe.dart';
import 'package:core_model/src/drink_log/drink_log_id.dart';
import 'package:core_model/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'drink_log.freezed.dart';

@freezed
abstract class DrinkLog with _$DrinkLog {
  const factory DrinkLog({
    required DrinkLogId id,
    required UserId userId,
    required BeanId beanId,
    required DateTime drunkAt,
    required DateTime createdAt,
    required DateTime updatedAt,
    BrewRecipeId? brewRecipeId,
    int? rating, // 1-5
    String? memo,
    int? acidity, // 0-100
    int? aroma, // 0-100
    int? sweetness, // 0-100
    int? bitterness, // 0-100
    int? body, // 0-100
  }) = _DrinkLog;
}
