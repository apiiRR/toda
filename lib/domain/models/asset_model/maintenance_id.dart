import 'package:freezed_annotation/freezed_annotation.dart';

part 'maintenance_id.freezed.dart';
part 'maintenance_id.g.dart';

@freezed
class MaintenanceId with _$MaintenanceId {
  factory MaintenanceId({
    @JsonKey(name: 'user_id') List<dynamic>? userId,
    String? description,
    int? id,
    String? state,
    int? cost,
    String? date,
  }) = _MaintenanceId;

  factory MaintenanceId.fromJson(Map<String, dynamic> json) =>
      _$MaintenanceIdFromJson(json);
}
