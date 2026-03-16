import 'package:core_authenticator/authenticator.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';

@injectable
class AuthInterceptor extends Interceptor {
  AuthInterceptor(this._authenticator);

  final Authenticator _authenticator;
  static final _log = Logger('AuthInterceptor');

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final result = await _authenticator.getIdToken();

    result.when(
      ok: (token) {
        options.headers['Authorization'] = 'Bearer $token';
        handler.next(options);
      },
      error: (e) {
        _log.warning('Failed to get ID token: $e');
        handler.next(options);
      },
    );
  }
}
