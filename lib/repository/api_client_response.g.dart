// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_client_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiClientResponse _$ApiClientResponseFromJson(Map<String, dynamic> json) =>
    ApiClientResponse(
      code: json['code'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ApiClientResponseToJson(ApiClientResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };
