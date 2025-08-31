import 'package:medi_note_reader/domain/model/resource.dart';

import '../../data/model/order/order_request.dart';

abstract class OrderRepo {
  // we should create domain models
  Future<Resource<dynamic>> createOrder({required OrderRequest orderRequest});
}