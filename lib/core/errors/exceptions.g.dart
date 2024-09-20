// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exceptions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$APIExceptionImpl _$$APIExceptionImplFromJson(Map<String, dynamic> json) =>
    _$APIExceptionImpl(
      message: json['message'] as String,
      statusCode: (json['statusCode'] as num).toInt(),
    );

Map<String, dynamic> _$$APIExceptionImplToJson(_$APIExceptionImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'statusCode': instance.statusCode,
    };
