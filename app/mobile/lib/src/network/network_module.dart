import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mamelog/src/flavor/flavor.dart';
import 'package:mamelog/src/network/auth_interceptor.dart';

@module
abstract class NetworkModule {
  @lazySingleton
  Dio dio(AppFlavor flavor, AuthInterceptor authInterceptor) {
    final dio = Dio();

    dio.options.baseUrl = switch (flavor) {
      AppFlavor.dev => 'https://api-dev.mamelog.app',
      AppFlavor.stg => 'https://api-stg.mamelog.app',
      AppFlavor.prod => 'https://api.mamelog.app',
    };

    dio.interceptors.add(authInterceptor);

    if (flavor != AppFlavor.prod) {
      dio.interceptors.add(
        LogInterceptor(requestBody: true, responseBody: true),
      );
    }

    return dio;
  }
}
