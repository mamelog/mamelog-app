import 'package:core_model/bean.dart';
import 'package:core_network/src/bean/bean_origin_response.dart';
import 'package:core_network/src/bean/roaster_summary.dart';
import 'package:core_network/src/master/flavor_descriptor_summary.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bean_response.freezed.dart';
part 'bean_response.g.dart';

@freezed
abstract class BeanResponse with _$BeanResponse {
  const factory BeanResponse({
    required BeanId id,
    required String name,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    RoasterSummary? roaster,
    @JsonKey(name: 'roast_level') RoastLevel? roastLevel,
    @JsonKey(name: 'bean_type') BeanType? beanType,
    @JsonKey(name: 'roast_date') String? roastDate,
    @JsonKey(name: 'purchase_date') String? purchaseDate,
    @JsonKey(name: 'purchase_price') int? purchasePrice,
    @JsonKey(name: 'weight_g') int? weightG,
    @JsonKey(name: 'is_decaf') @Default(false) bool isDecaf,
    String? description,
    @Default([]) List<BeanOriginResponse> origins,
    @JsonKey(name: 'flavor_notes') @Default([]) List<FlavorDescriptorSummary> flavorNotes,
  }) = _BeanResponse;

  factory BeanResponse.fromJson(Map<String, dynamic> json) => _$BeanResponseFromJson(json);
}
