import 'package:core_model/roaster.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'roaster_summary.freezed.dart';
part 'roaster_summary.g.dart';

@freezed
abstract class RoasterSummary with _$RoasterSummary {
  const factory RoasterSummary({
    required RoasterId id,
    required String name,
  }) = _RoasterSummary;

  factory RoasterSummary.fromJson(Map<String, dynamic> json) => _$RoasterSummaryFromJson(json);
}
