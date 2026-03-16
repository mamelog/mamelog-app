import 'package:core_common/result.dart';
import 'package:core_domain/repository.dart';
import 'package:core_model/drink_log.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetDrinkLogUseCase {
  GetDrinkLogUseCase(this._repository);

  final DrinkLogRepository _repository;

  Future<Result<DrinkLog>> execute(DrinkLogId id) => _repository.getById(id);
}
