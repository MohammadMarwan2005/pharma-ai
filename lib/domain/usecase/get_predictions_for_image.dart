import 'package:medi_note_reader/domain/model/prediction.dart';
import 'package:medi_note_reader/domain/model/resource.dart';
import 'package:medi_note_reader/domain/repo/medicine_repo.dart';

class GetPredictionsForImagesUseCase {
  final MedicineRepo _medicineRepo;

  GetPredictionsForImagesUseCase(this._medicineRepo);

  Future<Resource<List<Prediction>>> call(List<String> imagesPaths) async {
    final results = await Future.wait(
      imagesPaths.map((path) => _medicineRepo.predictMedicine(path)),
    );

    // Collect only successes
    final allPredictions =
        results
            .whereType<Success<Prediction>>() // not Success<List<Prediction>>
            .where((element) => element.data.medicines.isNotEmpty)
            .map((success) => success.data) // single item
            .toList();

    return Success(allPredictions); // List<Prediction>
  }
}
