import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_note_reader/common/helpers/logging_helper.dart';
import 'package:medi_note_reader/domain/model/domain_error.dart';
import 'package:medi_note_reader/domain/usecase/get_predictions_for_image.dart';

import '../../../../domain/model/prediction.dart';

part 'predictions_state.dart';

part 'predictions_cubit.freezed.dart';

class PredictionsCubit extends Cubit<PredictionsState> {
  // dependency
  final GetPredictionsForImagesUseCase _getPredictionsForImages;

  // args
  final List<String> imagesPaths;

  PredictionsCubit(this._getPredictionsForImages, this.imagesPaths)
    : super(const PredictionsState.loading()) {
    fetchPredictions();
  }

  Future<void> fetchPredictions() async {
    emit(const PredictionsState.loading());
    final predictionsResult = await _getPredictionsForImages.call(imagesPaths);

    predictionsResult.when(
      onSuccess: (successData) {
        debugLog("meds: ${successData.length}");
        emit(PredictionsState.success(successData));
      },
      onError: (error) {
        emit(PredictionsState.error(error));
      },
    );
  }
}
