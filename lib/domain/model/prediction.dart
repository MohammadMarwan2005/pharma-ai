import 'package:medi_note_reader/domain/model/medicine.dart';

class Prediction {
  final String imagePath;
  final List<Medicine> medicines;

  Prediction({required this.imagePath, required this.medicines});
}
