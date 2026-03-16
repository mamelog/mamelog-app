import 'package:meta/meta.dart';

/// A Result type for handling success and failure.
@immutable
sealed class Result<T> {
  const Result();

  const factory Result.ok(T value) = Ok<T>;
  const factory Result.error(Exception error) = Error<T>;

  bool get isOk => this is Ok<T>;
  bool get isSuccess => isOk;
  bool get isError => this is Error<T>;

  T? get valueOrNull => switch (this) {
    Ok(value: final v) => v,
    _ => null,
  };

  Exception? get errorOrNull => switch (this) {
    Error(error: final e) => e,
    _ => null,
  };

  R when<R>({
    required R Function(T value) ok,
    required R Function(Exception error) error,
  }) => switch (this) {
    Ok(value: final v) => ok(v),
    Error(error: final e) => error(e),
  };

  Result<R> map<R>(R Function(T value) transform) => when(
    ok: (v) => Result.ok(transform(v)),
    error: Result.error,
  );

  Result<R> flatMap<R>(Result<R> Function(T value) transform) => when(
    ok: transform,
    error: Result.error,
  );
}

@immutable
final class Ok<T> extends Result<T> {
  const Ok(this.value);
  final T value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Ok<T> && runtimeType == other.runtimeType && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Ok(value: $value)';
}

@immutable
final class Error<T> extends Result<T> {
  const Error(this.error);
  final Exception error;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Error<T> && runtimeType == other.runtimeType && error == other.error;

  @override
  int get hashCode => error.hashCode;

  @override
  String toString() => 'Error(error: $error)';
}

/// Extension for async flatMap on [Result].
extension ResultFlatMapFutureX<T> on Result<T> {
  /// Transforms the success value with an async function that returns a
  /// [Result], flattening the nested Result.
  Future<Result<R>> flatMapFuture<R>(
    Future<Result<R>> Function(T value) transform,
  ) async {
    return when(
      ok: (v) => transform(v),
      error: (e) async => Result.error(e),
    );
  }
}
