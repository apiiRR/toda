// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginModelImpl _$$LoginModelImplFromJson(Map<String, dynamic> json) =>
    _$LoginModelImpl(
      resUser: json['res_user'] as String?,
      refreshToken: json['refresh_token'] as String?,
      token:
          json['token'] == null
              ? null
              : Token.fromJson(json['token'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginModelImplToJson(_$LoginModelImpl instance) =>
    <String, dynamic>{
      'res_user': instance.resUser,
      'refresh_token': instance.refreshToken,
      'token': instance.token,
    };
