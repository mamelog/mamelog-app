import 'package:core_model/master.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'variety_summary.freezed.dart';
part 'variety_summary.g.dart';

@freezed
abstract class VarietySummary with _$VarietySummary {
  const factory VarietySummary({
    required VarietyId id,
    required String name,
  }) = _VarietySummary;

  factory VarietySummary.fromJson(Map<String, dynamic> json) => _$VarietySummaryFromJson(json);
}
