import 'package:freezed_annotation/freezed_annotation.dart';

import 'token.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginModel with _$LoginModel {
  factory LoginModel({
    @JsonKey(name: 'res_user') String? resUser,
    @JsonKey(name: 'refresh_token') String? refreshToken,
    Token? token,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
}
