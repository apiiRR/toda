// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoryIdImpl _$$HistoryIdImplFromJson(Map<String, dynamic> json) =>
    _$HistoryIdImpl(
      id: (json['id'] as num?)?.toInt(),
      scanDate: json['scan_date'].toString(),
      userId: json['user_id'] is List ? json['user_id'] as List<dynamic>? : [],
      locationName: json['location_name'].toString(),
    );

Map<String, dynamic> _$$HistoryIdImplToJson(_$HistoryIdImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'scan_date': instance.scanDate,
      'user_id': instance.userId,
      'location_name': instance.locationName,
    };
