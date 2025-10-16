import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_id.freezed.dart';
part 'history_id.g.dart';

@freezed
class HistoryId with _$HistoryId {
  factory HistoryId({
    int? id,
    @JsonKey(name: 'location_name') String? locationName,
    @JsonKey(name: 'user_id') List<dynamic>? userId,
    @JsonKey(name: 'scan_date') String? scanDate,
  }) = _HistoryId;

  factory HistoryId.fromJson(Map<String, dynamic> json) =>
      _$HistoryIdFromJson(json);
}
