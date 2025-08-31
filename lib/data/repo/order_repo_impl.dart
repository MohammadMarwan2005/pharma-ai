import 'package:medi_note_reader/data/model/order/order_request.dart';
import 'package:medi_note_reader/domain/model/resource.dart';
import 'package:medi_note_reader/domain/repo/order_repo.dart';

import '../api/api_service.dart';
import '../api/safe_api_caller.dart';

class OrderRepoImpl implements OrderRepo {
  final APIService _apiService;
  final SafeAPICaller _safeApiCaller;

  OrderRepoImpl(this._apiService, this._safeApiCaller);

  @override
  Future<Resource> createOrder({required OrderRequest orderRequest}) {
    return _safeApiCaller.call(
      apiCall: () {
        return _apiService.createOrder(orderRequest);
      },
      dataToDomain: (data) {
        return null;
      },
    );
  }
}
