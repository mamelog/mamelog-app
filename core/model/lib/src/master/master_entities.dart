import 'package:core_model/master.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'master_entities.freezed.dart';

@freezed
abstract class Country with _$Country {
  const factory Country({
    required CountryId id,
    required String name,
    required String nameEn,
    required String isoAlpha2,
    String? region,
    @Default(0) int sortOrder,
  }) = _Country;
}

@freezed
abstract class Variety with _$Variety {
  const factory Variety({
    required VarietyId id,
    required String name,
    String? nameJa,
    @Default('arabica') String species,
    String? description,
    @Default(0) int sortOrder,
  }) = _Variety;
}

@freezed
abstract class ProcessingMethod with _$ProcessingMethod {
  const factory ProcessingMethod({
    required ProcessingMethodId id,
    required String name,
    String? nameJa,
    @Default([]) List<String> aliases,
    String? description,
    @Default(0) int sortOrder,
  }) = _ProcessingMethod;
}

@freezed
abstract class FlavorDescriptor with _$FlavorDescriptor {
  const factory FlavorDescriptor({
    required FlavorDescriptorId id,
    required String name,
    required int tier,
    String? nameJa,
    FlavorDescriptorId? parentId,
    String? scaReference,
    @Default(0) int sortOrder,
  }) = _FlavorDescriptor;
}
