import 'dart:typed_data';

import 'package:core_common/result.dart';
import 'package:core_model/extraction.dart';

abstract class ExtractionRepository {
  Future<Result<ExtractionResult>> createExtraction({
    required Uint8List imageBytes,
    required String fileName,
  });
  Future<Result<ExtractionResult>> createExtractionFromUrl({
    required String url,
    required String inputType,
  });
  Future<Result<ExtractionResult>> getExtraction(String id);
}
