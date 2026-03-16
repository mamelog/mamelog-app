// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extraction_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExtractionResponse _$ExtractionResponseFromJson(Map<String, dynamic> json) =>
    _ExtractionResponse(
      id: json['id'] as ExtractionId,
      status: $enumDecode(_$ExtractionStatusEnumMap, json['status']),
      inputType: $enumDecode(_$ExtractionInputTypeEnumMap, json['input_type']),
      createdAt: DateTime.parse(json['created_at'] as String),
      bean: json['bean'] == null
          ? null
          : BeanResponse.fromJson(json['bean'] as Map<String, dynamic>),
      confidenceScores: (json['confidence_scores'] as Map<String, dynamic>?)
          ?.map((k, e) => MapEntry(k, (e as num).toDouble())),
      errorMessage: json['error_message'] as String?,
    );

Map<String, dynamic> _$ExtractionResponseToJson(_ExtractionResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': _$ExtractionStatusEnumMap[instance.status]!,
      'input_type': _$ExtractionInputTypeEnumMap[instance.inputType]!,
      'created_at': instance.createdAt.toIso8601String(),
      'bean': instance.bean,
      'confidence_scores': instance.confidenceScores,
      'error_message': instance.errorMessage,
    };

const _$ExtractionStatusEnumMap = {
  ExtractionStatus.pending: 'PENDING',
  ExtractionStatus.processing: 'PROCESSING',
  ExtractionStatus.completed: 'COMPLETED',
  ExtractionStatus.failed: 'FAILED',
};

const _$ExtractionInputTypeEnumMap = {
  ExtractionInputType.photo: 'PHOTO',
  ExtractionInputType.qrCode: 'QR_CODE',
  ExtractionInputType.url: 'URL',
};
