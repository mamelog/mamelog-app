// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bean_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BeanResponse _$BeanResponseFromJson(Map<String, dynamic> json) =>
    _BeanResponse(
      id: json['id'] as BeanId,
      name: json['name'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      roaster: json['roaster'] == null
          ? null
          : RoasterSummary.fromJson(json['roaster'] as Map<String, dynamic>),
      roastLevel: $enumDecodeNullable(_$RoastLevelEnumMap, json['roast_level']),
      beanType: $enumDecodeNullable(_$BeanTypeEnumMap, json['bean_type']),
      roastDate: json['roast_date'] as String?,
      purchaseDate: json['purchase_date'] as String?,
      purchasePrice: (json['purchase_price'] as num?)?.toInt(),
      weightG: (json['weight_g'] as num?)?.toInt(),
      isDecaf: json['is_decaf'] as bool? ?? false,
      description: json['description'] as String?,
      origins:
          (json['origins'] as List<dynamic>?)
              ?.map(
                (e) => BeanOriginResponse.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      flavorNotes:
          (json['flavor_notes'] as List<dynamic>?)
              ?.map(
                (e) =>
                    FlavorDescriptorSummary.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
    );

Map<String, dynamic> _$BeanResponseToJson(_BeanResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'roaster': instance.roaster,
      'roast_level': _$RoastLevelEnumMap[instance.roastLevel],
      'bean_type': _$BeanTypeEnumMap[instance.beanType],
      'roast_date': instance.roastDate,
      'purchase_date': instance.purchaseDate,
      'purchase_price': instance.purchasePrice,
      'weight_g': instance.weightG,
      'is_decaf': instance.isDecaf,
      'description': instance.description,
      'origins': instance.origins,
      'flavor_notes': instance.flavorNotes,
    };

const _$RoastLevelEnumMap = {
  RoastLevel.light: 'light',
  RoastLevel.mediumLight: 'mediumLight',
  RoastLevel.medium: 'medium',
  RoastLevel.mediumDark: 'mediumDark',
  RoastLevel.dark: 'dark',
};

const _$BeanTypeEnumMap = {
  BeanType.singleOrigin: 'singleOrigin',
  BeanType.blend: 'blend',
};
