import 'package:medi_note_reader/domain/model/prediction.dart';

class OrderSummaryItem {
  final int id;
  final Prediction prediction;
  int quantity;
  int selectedIndex; // 👈 track selected medicine

  static int _counter = 0;

  OrderSummaryItem({
    required this.prediction,
    this.quantity = 1,
    this.selectedIndex = 0,
  }) : id = _counter++;
}
