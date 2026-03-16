import 'package:core_network/src/bean/bean_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'bean_api.g.dart';

@RestApi()
abstract class BeanApi {
  factory BeanApi(Dio dio, {String baseUrl}) = _BeanApi;

  @GET('/beans')
  Future<List<BeanResponse>> getBeans();

  @POST('/beans')
  Future<BeanResponse> createBean(@Body() Map<String, dynamic> body);
}
