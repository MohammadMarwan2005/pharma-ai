import 'package:json_annotation/json_annotation.dart';
import 'package:medi_note_reader/presentation/feature/order_summary/order_summary_item.dart';

part 'order_request.g.dart';

@JsonSerializable()
class OrderRequest {
  final List<OrderItem> items;

  OrderRequest({required this.items});

  factory OrderRequest.fromJson(Map<String, dynamic> json) =>
      _$OrderRequestFromJson(json);

  Map<String, dynamic> toJson() => _$OrderRequestToJson(this);

  // I will refactor this :)
  factory OrderRequest.fromPresentation(List<OrderSummaryItem> items) {
    return OrderRequest(items: items.map((e) =>
        OrderItem(
            e.prediction.medicines[e.selectedIndex].id.toString(), e.quantity),)
        .toList(

    ));
  }
}

@JsonSerializable()
class OrderItem {
  final String medicineId;
  final int quantity;

  OrderItem(this.medicineId, this.quantity);

  factory OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);

  Map<String, dynamic> toJson() => _$OrderItemToJson(this);
}
