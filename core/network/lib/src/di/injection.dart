import 'package:core_network/bean.dart';
import 'package:core_network/extraction.dart';
import 'package:core_network/master.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@InjectableInit.microPackage()
void initMicroPackage() {}

@module
abstract class NetworkModule {
  @lazySingleton
  BeanApi beanApi(Dio dio) => BeanApi(dio);

  @lazySingleton
  ExtractionApi extractionApi(Dio dio) => ExtractionApi(dio);

  @lazySingleton
  MasterDataApi masterDataApi(Dio dio) => MasterDataApi(dio);
}
