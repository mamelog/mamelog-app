import 'package:core_common/result.dart';
import 'package:test/test.dart';

void main() {
  group('Result', () {
    test('ok returns value and isSuccess is true', () {
      const result = Result.ok('success');
      expect(result.isSuccess, isTrue);
      expect(result.isError, isFalse);
      result.when(
        ok: (value) => expect(value, 'success'),
        error: (_) => fail('Should not be error'),
      );
    });

    test('error returns error and isError is true', () {
      final exception = Exception('error');
      final result = Result<String>.error(exception);
      expect(result.isSuccess, isFalse);
      expect(result.isError, isTrue);
      result.when(
        ok: (_) => fail('Should not be ok'),
        error: (e) => expect(e, exception),
      );
    });

    group('mapping', () {
      test('map transforms value', () {
        const result = Result.ok(1);
        result
            .map((v) => v.toString())
            .when(
              ok: (v) => expect(v, '1'),
              error: (_) => fail('Should not be error'),
            );
      });
    });
  });
}
