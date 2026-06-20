// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'datum.dart';

part 'result.freezed.dart';
part 'result.g.dart';

@freezed
class Result with _$Result {
  factory Result({@JsonKey(fromJson: _datumListFromJson) List<Datum>? data}) =
      _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

List<Datum>? _datumListFromJson(dynamic data) {
  if (data is! List) return null;
  return data
      .map((item) => Datum.fromJson(item as Map<String, dynamic>))
      .toList();
}
