import 'package:freezed_annotation/freezed_annotation.dart';

import 'history_id.dart';
import 'maintenance_id.dart';
import 'notes_history_id.dart';
import 'user_history_id.dart';

part 'datum.freezed.dart';
part 'datum.g.dart';

@freezed
class Datum with _$Datum {
  factory Datum({
    @JsonKey(name: 'location_gedung_id') List<dynamic>? locationGedungId,
    @JsonKey(name: 'location_name') String? locationName,
    int? lifetime,
    @JsonKey(name: 'user_history_ids') List<UserHistoryId>? userHistoryIds,
    @JsonKey(name: 'po_amount') double? poAmount,
    @JsonKey(name: 'current_accumulated_depreciation')
    double? currentAccumulatedDepreciation,
    @JsonKey(name: 'residual_value') double? residualValue,
    @JsonKey(name: 'past_image_url') String? pastImageUrl,
    @JsonKey(name: 'asset_location_id') List<dynamic>? assetLocationId,
    @JsonKey(name: 'current_depreciable_amount')
    double? currentDepreciableAmount,
    String? notes,
    @JsonKey(name: 'depreciation_amount_per_month')
    double? depreciationAmountPerMonth,
    @JsonKey(name: 'category_id') List<dynamic>? categoryId,
    @JsonKey(name: 'notes_history_ids') List<NotesHistoryId>? notesHistoryIds,
    @JsonKey(name: 'user_name') String? userName,
    int? id,
    @JsonKey(name: 'product_code') String? productCode,
    @JsonKey(name: 'history_ids') List<HistoryId>? historyIds,
    @JsonKey(name: 'maintenance_ids') List<MaintenanceId>? maintenanceIds,
    @JsonKey(name: 'product_name') String? productName,
    @JsonKey(name: 'po_date') String? poDate,
    @JsonKey(name: 'merk_id') List<dynamic>? merkId,
    String? kondisi,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'po_number') String? poNumber,
    @JsonKey(name: 'location_lantai_id') List<dynamic>? locationLantaiId,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  static List<Datum> fromJsonList(List list) {
    if (list.isEmpty) return List<Datum>.empty();
    return list.map((item) => Datum.fromJson(item)).toList();
  }
}
