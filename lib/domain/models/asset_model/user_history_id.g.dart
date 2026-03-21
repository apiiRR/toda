// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_history_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserHistoryIdImpl _$$UserHistoryIdImplFromJson(Map<String, dynamic> json) =>
    _$UserHistoryIdImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      userId: json['user_id'] as List<dynamic>?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$UserHistoryIdImplToJson(_$UserHistoryIdImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'user_id': instance.userId,
      'date': instance.date,
    };
