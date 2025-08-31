import 'package:json_annotation/json_annotation.dart';
import 'package:medi_note_reader/domain/model/medicine.dart';

part 'data_medicine.g.dart';

@JsonSerializable()
class DataMedicine {
  final String? id;
  final String? name;
  final int quantity;
  final int price;
  final String? companyId;
  final String? companyName;

  DataMedicine({
    this.id,
    this.name,
    required this.quantity,
    required this.price,
    this.companyId,
    this.companyName,
  });

  factory DataMedicine.fromJson(Map<String, dynamic> json) =>
      _$DataMedicineFromJson(json);

  Map<String, dynamic> toJson() => _$DataMedicineToJson(this);

  Medicine toDomain() => Medicine(
    id: id,
    name: name,
    quantity: quantity,
    price: price,
    companyId: companyId,
    companyName: companyName,
  );
}
