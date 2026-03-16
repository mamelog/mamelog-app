import 'package:core_network/src/master/country_summary.dart';
import 'package:core_network/src/master/processing_method_summary.dart';
import 'package:core_network/src/master/variety_summary.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bean_origin_response.freezed.dart';
part 'bean_origin_response.g.dart';

@freezed
abstract class BeanOriginResponse with _$BeanOriginResponse {
  const factory BeanOriginResponse({
    CountrySummary? country,
    String? region,
    String? farm,
    VarietySummary? variety,
    @JsonKey(name: 'processing_method') ProcessingMethodSummary? processingMethod,
    String? elevation,
  }) = _BeanOriginResponse;

  factory BeanOriginResponse.fromJson(Map<String, dynamic> json) =>
      _$BeanOriginResponseFromJson(json);
}
