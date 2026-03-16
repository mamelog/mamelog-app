import 'package:core_model/bean.dart';
import 'package:core_model/roaster.dart';
import 'package:core_model/user.dart';
import 'package:test/test.dart';

void main() {
  group('Bean', () {
    test('Scenario: Bean エンティティの copyWith で不変性を検証する', () {
      final original = Bean(
        id: const BeanId('id-123'),
        userId: const UserId('user-123'),
        name: 'Original Blend',
        createdAt: DateTime(2024),
        updatedAt: DateTime(2024),
      );

      final updated = original.copyWith(name: 'Updated Blend');

      expect(updated.name, 'Updated Blend');
      expect(updated.id, original.id);
    });

    test('Scenario: Bean エンティティの等価性', () {
      final date = DateTime(2024);
      final bean1 = Bean(
        id: const BeanId('same-id'),
        userId: const UserId('user-123'),
        name: 'Coffee',
        createdAt: date,
        updatedAt: date,
      );
      final bean2 = Bean(
        id: const BeanId('same-id'),
        userId: const UserId('user-123'),
        name: 'Coffee',
        createdAt: date,
        updatedAt: date,
      );

      expect(bean1, equals(bean2));
    });
  });

  group('Roaster', () {
    test('Scenario: Roaster エンティティの等価性と不変性', () {
      final date = DateTime(2024);
      final roaster1 = Roaster(
        id: const RoasterId('r1'),
        userId: const UserId('u1'),
        name: 'Roaster A',
        createdAt: date,
        updatedAt: date,
      );
      final roaster2 = Roaster(
        id: const RoasterId('r1'),
        userId: const UserId('u1'),
        name: 'Roaster A',
        createdAt: date,
        updatedAt: date,
      );
      expect(roaster1, roaster2);
    });
  });
}
