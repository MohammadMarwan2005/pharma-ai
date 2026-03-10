import 'package:json_annotation/json_annotation.dart';

part 'auth_data_response.g.dart';

@JsonSerializable()
class AuthDataResponse {
  final String userName;
  final bool darkMode;
  final String token;
  final String expiresOn;

  AuthDataResponse({
    required this.userName,
    required this.darkMode,
    required this.token,
    required this.expiresOn,
  });

  factory AuthDataResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AuthDataResponseToJson(this);
}
