import 'package:json_annotation/json_annotation.dart';

import '../../domain/model/domain_error.dart';

part 'api_error.g.dart';

@JsonSerializable()
class APIError {
  final String message; // "the store {store_name} not found"
  final int status;
  final Map<String, List<dynamic>>? data;
  final Map<String, String>? params; // { "store_name": "adidas" }

  APIError(this.message, this.status, this.data, this.params);

  factory APIError.fromJson(Map<String, dynamic> json) =>
      _$APIErrorFromJson(json);

  Map<String, dynamic> toJson() => _$APIErrorToJson(this);
}

extension X on APIError {
  DomainError toDomainError() {
    final List<String> details =
        (data?.values ?? {})
            .expand((element) => element.map((e) => e.toString()))
            .toList();
    return DomainError(
      message: message,
      details: details,
      messageId: message,
      params: params,
    );
  }
}
