import 'package:freezed_annotation/freezed_annotation.dart';

part 'notes_history_id.freezed.dart';
part 'notes_history_id.g.dart';

@freezed
class NotesHistoryId with _$NotesHistoryId {
  factory NotesHistoryId({
    int? id,
    String? name,
    @JsonKey(name: 'user_id') List<dynamic>? userId,
    String? date,
  }) = _NotesHistoryId;

  factory NotesHistoryId.fromJson(Map<String, dynamic> json) =>
      _$NotesHistoryIdFromJson(json);
}
