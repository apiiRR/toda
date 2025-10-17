import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_history_id.freezed.dart';
part 'user_history_id.g.dart';

@freezed
class UserHistoryId with _$UserHistoryId {
  factory UserHistoryId({
    int? id,
    String? name,
    @JsonKey(name: 'user_id') List<dynamic>? userId,
    String? date,
  }) = _UserHistoryId;

  factory UserHistoryId.fromJson(Map<String, dynamic> json) =>
      _$UserHistoryIdFromJson(json);
}
