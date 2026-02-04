import 'package:freezed_annotation/freezed_annotation.dart';

part 'aset_by_category.freezed.dart';
part 'aset_by_category.g.dart';

@freezed
class AsetByCategory with _$AsetByCategory {
  factory AsetByCategory({String? name, int? qty}) = _AsetByCategory;

  factory AsetByCategory.fromJson(Map<String, dynamic> json) =>
      _$AsetByCategoryFromJson(json);
}
