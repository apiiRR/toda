// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_history_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotesHistoryIdImpl _$$NotesHistoryIdImplFromJson(Map<String, dynamic> json) =>
    _$NotesHistoryIdImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'].toString(),
      userId: json['user_id'] is List ? json['user_id'] as List<dynamic>? : [],
      date: json['date'].toString(),
    );

Map<String, dynamic> _$$NotesHistoryIdImplToJson(
  _$NotesHistoryIdImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'user_id': instance.userId,
  'date': instance.date,
};
