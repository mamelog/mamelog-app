import 'package:core_common/result.dart';
import 'package:core_domain/repository.dart';
import 'package:core_model/drink_log.dart';
import 'package:injectable/injectable.dart';

@injectable
class SaveDrinkLogUseCase {
  SaveDrinkLogUseCase(this._repository);

  final DrinkLogRepository _repository;

  Future<Result<DrinkLogId>> execute(DrinkLog log) {
    if (log.id.value.isEmpty) {
      return _repository.create(log);
    } else {
      return _repository.update(log).then((r) => r.map((_) => log.id));
    }
  }
}
