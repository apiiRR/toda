// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maintenance_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MaintenanceIdImpl _$$MaintenanceIdImplFromJson(Map<String, dynamic> json) =>
    _$MaintenanceIdImpl(
      userId: json['user_id'] is List ? json['user_id'] as List<dynamic>? : [],
      description: json['description'].toString(),
      id: (json['id'] as num?)?.toInt(),
      state: json['state'].toString(),
      cost: (json['cost'] as num?)?.toDouble(),
      date: json['date'].toString(),
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
