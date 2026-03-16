import 'package:core_model/master.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_summary.freezed.dart';
part 'country_summary.g.dart';

@freezed
abstract class CountrySummary with _$CountrySummary {
  const factory CountrySummary({
    required CountryId id,
    required String name,
    @JsonKey(name: 'iso_alpha2') required String isoAlpha2,
  }) = _CountrySummary;

  factory CountrySummary.fromJson(Map<String, dynamic> json) => _$CountrySummaryFromJson(json);
}
