import '../../domain/model/auth_credential.dart';
import '../model/auth/auth_data_response.dart';

extension AuthDataResponseMapper on AuthDataResponse {
  AuthCredential toDomain() => AuthCredential(
    userName: userName,
    darkMode: darkMode,
    token: token,
    expiresOn: DateTime.parse(expiresOn),
  );
}
