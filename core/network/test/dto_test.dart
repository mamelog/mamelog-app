import 'package:core_network/bean.dart';
import 'package:core_network/extraction.dart';
import 'package:test/test.dart';

void main() {
  group('DTO Deserialization', () {
    test('BeanResponse.fromJson works correctly', () {
      final json = {
        'id': 'bean_1',
        'name': 'Special Blend',
        'created_at': '2026-03-05T10:00:00Z',
        'updated_at': '2026-03-05T10:00:00Z',
      };

      final response = BeanResponse.fromJson(json);
      expect(response.id.value, 'bean_1');
      expect(response.name, 'Special Blend');
    });

    test('ExtractionResponse.fromJson works correctly', () {
      final json = {
        'id': 'ext_1',
        'status': 'COMPLETED',
        'input_type': 'PHOTO',
        'created_at': '2026-03-05T10:00:00Z',
      };

      final response = ExtractionResponse.fromJson(json);
      expect(response.id.value, 'ext_1');
      expect(response.status, ExtractionStatus.completed);
    });
  });
}
