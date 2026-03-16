import 'package:core_network/src/master/country_summary.dart';
import 'package:core_network/src/master/flavor_descriptor_summary.dart';
import 'package:core_network/src/master/processing_method_summary.dart';
import 'package:core_network/src/master/variety_summary.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'master_data_api.g.dart';

@RestApi()
abstract class MasterDataApi {
  factory MasterDataApi(Dio dio, {String baseUrl}) = _MasterDataApi;

  @GET('/master/countries')
  Future<List<CountrySummary>> getCountries();

  @GET('/master/varieties')
  Future<List<VarietySummary>> getVarieties();

  @GET('/master/processing-methods')
  Future<List<ProcessingMethodSummary>> getProcessingMethods();

  @GET('/master/flavor-descriptors')
  Future<List<FlavorDescriptorSummary>> getFlavorDescriptors();
}
