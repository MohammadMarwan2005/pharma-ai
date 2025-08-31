import 'package:dio/dio.dart';
import 'package:medi_note_reader/data/api/api_service.dart';
import 'package:medi_note_reader/data/api/safe_api_caller.dart';
import 'package:medi_note_reader/data/model/api_response.dart';
import 'package:medi_note_reader/data/model/search/search_request.dart';
import 'package:medi_note_reader/domain/model/medicine.dart';
import 'package:medi_note_reader/domain/model/prediction.dart';
import 'package:medi_note_reader/domain/model/resource.dart';
import 'package:medi_note_reader/domain/repo/medicine_repo.dart';

import '../model/medicine/data_medicine.dart';

class MedicineRepoImpl implements MedicineRepo {
  final APIService _apiService;
  final SafeAPICaller _safeApiCaller;

  MedicineRepoImpl(this._apiService, this._safeApiCaller);

  @override
  Future<Resource<Prediction>> predictMedicine(String imagePath) {
    // this is bad, Wallah I will refactor it again
    final requestFormData = FormData.fromMap({
      'image': MultipartFile.fromFileSync(
        imagePath,
        filename: imagePath.split('/').last,
      ),
    });
    return _safeApiCaller.call<Prediction, APIResponse<List<DataMedicine>>>(
      apiCall: () {
        return _apiService.getPredictionsForOneImage(requestFormData);
      },
      dataToDomain: (data) {
        final medicines = data.data.map((e) => e.toDomain()).toList();
        return Prediction(imagePath: imagePath, medicines: medicines);
      },
    );
  }

  @override
  Future<Resource<List<Medicine>>> searchMedicines(String searchTerm) {
    return _safeApiCaller.call<List<Medicine>, APIResponse<List<DataMedicine>>>(
      apiCall: () {
        return _apiService.searchMedicines(
          SearchRequest(searchTerm: searchTerm),
        );
      },
      dataToDomain: (data) {
        final medicines = data.data.map((e) => e.toDomain()).toList();
        return medicines;
      },
    );
  }
}
