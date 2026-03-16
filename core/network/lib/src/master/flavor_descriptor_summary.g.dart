// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flavor_descriptor_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FlavorDescriptorSummary _$FlavorDescriptorSummaryFromJson(
  Map<String, dynamic> json,
) => _FlavorDescriptorSummary(
  id: json['id'] as FlavorDescriptorId,
  name: json['name'] as String,
  nameJa: json['name_ja'] as String?,
);

Map<String, dynamic> _$FlavorDescriptorSummaryToJson(
  _FlavorDescriptorSummary instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'name_ja': instance.nameJa,
};
