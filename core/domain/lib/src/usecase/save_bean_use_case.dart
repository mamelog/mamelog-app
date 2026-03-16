import 'package:core_authenticator/authenticator.dart';
import 'package:core_common/result.dart';
import 'package:core_domain/repository.dart';
import 'package:core_model/bean.dart';
import 'package:injectable/injectable.dart';

@injectable
class SaveBeanUseCase {
  SaveBeanUseCase(this._repository, this._authenticator);

  final BeanRepository _repository;
  final Authenticator _authenticator;

  Future<Result<BeanId>> execute(Bean bean) async {
    final user = _authenticator.currentUser;
    if (user == null) {
      return Result.error(Exception('User not authenticated'));
    }

    final beanWithUserId = bean.copyWith(userId: user.id);
    return _repository.create(beanWithUserId);
  }
}
