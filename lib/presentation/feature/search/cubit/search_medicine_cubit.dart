import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_note_reader/common/helpers/logging_helper.dart';
import 'package:medi_note_reader/domain/model/domain_error.dart';
import 'package:medi_note_reader/domain/repo/medicine_repo.dart';
import '../../../../domain/model/medicine.dart';

part 'search_medicine_state.dart';
part 'search_medicine_cubit.freezed.dart';

class SearchMedicineCubit extends Cubit<SearchMedicineState> {
  final MedicineRepo _medicineRepo;

  SearchMedicineCubit(this._medicineRepo) : super(const SearchMedicineState.initial()) {
    searchController.addListener(_onTextChanged);
  }

  final TextEditingController searchController = TextEditingController();
  Timer? _debounce;
  String _lastQuery = '';

  void _onTextChanged() {
    final query = searchController.text.trim();

    // Cancel any previous debounce
    _debounce?.cancel();

    // Do nothing for empty queries
    if (query.isEmpty) {
      _lastQuery = '';
      emit(const SearchMedicineState.initial());
      return;
    }

    // Debounce the search
    _debounce = Timer(const Duration(milliseconds: 400), () {
      if (query != _lastQuery) {
        _lastQuery = query;
        search(query: query);
      }
    });
  }

  Future<void> search({String? query}) async {
    query ??= searchController.text.trim();
    if (query.isEmpty) return;
    if(query.length <3) {
      debugLog("Caught you: query.length < 3");
      return;
    }


    emit(const SearchMedicineState.loading());
    debugLog("Searching medicines: $query");

    try {
      final result = await _medicineRepo.searchMedicines(query);

      // Ensure this is still the latest query
      if (searchController.text.trim() != query) return;

      result.when(
        onSuccess: (data) => emit(SearchMedicineState.success(data)),
        onError: (error) => emit(SearchMedicineState.error(error)),
      );
    } catch (e) {
      emit(SearchMedicineState.error(DomainError(message: e.toString())));
    }
  }

  @override
  Future<void> close() {
    _debounce?.cancel();
    searchController.dispose();
    return super.close();
  }
}
