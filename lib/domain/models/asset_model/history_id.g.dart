// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoryIdImpl _$$HistoryIdImplFromJson(Map<String, dynamic> json) =>
    _$HistoryIdImpl(
      locationName: json['location_name'].toString(),
      userId: json['user_id'] is List ? json['user_id'] as List<dynamic>? : [],
      id: (json['id'] as num?)?.toInt(),
      assetLocationId: json['asset_location_id'] is List
          ? json['asset_location_id'] as List<dynamic>?
          : [],
      locationCode: json['location_code'].toString(),
      scanDate: json['scan_date'].toString(),
    );

Map<String, dynamic> _$$HistoryIdImplToJson(_$HistoryIdImpl instance) =>
    <String, dynamic>{
      'location_name': instance.locationName,
      'user_id': instance.userId,
      'id': instance.id,
      'asset_location_id': instance.assetLocationId,
      'location_code': instance.locationCode,
      'scan_date': instance.scanDate,
    };
