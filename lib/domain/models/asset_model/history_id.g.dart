// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoryIdImpl _$$HistoryIdImplFromJson(Map<String, dynamic> json) =>
    _$HistoryIdImpl(
      id: (json['id'] as num?)?.toInt(),
      locationName: json['location_name'].toString(),
      userId: json['user_id'] != false ? json['user_id'] as List<dynamic>? : [],
      scanDate: json['scan_date'].toString(),
    );

Map<String, dynamic> _$$HistoryIdImplToJson(_$HistoryIdImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'location_name': instance.locationName,
      'user_id': instance.userId,
      'scan_date': instance.scanDate,
    };
