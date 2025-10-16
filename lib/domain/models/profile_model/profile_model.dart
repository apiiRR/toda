import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class ProfileModel with _$ProfileModel {
  factory ProfileModel({
    int? id,
    String? name,
    String? street,
    @JsonKey(name: 'type_integration') String? typeIntegration,
    bool? customer,
    bool? supplier,
    @JsonKey(name: 'company_id') List<dynamic>? companyId,
    @JsonKey(name: 'company_type') String? companyType,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}
