import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_note_reader/domain/model/domain_error.dart';

part 'scan_state.freezed.dart';

@freezed
class ScanState with _$ScanState {
  const factory ScanState.initial() = _Initial;
  const factory ScanState.loading() = _Loading;
  const factory ScanState.success({required List<String> imagesPaths}) = _Success;
  const factory ScanState.error({required DomainError error}) = _Error;
}
