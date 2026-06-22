// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_master_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationMasterModelImpl _$$LocationMasterModelImplFromJson(
  Map<String, dynamic> json,
) => _$LocationMasterModelImpl(
  result: json['result'] == null
      ? null
      : Result.fromJson(json['result'] as Map<String, dynamic>),
  jsonrpc: json['jsonrpc'] as String?,
  id: json['id'],
);

Map<String, dynamic> _$$LocationMasterModelImplToJson(
  _$LocationMasterModelImpl instance,
) => <String, dynamic>{
  'result': instance.result,
  'jsonrpc': instance.jsonrpc,
  'id': instance.id,
};
