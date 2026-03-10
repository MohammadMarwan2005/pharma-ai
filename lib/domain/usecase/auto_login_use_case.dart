import 'package:medi_note_reader/domain/model/auto_login_creds.dart';
import 'package:medi_note_reader/domain/model/resource.dart';
import 'package:medi_note_reader/domain/repo/auth_repo.dart';
import 'package:medi_note_reader/domain/repo/local_data_repo.dart';

class AutoLoginUseCase {
  final AuthRepo _authRepo;
  final LocalDataRepo _localDataRepo;

  AutoLoginUseCase(this._authRepo, this._localDataRepo);

  Future<Resource<void>> call() async {
    final response = await _authRepo.login(
      AutoLoginCreds.email,
      AutoLoginCreds.password,
    );
    return response.when(
      onSuccess: (successData) async {
        await _localDataRepo.setToken(successData.token);
        return Success(null);
      },
      onError: (error) {
        return Error(error);
      },
    );
  }
}
