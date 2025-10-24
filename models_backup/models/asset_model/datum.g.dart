// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
  assetLocationId: json['asset_location_id'] is List
      ? json['asset_location_id'] as List<dynamic>?
      : [],
  productCode: json['product_code'].toString(),
  locationName: json['location_name'].toString(),
  kondisi: json['kondisi'].toString(),
  poDate: json['po_date'].toString(),
  productName: json['product_name'].toString(),
  currentAccumulatedDepreciation:
      (json['current_accumulated_depreciation'] as num?)?.toDouble(),
  imageUrl: json['image_url'].toString(),
  maintenanceIds: (json['maintenance_ids'] as List<dynamic>?)
      ?.map((e) => MaintenanceId.fromJson(e as Map<String, dynamic>))
      .toList(),
  residualValue: (json['residual_value'] as num?)?.toDouble(),
  currentDepreciableAmount: (json['current_depreciable_amount'] as num?)
      ?.toDouble(),
  categoryId: json['category_id'] is List
      ? json['category_id'] as List<dynamic>?
      : [],
  lifetime: (json['lifetime'] as num?)?.toInt(),
  userHistoryIds: (json['user_history_ids'] as List<dynamic>?)
      ?.map((e) => UserHistoryId.fromJson(e as Map<String, dynamic>))
      .toList(),
  poAmount: (json['po_amount'] as num?)?.toDouble(),
  merkId: json['merk_id'] is List ? json['merk_id'] as List<dynamic>? : [],
  historyIds: (json['history_ids'] as List<dynamic>?)
      ?.map((e) => HistoryId.fromJson(e as Map<String, dynamic>))
      .toList(),
  notesHistoryIds: (json['notes_history_ids'] as List<dynamic>?)
      ?.map((e) => NotesHistoryId.fromJson(e as Map<String, dynamic>))
      .toList(),
  id: (json['id'] as num?)?.toInt(),
  notes: json['notes'].toString(),
  userName: json['user_name'].toString(),
  poNumber: json['po_number'].toString(),
  pastImageUrl: json['past_image_url'].toString(),
  depreciationAmountPerMonth: (json['depreciation_amount_per_month'] as num?)
      ?.toDouble(),
);

Map<String, dynamic> _$$DatumImplToJson(
  _$DatumImpl instance,
) => <String, dynamic>{
  'asset_location_id': instance.assetLocationId,
  'product_code': instance.productCode,
  'location_name': instance.locationName,
  'kondisi': instance.kondisi,
  'po_date': instance.poDate,
  'product_name': instance.productName,
  'current_accumulated_depreciation': instance.currentAccumulatedDepreciation,
  'image_url': instance.imageUrl,
  'maintenance_ids': instance.maintenanceIds,
  'residual_value': instance.residualValue,
  'current_depreciable_amount': instance.currentDepreciableAmount,
  'category_id': instance.categoryId,
  'lifetime': instance.lifetime,
  'user_history_ids': instance.userHistoryIds,
  'po_amount': instance.poAmount,
  'merk_id': instance.merkId,
  'history_ids': instance.historyIds,
  'notes_history_ids': instance.notesHistoryIds,
  'id': instance.id,
  'notes': instance.notes,
  'user_name': instance.userName,
  'po_number': instance.poNumber,
  'past_image_url': instance.pastImageUrl,
  'depreciation_amount_per_month': instance.depreciationAmountPerMonth,
};
