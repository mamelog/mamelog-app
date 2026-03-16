import 'dart:io';

import 'package:core_network/src/extraction/extraction_id.dart';
import 'package:core_network/src/extraction/extraction_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'extraction_api.g.dart';

@RestApi()
abstract class ExtractionApi {
  factory ExtractionApi(Dio dio, {String baseUrl}) = _ExtractionApi;

  @POST('/extractions')
  @MultiPart()
  Future<ExtractionResponse> createExtraction({
    @Part(name: 'image') required File image,
  });

  @POST('/extractions')
  Future<ExtractionResponse> createExtractionFromUrl({
    @Body() required Map<String, dynamic> body,
  });

  @GET('/extractions/{id}')
  Future<ExtractionResponse> getExtraction(@Path('id') ExtractionId id);
}
