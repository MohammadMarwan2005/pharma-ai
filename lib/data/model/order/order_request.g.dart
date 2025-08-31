// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderRequest _$OrderRequestFromJson(Map<String, dynamic> json) => OrderRequest(
  items:
      (json['items'] as List<dynamic>)
          .map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$OrderRequestToJson(OrderRequest instance) =>
    <String, dynamic>{'items': instance.items};

OrderItem _$OrderItemFromJson(Map<String, dynamic> json) =>
    OrderItem(json['medicineId'] as String, (json['quantity'] as num).toInt());

Map<String, dynamic> _$OrderItemToJson(OrderItem instance) => <String, dynamic>{
  'medicineId': instance.medicineId,
  'quantity': instance.quantity,
};
