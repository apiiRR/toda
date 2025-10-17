import 'package:freezed_annotation/freezed_annotation.dart';

part 'datum.freezed.dart';
part 'datum.g.dart';

@freezed
class Datum with _$Datum {
  factory Datum({int? id, String? name}) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  static List<Datum> fromJsonList(List list) {
    if (list.isEmpty) return List<Datum>.empty();
    return list.map((item) => Datum.fromJson(item)).toList();
  }
}
