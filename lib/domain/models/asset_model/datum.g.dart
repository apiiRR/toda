// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      id: (json['id'] as num?)?.toInt(),
      productCode: json['product_code'].toString(),
      productName: json['product_name'].toString(),
      assetLocationId: json['asset_location_id'] != false
          ? json['asset_location_id'] as List<dynamic>?
          : [],
      jobId: json['job_id'] != false ? json['job_id'] as List<dynamic>? : [],
      locationName: json['location_name'].toString(),
      userName: json['user_name'].toString(),
      notes: json['notes'].toString(),
      imageUrl: json['image_url'].toString(),
      historyIds: (json['history_ids'] as List<dynamic>?)
          ?.map((e) => HistoryId.fromJson(e as Map<String, dynamic>))
          .toList(),
      userHistoryIds: (json['user_history_ids'] as List<dynamic>?)
          ?.map((e) => UserHistoryId.fromJson(e as Map<String, dynamic>))
          .toList(),
      notesHistoryIds: (json['notes_history_ids'] as List<dynamic>?)
          ?.map((e) => NotesHistoryId.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_code': instance.productCode,
      'product_name': instance.productName,
      'asset_location_id': instance.assetLocationId,
      'job_id': instance.jobId,
      'location_name': instance.locationName,
      'user_name': instance.userName,
      'notes': instance.notes,
      'image_url': instance.imageUrl,
      'history_ids': instance.historyIds,
      'user_history_ids': instance.userHistoryIds,
      'notes_history_ids': instance.notesHistoryIds,
    };
