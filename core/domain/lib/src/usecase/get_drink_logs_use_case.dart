import 'package:core_domain/repository.dart';
import 'package:core_model/drink_log.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetDrinkLogsUseCase {
  GetDrinkLogsUseCase(this._repository);

  final DrinkLogRepository _repository;

  Stream<List<DrinkLog>> execute() => _repository.watchAll();
}
