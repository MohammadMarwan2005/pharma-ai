import 'package:dio/dio.dart';
import 'package:medi_note_reader/data/model/api_response.dart';
import 'package:medi_note_reader/data/model/medicine/data_medicine.dart';
import 'package:medi_note_reader/data/model/order/order_request.dart';
import 'package:medi_note_reader/data/model/search/search_request.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import 'api_constants.dart';

part 'api_service.g.dart';

// dart run build_runner watch -d
@RestApi(baseUrl: APIConstants.baseUrl)
abstract class APIService {
  factory APIService(Dio dio, {String baseUrl}) = _APIService;

  @POST(APIConstants.getPredictionsUrl)
  Future<APIResponse<List<DataMedicine>>> getPredictionsForOneImage(
    @Body() FormData formData,
  );

  @POST(APIConstants.searchMedicinesUrl)
  Future<APIResponse<List<DataMedicine>>> searchMedicines(
    @Body() SearchRequest request,
  );

  @POST(APIConstants.createOrderUrl)
  Future<APIResponse<dynamic>> createOrder(@Body() OrderRequest orderRequest);
}
