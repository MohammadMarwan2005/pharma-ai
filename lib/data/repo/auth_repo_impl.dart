import 'package:medi_note_reader/data/api/api_service.dart';
import 'package:medi_note_reader/data/api/safe_api_caller.dart';
import 'package:medi_note_reader/data/model/api_response.dart';
import 'package:medi_note_reader/data/model/auth/login_request.dart';
import 'package:medi_note_reader/domain/model/auth_credential.dart';
import 'package:medi_note_reader/domain/model/resource.dart';
import 'package:medi_note_reader/domain/repo/auth_repo.dart';

import '../mapper/auth_mapper.dart';
import '../model/auth/auth_data_response.dart';

class AuthRepoImpl implements AuthRepo {
  final APIService _apiService;
  final SafeAPICaller _safeApiCaller;

  AuthRepoImpl(this._apiService, this._safeApiCaller);

  @override
  Future<Resource<AuthCredential>> login(String email, String password) {
    return _safeApiCaller.call<AuthCredential, APIResponse<AuthDataResponse>>(
      apiCall: () {
        return _apiService.login(
          LoginRequest(email: email, password: password),
        );
      },
      dataToDomain: (data) => data.data.toDomain(),
    );
  }
}
