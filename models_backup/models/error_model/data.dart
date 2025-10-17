import 'package:freezed_annotation/freezed_annotation.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  factory Data({
    String? name,
    String? debug,
    String? message,
    List<String>? arguments,
    @JsonKey(name: 'exception_type') String? exceptionType,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
