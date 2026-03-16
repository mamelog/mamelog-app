// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bean_origin_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BeanOriginResponse _$BeanOriginResponseFromJson(Map<String, dynamic> json) =>
    _BeanOriginResponse(
      country: json['country'] == null
          ? null
          : CountrySummary.fromJson(json['country'] as Map<String, dynamic>),
      region: json['region'] as String?,
      farm: json['farm'] as String?,
      variety: json['variety'] == null
          ? null
          : VarietySummary.fromJson(json['variety'] as Map<String, dynamic>),
      processingMethod: json['processing_method'] == null
          ? null
          : ProcessingMethodSummary.fromJson(
              json['processing_method'] as Map<String, dynamic>,
            ),
      elevation: json['elevation'] as String?,
    );

Map<String, dynamic> _$BeanOriginResponseToJson(_BeanOriginResponse instance) =>
    <String, dynamic>{
      'country': instance.country,
      'region': instance.region,
      'farm': instance.farm,
      'variety': instance.variety,
      'processing_method': instance.processingMethod,
      'elevation': instance.elevation,
    };
