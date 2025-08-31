part of 'predictions_cubit.dart';

@freezed
class PredictionsState with _$PredictionsState {
  const factory PredictionsState.loading() = _Loading;
  const factory PredictionsState.success(List<Prediction> predictions) = _Success;
  const factory PredictionsState.error(DomainError error) = _Error;
}
