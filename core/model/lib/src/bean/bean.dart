import 'package:core_model/master.dart';
import 'package:core_model/src/bean/bean_id.dart';
import 'package:core_model/src/bean/bean_origin.dart';
import 'package:core_model/src/bean/bean_type.dart';
import 'package:core_model/src/bean/roast_level.dart';
import 'package:core_model/src/roaster/roaster_id.dart';
import 'package:core_model/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bean.freezed.dart';

@freezed
abstract class Bean with _$Bean {
  const factory Bean({
    required BeanId id,
    required UserId userId,
    required String name,
    required DateTime createdAt,
    required DateTime updatedAt,
    RoasterId? roasterId,
    RoastLevel? roastLevel,
    BeanType? beanType,
    @Default([]) List<BeanOrigin> origins,
    @Default([]) List<FlavorDescriptorId> flavorNoteIds,
    String? roastDate,
    String? purchaseDate,
    int? purchasePrice,
    int? weightG,
    @Default(false) bool isDecaf,
    String? description,
  }) = _Bean;
}
