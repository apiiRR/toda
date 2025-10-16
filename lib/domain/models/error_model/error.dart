import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';

part 'error.freezed.dart';
part 'error.g.dart';

@freezed
class Error with _$Error {
  factory Error({
    int? code,
    String? message,
    Data? data,
  }) = _Error;

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);
}
