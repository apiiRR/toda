import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_id.freezed.dart';
part 'history_id.g.dart';

@freezed
class HistoryId with _$HistoryId {
  factory HistoryId({
    int? id,
    @JsonKey(name: 'scan_date') String? scanDate,
    @JsonKey(name: 'user_id') List<dynamic>? userId,
    @JsonKey(name: 'location_name') String? locationName,
  }) = _HistoryId;

  factory HistoryId.fromJson(Map<String, dynamic> json) =>
      _$HistoryIdFromJson(json);
}
