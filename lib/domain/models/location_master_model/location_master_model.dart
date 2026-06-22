import 'package:freezed_annotation/freezed_annotation.dart';

import 'result.dart';

part 'location_master_model.freezed.dart';
part 'location_master_model.g.dart';

@freezed
class LocationMasterModel with _$LocationMasterModel {
  factory LocationMasterModel({Result? result, String? jsonrpc, dynamic id}) =
      _LocationMasterModel;

  factory LocationMasterModel.fromJson(Map<String, dynamic> json) =>
      _$LocationMasterModelFromJson(json);
}
