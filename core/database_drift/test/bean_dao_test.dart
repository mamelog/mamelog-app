import 'package:core_database_drift/database.dart';
import 'package:core_model/bean.dart';
import 'package:core_model/master.dart';
import 'package:core_model/user.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late DriftAppDatabase database;
  late BeanDaoImpl beanDao;

  setUp(() {
    database = DriftAppDatabase(NativeDatabase.memory());
    beanDao = BeanDaoImpl(database);
  });

  tearDown(() async {
    await database.close();
  });

  group('BeanDaoImpl', () {
    test('insertBeanFull saves all data correctly in a transaction', () async {
      final bean = Bean(
        id: const BeanId('id'),
        userId: const UserId('user_id'),
        name: 'Test Bean',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        origins: [
          const BeanOrigin(id: 'o1', region: 'Tokyo'),
        ],
        flavorNoteIds: [
          const FlavorDescriptorId('f1'),
        ],
      );

      await beanDao.insertBeanFull(bean);

      final saved = await beanDao.getBeanById(bean.id);
      expect(saved, isNotNull);
      expect(saved!.name, 'Test Bean');
      expect(saved.origins.length, 1);
      expect(saved.origins.first.region, 'Tokyo');
    });
  });
}
