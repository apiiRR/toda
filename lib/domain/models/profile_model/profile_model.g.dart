// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      street: json['street'] as String?,
      typeIntegration: json['type_integration'] as String?,
      customer: json['customer'] as bool?,
      supplier: json['supplier'] as bool?,
      companyId: json['company_id'] as List<dynamic>?,
      companyType: json['company_type'] as String?,
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'street': instance.street,
      'type_integration': instance.typeIntegration,
      'customer': instance.customer,
      'supplier': instance.supplier,
      'company_id': instance.companyId,
      'company_type': instance.companyType,
    };
