import 'package:freezed_annotation/freezed_annotation.dart';

import 'history_id.dart';
import 'notes_history_id.dart';
import 'user_history_id.dart';

part 'datum.freezed.dart';
part 'datum.g.dart';

@freezed
class Datum with _$Datum {
  factory Datum({
    int? id,
    @JsonKey(name: 'product_code') String? productCode,
    @JsonKey(name: 'product_name') String? productName,
    @JsonKey(name: 'asset_location_id') List<dynamic>? assetLocationId,
    @JsonKey(name: 'job_id') List<dynamic>? jobId,
    @JsonKey(name: 'location_name') String? locationName,
    @JsonKey(name: 'user_name') String? userName,
    @JsonKey(name: 'notes') String? notes,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'history_ids') List<HistoryId>? historyIds,
    @JsonKey(name: 'user_history_ids') List<UserHistoryId>? userHistoryIds,
    @JsonKey(name: 'notes_history_ids') List<NotesHistoryId>? notesHistoryIds,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  static List<Datum> fromJsonList(List list) {
    if (list.isEmpty) return List<Datum>.empty();
    return list.map((item) => Datum.fromJson(item)).toList();
  }
}
