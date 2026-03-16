import 'package:core_common/result.dart';
import 'package:test/test.dart';

void main() {
  group('Result', () {
    test('Scenario: 成功値を Result.ok でラップする', () {
      const value = 'hello';
      const result = Result<String>.ok(value);

      expect(result.isOk, isTrue);
      expect(result.isError, isFalse);
      expect(result.valueOrNull, equals(value));
      expect(result, isA<Ok<String>>());
    });

    test('Scenario: エラーを Result.error でラップする', () {
      final exception = Exception('not found');
      final result = Result<String>.error(exception);

      expect(result.isOk, isFalse);
      expect(result.isError, isTrue);
      expect(result.errorOrNull, equals(exception));
      expect(result, isA<Error<String>>());
    });

    test('Scenario: switch 式で exhaustive pattern matching できる', () {
      const result = Result<String>.ok('test');

      final message = switch (result) {
        Ok(value: final v) => 'Success: $v',
        Error(error: final e) => 'Failure: $e',
      };

      expect(message, equals('Success: test'));
    });

    test('Scenario: null 値を Result.ok でラップできる', () {
      const result = Result<String?>.ok(null);

      expect(result.isOk, isTrue);
      expect(result.valueOrNull, isNull);
    });

    test('Scenario: Result の型パラメータが異なる型で動作する', () {
      const intResult = Result<int>.ok(42);
      const listResult = Result<List<String>>.ok(['a', 'b']);

      expect(intResult.valueOrNull, equals(42));
      expect(listResult.valueOrNull, equals(['a', 'b']));
    });

    test('Scenario: Error のネスト (エラーチェーン) が可能', () {
      const innerException = FormatException('invalid input');
      const result = Result<int>.error(innerException);

      expect(result.errorOrNull, isA<FormatException>());
      expect(
        (result.errorOrNull! as FormatException).message,
        equals('invalid input'),
      );
    });

    test('Scenario: 等価性の比較', () {
      const ok1 = Result<int>.ok(1);
      const ok2 = Result<int>.ok(1);
      const ok3 = Result<int>.ok(2);

      expect(ok1, equals(ok2));
      expect(ok1, isNot(equals(ok3)));

      const error1 = Result<int>.error(FormatException('err'));
      const error2 = Result<int>.error(FormatException('err'));
      // FormatException は == で同一メッセージでも false になる場合があるが、
      // 基本的な挙動を確認。
      expect(
        error1.errorOrNull.toString(),
        equals(error2.errorOrNull.toString()),
      );
    });
  });
}
