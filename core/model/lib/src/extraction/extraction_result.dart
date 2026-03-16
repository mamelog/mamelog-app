import 'package:core_model/bean.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'extraction_result.freezed.dart';

enum ExtractionStatus {
  pending,
  processing,
  completed,
  failed,
}

enum ExtractionInputType {
  photo,
  qrCode,
  url,
}

@freezed
abstract class ExtractionResult with _$ExtractionResult {
  const factory ExtractionResult({
    required String id,
    required ExtractionStatus status,
    required ExtractionInputType inputType,
    required DateTime createdAt,
    Bean? bean,
    @Default({}) Map<String, double> confidenceScores,
    String? errorMessage,
  }) = _ExtractionResult;
}
