import 'package:core_domain/repository.dart';
import 'package:core_model/bean.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetBeansUseCase {
  GetBeansUseCase(this._repository);

  final BeanRepository _repository;

  Stream<List<Bean>> execute() => _repository.watchAll();
}
