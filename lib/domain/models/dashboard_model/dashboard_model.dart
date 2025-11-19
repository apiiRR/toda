import 'package:freezed_annotation/freezed_annotation.dart';

import 'result.dart';

part 'dashboard_model.freezed.dart';
part 'dashboard_model.g.dart';

@freezed
class DashboardModel with _$DashboardModel {
  factory DashboardModel({String? jsonrpc, Result? result, dynamic id}) =
      _DashboardModel;

  factory DashboardModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardModelFromJson(json);
}
