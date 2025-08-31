import 'package:json_annotation/json_annotation.dart';

import '../../domain/model/domain_error.dart';

part 'api_error.g.dart';

@JsonSerializable()
class APIError {
  final String message;

  APIError(this.message);

  factory APIError.fromJson(Map<String, dynamic> json) =>
      _$APIErrorFromJson(json);

  Map<String, dynamic> toJson() => _$APIErrorToJson(this);
}

extension X on APIError {
  DomainError toDomainError() {
    return DomainError(message: message, messageId: message);
  }
}
