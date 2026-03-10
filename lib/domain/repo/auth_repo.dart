import 'package:medi_note_reader/domain/model/auth_credential.dart';
import 'package:medi_note_reader/domain/model/resource.dart';

abstract class AuthRepo {
  Future<Resource<AuthCredential>> login(String email, String password);
}
