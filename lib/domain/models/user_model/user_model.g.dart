// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      result:
          json['result'] == null
              ? null
              : Result.fromJson(json['result'] as Map<String, dynamic>),
      id: json['id'],
      jsonrpc: json['jsonrpc'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
      'id': instance.id,
      'jsonrpc': instance.jsonrpc,
    };
