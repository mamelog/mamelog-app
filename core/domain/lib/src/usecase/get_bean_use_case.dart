import 'package:core_common/result.dart';
import 'package:core_domain/repository.dart';
import 'package:core_model/bean.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetBeanUseCase {
  GetBeanUseCase(this._repository);

  final BeanRepository _repository;

  Future<Result<Bean>> execute(BeanId id) => _repository.getById(id);
}
