part of 'search_medicine_cubit.dart';

@freezed
class SearchMedicineState with _$SearchMedicineState {
  const factory SearchMedicineState.initial() = _Initial;

  const factory SearchMedicineState.loading() = _Loading;

  const factory SearchMedicineState.success(List<Medicine> medicines) =
      _Success;

  const factory SearchMedicineState.error(DomainError error) = _Error;
}
