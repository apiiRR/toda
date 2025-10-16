// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
  name: json['name'] as String?,
  debug: json['debug'] as String?,
  message: json['message'] as String?,
  arguments:
      (json['arguments'] as List<dynamic>?)?.map((e) => e as String).toList(),
  exceptionType: json['exception_type'] as String?,
);

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'debug': instance.debug,
      'message': instance.message,
      'arguments': instance.arguments,
      'exception_type': instance.exceptionType,
    };
