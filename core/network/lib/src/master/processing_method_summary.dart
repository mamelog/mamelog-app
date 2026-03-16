import 'package:core_model/master.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'processing_method_summary.freezed.dart';
part 'processing_method_summary.g.dart';

@freezed
abstract class ProcessingMethodSummary with _$ProcessingMethodSummary {
  const factory ProcessingMethodSummary({
    required ProcessingMethodId id,
    required String name,
  }) = _ProcessingMethodSummary;

  factory ProcessingMethodSummary.fromJson(Map<String, dynamic> json) =>
      _$ProcessingMethodSummaryFromJson(json);
}
