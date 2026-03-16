import 'package:core_model/master.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flavor_descriptor_summary.freezed.dart';
part 'flavor_descriptor_summary.g.dart';

@freezed
abstract class FlavorDescriptorSummary with _$FlavorDescriptorSummary {
  const factory FlavorDescriptorSummary({
    required FlavorDescriptorId id,
    required String name,
    @JsonKey(name: 'name_ja') String? nameJa,
  }) = _FlavorDescriptorSummary;

  factory FlavorDescriptorSummary.fromJson(Map<String, dynamic> json) =>
      _$FlavorDescriptorSummaryFromJson(json);
}
