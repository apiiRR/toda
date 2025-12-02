import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_id.freezed.dart';
part 'history_id.g.dart';

@freezed
class HistoryId with _$HistoryId {
  factory HistoryId({
    @JsonKey(name: 'location_name') String? locationName,
    @JsonKey(name: 'user_id') List<dynamic>? userId,
    int? id,
    @JsonKey(name: 'asset_location_id') List<dynamic>? assetLocationId,
    @JsonKey(name: 'location_code') String? locationCode,
    @JsonKey(name: 'scan_date') String? scanDate,
  }) = _HistoryId;

  factory HistoryId.fromJson(Map<String, dynamic> json) =>
      _$HistoryIdFromJson(json);
}
