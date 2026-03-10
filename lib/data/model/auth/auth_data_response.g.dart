// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthDataResponse _$AuthDataResponseFromJson(Map<String, dynamic> json) =>
    AuthDataResponse(
      userName: json['userName'] as String,
      darkMode: json['darkMode'] as bool,
      token: json['token'] as String,
      expiresOn: json['expiresOn'] as String,
    );

Map<String, dynamic> _$AuthDataResponseToJson(AuthDataResponse instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'darkMode': instance.darkMode,
      'token': instance.token,
      'expiresOn': instance.expiresOn,
    };
