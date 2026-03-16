import 'package:core_common/result.dart';
import 'package:core_domain/repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class EnqueueOfflineExtractionUseCase {
  EnqueueOfflineExtractionUseCase(this._repository);

  final PendingExtractionRepository _repository;

  Future<Result<void>> execute(String imagePath) async {
    try {
      await _repository.enqueue(imagePath);
      return const Result.ok(null);
    } on Object catch (e) {
      return Result.error(e is Exception ? e : Exception('$e'));
    }
  }
}
