// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_medicine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataMedicine _$DataMedicineFromJson(Map<String, dynamic> json) => DataMedicine(
  id: json['id'] as String?,
  name: json['name'] as String?,
  quantity: (json['quantity'] as num).toInt(),
  price: (json['price'] as num).toInt(),
  companyId: json['companyId'] as String?,
  companyName: json['companyName'] as String?,
);

Map<String, dynamic> _$DataMedicineToJson(DataMedicine instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'quantity': instance.quantity,
      'price': instance.price,
      'companyId': instance.companyId,
      'companyName': instance.companyName,
    };
