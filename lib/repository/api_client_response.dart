import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'api_client_response.g.dart';

ApiClientResponse apiClientResponseFromJson(String str) => ApiClientResponse.fromJson(json.decode(str));
String apiClientResponseToJson(ApiClientResponse data) => json.encode(data.toJson());

@JsonSerializable(fieldRename: FieldRename.snake)
class ApiClientResponse {
  ApiClientResponse({
    this.code,
    this.message,
  });

  String? code;
  String? message;

  factory ApiClientResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiClientResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiClientResponseToJson(this);
}
