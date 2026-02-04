import 'package:freezed_annotation/freezed_annotation.dart';

import 'aset_by_category.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  factory Data({
    @JsonKey(name: 'aset_inactive') int? asetInactive,
    @JsonKey(name: 'aset_active') int? asetActive,
    @JsonKey(name: 'total_aset') int? totalAset,
    @JsonKey(name: 'aset_baik') int? asetBaik,
    @JsonKey(name: 'aset_idle') int? asetIdle,
    @JsonKey(name: 'aset_by_category') List<AsetByCategory>? asetByCategory,
    @JsonKey(name: 'aset_rusak') int? asetRusak,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
