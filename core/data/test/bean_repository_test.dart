import 'package:core_common/result.dart';
import 'package:core_data/src/repository/bean_repository_impl.dart';
import 'package:core_database/dao.dart';
import 'package:core_model/bean.dart';
import 'package:core_model/user.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockBeanDao extends Mock implements BeanDao {}

void main() {
  late BeanDao beanDao;
  late BeanRepositoryImpl repository;

  setUpAll(() {
    registerFallbackValue(const BeanId(''));
  });

  setUp(() {
    beanDao = MockBeanDao();
    repository = BeanRepositoryImpl(beanDao);
  });

  group('BeanRepositoryImpl', () {
    test('getById returns Ok when bean exists', () async {
      const beanId = BeanId('id');
      final bean = Bean(
        id: beanId,
        userId: const UserId('user_id'),
        name: 'Coffee',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );

      when(() => beanDao.getBeanById(beanId)).thenAnswer((_) async => bean);

      final result = await repository.getById(beanId);

      expect(result is Ok<Bean>, isTrue);
      expect((result as Ok<Bean>).value.name, 'Coffee');
    });

    test('getById returns Error when bean does not exist', () async {
      const beanId = BeanId('id');
      when(() => beanDao.getBeanById(beanId)).thenAnswer((_) async => null);

      final result = await repository.getById(beanId);

      expect(result is Error<Bean>, isTrue);
    });
  });
}
