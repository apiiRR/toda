// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
  assetLocationId: json['asset_location_id'] as List<dynamic>?,
  productCode: json['product_code'] as String?,
  locationName: json['location_name'] as String?,
  poDate: json['po_date'] as String?,
  productName: json['product_name'] as String?,
  currentAccumulatedDepreciation:
      (json['current_accumulated_depreciation'] as num?)?.toDouble(),
  imageUrl: json['image_url'] as String?,
  maintenanceIds:
      (json['maintenance_ids'] as List<dynamic>?)
          ?.map((e) => MaintenanceId.fromJson(e as Map<String, dynamic>))
          .toList(),
  residualValue: (json['residual_value'] as num?)?.toInt(),
  currentDepreciableAmount:
      (json['current_depreciable_amount'] as num?)?.toDouble(),
  categoryId: json['category_id'] as List<dynamic>?,
  lifetime: (json['lifetime'] as num?)?.toInt(),
  userHistoryIds:
      (json['user_history_ids'] as List<dynamic>?)
          ?.map((e) => UserHistoryId.fromJson(e as Map<String, dynamic>))
          .toList(),
  poAmount: (json['po_amount'] as num?)?.toInt(),
  merkId: json['merk_id'] as List<dynamic>?,
  historyIds:
      (json['history_ids'] as List<dynamic>?)
          ?.map((e) => HistoryId.fromJson(e as Map<String, dynamic>))
          .toList(),
  notesHistoryIds:
      (json['notes_history_ids'] as List<dynamic>?)
          ?.map((e) => NotesHistoryId.fromJson(e as Map<String, dynamic>))
          .toList(),
  id: (json['id'] as num?)?.toInt(),
  notes: json['notes'] as String?,
  userName: json['user_name'] as String?,
  poNumber: json['po_number'] as String?,
  pastImageUrl: json['past_image_url'] as String?,
  depreciationAmountPerMonth:
      (json['depreciation_amount_per_month'] as num?)?.toDouble(),
);

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'po_date': instance.poDate,
      'product_name': instance.productName,
      'image_url': instance.imageUrl,
      'category_id': instance.categoryId,
      'po_amount': instance.poAmount,
      'merk_id': instance.merkId,
      'user_name': instance.userName,
      'po_number': instance.poNumber,
    };
