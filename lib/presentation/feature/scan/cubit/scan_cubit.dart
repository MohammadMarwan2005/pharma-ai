import 'package:cunning_document_scanner/cunning_document_scanner.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/model/domain_error.dart';
import 'scan_state.dart';

class ScanCubit extends Cubit<ScanState> {
  ScanCubit() : super(const ScanState.initial());

  /// Start the native scanner flow. The plugin will open native UI where
  /// the user can adjust crop edges and confirm. Returns file path(s).
  Future<void> startScanner() async {
    emit(const ScanState.loading());
    try {
      // This opens the plugin's UI and returns a list of file paths (cropped images).
      final List<String>? images = await CunningDocumentScanner.getPictures();

      if (images != null && images.isNotEmpty) {
        emit(ScanState.success(imagePath: images.first));
      } else {
        emit(ScanState.error(error: DomainError.noImageReturnedError));
      }
    } catch (e, st) {
      emit(ScanState.error(error: DomainError.getScannerError(e.toString())));
    }
  }
}
