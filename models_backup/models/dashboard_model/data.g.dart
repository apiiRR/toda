// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
  asetInactive: (json['aset_inactive'] as num?)?.toInt(),
  totalAset: (json['total_aset'] as num?)?.toInt(),
  asetBaik: (json['aset_baik'] as num?)?.toInt(),
  asetByCategory: (json['aset_by_category'] as List<dynamic>?)
      ?.map((e) => AsetByCategory.fromJson(e as Map<String, dynamic>))
      .toList(),
  asetRusak: (json['aset_rusak'] as num?)?.toInt(),
);

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'aset_inactive': instance.asetInactive,
      'total_aset': instance.totalAset,
      'aset_baik': instance.asetBaik,
      'aset_by_category': instance.asetByCategory,
      'aset_rusak': instance.asetRusak,
    };
