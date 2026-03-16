import 'dart:typed_data';

import 'package:core_common/result.dart';
import 'package:core_domain/repository.dart';
import 'package:core_model/extraction.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateExtractionUseCase {
  CreateExtractionUseCase(this._repository);

  final ExtractionRepository _repository;

  Future<Result<ExtractionResult>> execute({
    Uint8List? imageBytes,
    String? fileName,
    String? url,
    String? inputType,
  }) async {
    if (imageBytes == null && url == null) {
      return Result.error(Exception('Either image or url must be provided'));
    }

    final createResult = imageBytes != null
        ? await _repository.createExtraction(
            imageBytes: imageBytes,
            fileName: fileName ?? 'image.jpg',
          )
        : await _repository.createExtractionFromUrl(
            url: url!,
            inputType: inputType ?? 'URL',
          );

    return createResult.flatMapFuture((extraction) async {
      return _pollExtraction(extraction.id);
    });
  }

  Future<Result<ExtractionResult>> _pollExtraction(String id) async {
    const maxAttempts = 30;
    const interval = Duration(seconds: 2);

    for (var i = 0; i < maxAttempts; i++) {
      await Future<void>.delayed(interval);
      final result = await _repository.getExtraction(id);

      if (result is Ok<ExtractionResult>) {
        final extraction = result.value;
        if (extraction.status == ExtractionStatus.completed) {
          return result;
        }
        if (extraction.status == ExtractionStatus.failed) {
          return Result.error(
            Exception(extraction.errorMessage ?? 'Extraction failed'),
          );
        }
      } else if (result is Error<ExtractionResult>) {
        return result;
      }
    }

    return Result.error(Exception('Extraction timed out after 60 seconds'));
  }
}
