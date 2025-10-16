import 'package:freezed_annotation/freezed_annotation.dart';

import 'result.dart';

part 'asset_model.freezed.dart';
part 'asset_model.g.dart';

@freezed
class AssetModel with _$AssetModel {
  factory AssetModel({
    String? jsonrpc,
    dynamic id,
    Result? result,
  }) = _AssetModel;

  factory AssetModel.fromJson(Map<String, dynamic> json) =>
      _$AssetModelFromJson(json);
}
