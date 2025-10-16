// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maintenance_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MaintenanceIdImpl _$$MaintenanceIdImplFromJson(Map<String, dynamic> json) =>
    _$MaintenanceIdImpl(
      userId: json['user_id'] as List<dynamic>?,
      description: json['description'] as String?,
      id: (json['id'] as num?)?.toInt(),
      state: json['state'] as String?,
      cost: (json['cost'] as num?)?.toInt(),
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$MaintenanceIdImplToJson(_$MaintenanceIdImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'description': instance.description,
      'id': instance.id,
      'state': instance.state,
      'cost': instance.cost,
      'date': instance.date,
    };
