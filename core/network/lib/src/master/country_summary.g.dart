// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CountrySummary _$CountrySummaryFromJson(Map<String, dynamic> json) =>
    _CountrySummary(
      id: json['id'] as CountryId,
      name: json['name'] as String,
      isoAlpha2: json['iso_alpha2'] as String,
    );

Map<String, dynamic> _$CountrySummaryToJson(_CountrySummary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'iso_alpha2': instance.isoAlpha2,
    };
