import 'package:freezed_annotation/freezed_annotation.dart';

import 'result.dart';

part 'master_data_model.freezed.dart';
part 'master_data_model.g.dart';

@freezed
class MasterDataModel with _$MasterDataModel {
  factory MasterDataModel({String? jsonrpc, dynamic id, Result? result}) =
      _MasterDataModel;

  factory MasterDataModel.fromJson(Map<String, dynamic> json) =>
      _$MasterDataModelFromJson(json);
}
