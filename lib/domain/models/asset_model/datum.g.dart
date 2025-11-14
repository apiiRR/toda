// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
  locationGedungId: json['location_gedung_id'] is List
      ? json['location_gedung_id'] as List<dynamic>?
      : [],
  locationName: json['location_name'].toString(),
  lifetime: (json['lifetime'] as num?)?.toInt(),
  userHistoryIds: (json['user_history_ids'] as List<dynamic>?)
      ?.map((e) => UserHistoryId.fromJson(e as Map<String, dynamic>))
      .toList(),
  poAmount: (json['po_amount'] as num?)?.toDouble(),
  currentAccumulatedDepreciation:
      (json['current_accumulated_depreciation'] as num?)?.toDouble(),
  residualValue: (json['residual_value'] as num?)?.toDouble(),
  pastImageUrl: json['past_image_url'].toString(),
  assetLocationId: json['asset_location_id'] is List
      ? json['asset_location_id'] as List<dynamic>?
      : [],
  currentDepreciableAmount: (json['current_depreciable_amount'] as num?)
      ?.toDouble(),
  notes: json['notes'].toString(),
  depreciationAmountPerMonth: (json['depreciation_amount_per_month'] as num?)
      ?.toDouble(),
  categoryId: json['category_id'] is List
      ? json['category_id'] as List<dynamic>?
      : [],
  notesHistoryIds: (json['notes_history_ids'] as List<dynamic>?)
      ?.map((e) => NotesHistoryId.fromJson(e as Map<String, dynamic>))
      .toList(),
  userName: json['user_name'].toString(),
  id: (json['id'] as num?)?.toInt(),
  productCode: json['product_code'].toString(),
  historyIds: (json['history_ids'] as List<dynamic>?)
      ?.map((e) => HistoryId.fromJson(e as Map<String, dynamic>))
      .toList(),
  maintenanceIds: (json['maintenance_ids'] as List<dynamic>?)
      ?.map((e) => MaintenanceId.fromJson(e as Map<String, dynamic>))
      .toList(),
  productName: json['product_name'].toString(),
  poDate: json['po_date'].toString(),
  merkId: json['merk_id'] is List ? json['merk_id'] as List<dynamic>? : [],
  kondisi: json['kondisi'].toString(),
  imageUrl: json['image_url'].toString(),
  poNumber: json['po_number'].toString(),
  locationLantaiId: json['location_lantai_id'] is List
      ? json['location_lantai_id'] as List<dynamic>?
      : [],
);

Map<String, dynamic> _$$DatumImplToJson(
  _$DatumImpl instance,
) => <String, dynamic>{
  'location_gedung_id': instance.locationGedungId,
  'location_name': instance.locationName,
  'lifetime': instance.lifetime,
  'user_history_ids': instance.userHistoryIds,
  'po_amount': instance.poAmount,
  'current_accumulated_depreciation': instance.currentAccumulatedDepreciation,
  'residual_value': instance.residualValue,
  'past_image_url': instance.pastImageUrl,
  'asset_location_id': instance.assetLocationId,
  'current_depreciable_amount': instance.currentDepreciableAmount,
  'notes': instance.notes,
  'depreciation_amount_per_month': instance.depreciationAmountPerMonth,
  'category_id': instance.categoryId,
  'notes_history_ids': instance.notesHistoryIds,
  'user_name': instance.userName,
  'id': instance.id,
  'product_code': instance.productCode,
  'history_ids': instance.historyIds,
  'maintenance_ids': instance.maintenanceIds,
  'product_name': instance.productName,
  'po_date': instance.poDate,
  'merk_id': instance.merkId,
  'kondisi': instance.kondisi,
  'image_url': instance.imageUrl,
  'po_number': instance.poNumber,
  'location_lantai_id': instance.locationLantaiId,
};
