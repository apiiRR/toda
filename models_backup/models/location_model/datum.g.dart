// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
  id: (json['id'] as num?)?.toInt(),
  code: json['code'].toString(),
  name: json['name'].toString(),
  parentId:
      json['parent_id'] is List ? json['parent_id'] as List<dynamic>? : [],
);

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'parent_id': instance.parentId,
    };
