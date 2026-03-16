import 'package:core_model/bean.dart';
import 'package:core_model/extraction.dart' as entity;
import 'package:core_model/user.dart';
import 'package:core_network/bean.dart';
import 'package:core_network/extraction.dart' as dto;

extension ExtractionResponseMapper on dto.ExtractionResponse {
  entity.ExtractionResult toEntity() {
    return entity.ExtractionResult(
      id: id.value,
      status: _mapStatus(status),
      inputType: _mapInputType(inputType),
      bean: bean?.toEntity(),
      confidenceScores: confidenceScores ?? {},
      errorMessage: errorMessage,
      createdAt: createdAt,
    );
  }

  entity.ExtractionStatus _mapStatus(dto.ExtractionStatus s) => switch (s) {
    dto.ExtractionStatus.pending => entity.ExtractionStatus.pending,
    dto.ExtractionStatus.processing => entity.ExtractionStatus.processing,
    dto.ExtractionStatus.completed => entity.ExtractionStatus.completed,
    dto.ExtractionStatus.failed => entity.ExtractionStatus.failed,
  };

  entity.ExtractionInputType _mapInputType(dto.ExtractionInputType t) => switch (t) {
    dto.ExtractionInputType.photo => entity.ExtractionInputType.photo,
    dto.ExtractionInputType.qrCode => entity.ExtractionInputType.qrCode,
    dto.ExtractionInputType.url => entity.ExtractionInputType.url,
  };
}

/// Placeholder userId - must be replaced by the UseCase before persistence.
const _placeholderUserId = UserId('__PLACEHOLDER__');

extension BeanResponseMapper on BeanResponse {
  Bean toEntity() {
    return Bean(
      id: id,
      userId: _placeholderUserId, // Must be replaced by UseCase before persistence
      name: name,
      createdAt: createdAt,
      updatedAt: updatedAt,
      roasterId: roaster?.id,
      roastLevel: roastLevel,
      beanType: beanType,
      description: description,
      isDecaf: isDecaf,
      purchasePrice: purchasePrice,
      weightG: weightG,
      roastDate: roastDate,
      purchaseDate: purchaseDate,
      origins: origins
          .map(
            (o) => BeanOrigin(
              id: '${id.value}_${o.country?.id.value ?? "unknown"}',
              countryId: o.country?.id,
              region: o.region,
              farm: o.farm,
              varietyId: o.variety?.id,
              processingMethodId: o.processingMethod?.id,
              elevation: o.elevation,
            ),
          )
          .toList(),
      flavorNoteIds: flavorNotes.map((f) => f.id).toList(),
    );
  }
}
