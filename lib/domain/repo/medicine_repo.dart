import 'package:medi_note_reader/domain/model/medicine.dart';
import 'package:medi_note_reader/domain/model/prediction.dart';
import 'package:medi_note_reader/domain/model/resource.dart';

abstract class MedicineRepo {
  Future<Resource<Prediction>> predictMedicine(String imagePath);
  Future<Resource<List<Medicine>>> searchMedicines(String searchTerm);
}
