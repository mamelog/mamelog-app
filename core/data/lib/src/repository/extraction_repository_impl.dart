import 'dart:io';
import 'dart:typed_data';

import 'package:core_common/result.dart';
import 'package:core_data/src/mapper/extraction_mapper.dart';
import 'package:core_domain/repository.dart';
import 'package:core_model/extraction.dart';
import 'package:core_network/extraction.dart' as dto;
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

@LazySingleton(as: ExtractionRepository)
class ExtractionRepositoryImpl implements ExtractionRepository {
  ExtractionRepositoryImpl(this._api);

  final dto.ExtractionApi _api;

  @override
  Future<Result<ExtractionResult>> createExtraction({
    required Uint8List imageBytes,
    required String fileName,
  }) async {
    try {
      final tempDir = await getTemporaryDirectory();
      final file = File(p.join(tempDir.path, fileName));
      await file.writeAsBytes(imageBytes);

      try {
        final response = await _api.createExtraction(image: file);
        return Result.ok(response.toEntity());
      } finally {
        if (file.existsSync()) {
          await file.delete();
        }
      }
    } on Object catch (e) {
      return Result.error(e is Exception ? e : Exception('$e'));
    }
  }

  @override
  Future<Result<ExtractionResult>> createExtractionFromUrl({
    required String url,
    required String inputType,
  }) async {
    try {
      final response = await _api.createExtractionFromUrl(
        body: {
          'url': url,
          'input_type': inputType,
        },
      );
      return Result.ok(response.toEntity());
    } on Object catch (e) {
      return Result.error(e is Exception ? e : Exception('$e'));
    }
  }

  @override
  Future<Result<ExtractionResult>> getExtraction(String id) async {
    try {
      final response = await _api.getExtraction(dto.ExtractionId(id));
      return Result.ok(response.toEntity());
    } on Object catch (e) {
      return Result.error(e is Exception ? e : Exception('$e'));
    }
  }
}
