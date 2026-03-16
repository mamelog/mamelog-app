import 'package:core_network/src/bean/bean_response.dart';
import 'package:core_network/src/extraction/extraction_id.dart';
import 'package:core_network/src/extraction/extraction_input_type.dart';
import 'package:core_network/src/extraction/extraction_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'extraction_response.freezed.dart';
part 'extraction_response.g.dart';

@freezed
abstract class ExtractionResponse with _$ExtractionResponse {
  const factory ExtractionResponse({
    required ExtractionId id,
    required ExtractionStatus status,
    @JsonKey(name: 'input_type') required ExtractionInputType inputType,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    BeanResponse? bean,
    @JsonKey(name: 'confidence_scores') Map<String, double>? confidenceScores,
    @JsonKey(name: 'error_message') String? errorMessage,
  }) = _ExtractionResponse;

  factory ExtractionResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtractionResponseFromJson(json);
}
