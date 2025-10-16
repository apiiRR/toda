// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) {
  return _ProfileModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get street => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_integration')
  String? get typeIntegration => throw _privateConstructorUsedError;
  bool? get customer => throw _privateConstructorUsedError;
  bool? get supplier => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_id')
  List<dynamic>? get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_type')
  String? get companyType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileModelCopyWith<ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelCopyWith<$Res> {
  factory $ProfileModelCopyWith(
          ProfileModel value, $Res Function(ProfileModel) then) =
      _$ProfileModelCopyWithImpl<$Res, ProfileModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? street,
      @JsonKey(name: 'type_integration') String? typeIntegration,
      bool? customer,
      bool? supplier,
      @JsonKey(name: 'company_id') List<dynamic>? companyId,
      @JsonKey(name: 'company_type') String? companyType});
}

/// @nodoc
class _$ProfileModelCopyWithImpl<$Res, $Val extends ProfileModel>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? street = freezed,
    Object? typeIntegration = freezed,
    Object? customer = freezed,
    Object? supplier = freezed,
    Object? companyId = freezed,
    Object? companyType = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      typeIntegration: freezed == typeIntegration
          ? _value.typeIntegration
          : typeIntegration // ignore: cast_nullable_to_non_nullable
              as String?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as bool?,
      supplier: freezed == supplier
          ? _value.supplier
          : supplier // ignore: cast_nullable_to_non_nullable
              as bool?,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      companyType: freezed == companyType
          ? _value.companyType
          : companyType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileModelImplCopyWith<$Res>
    implements $ProfileModelCopyWith<$Res> {
  factory _$$ProfileModelImplCopyWith(
          _$ProfileModelImpl value, $Res Function(_$ProfileModelImpl) then) =
      __$$ProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? street,
      @JsonKey(name: 'type_integration') String? typeIntegration,
      bool? customer,
      bool? supplier,
      @JsonKey(name: 'company_id') List<dynamic>? companyId,
      @JsonKey(name: 'company_type') String? companyType});
}

/// @nodoc
class __$$ProfileModelImplCopyWithImpl<$Res>
    extends _$ProfileModelCopyWithImpl<$Res, _$ProfileModelImpl>
    implements _$$ProfileModelImplCopyWith<$Res> {
  __$$ProfileModelImplCopyWithImpl(
      _$ProfileModelImpl _value, $Res Function(_$ProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? street = freezed,
    Object? typeIntegration = freezed,
    Object? customer = freezed,
    Object? supplier = freezed,
    Object? companyId = freezed,
    Object? companyType = freezed,
  }) {
    return _then(_$ProfileModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      typeIntegration: freezed == typeIntegration
          ? _value.typeIntegration
          : typeIntegration // ignore: cast_nullable_to_non_nullable
              as String?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as bool?,
      supplier: freezed == supplier
          ? _value.supplier
          : supplier // ignore: cast_nullable_to_non_nullable
              as bool?,
      companyId: freezed == companyId
          ? _value._companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      companyType: freezed == companyType
          ? _value.companyType
          : companyType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileModelImpl implements _ProfileModel {
  _$ProfileModelImpl(
      {this.id,
      this.name,
      this.street,
      @JsonKey(name: 'type_integration') this.typeIntegration,
      this.customer,
      this.supplier,
      @JsonKey(name: 'company_id') final List<dynamic>? companyId,
      @JsonKey(name: 'company_type') this.companyType})
      : _companyId = companyId;

  factory _$ProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? street;
  @override
  @JsonKey(name: 'type_integration')
  final String? typeIntegration;
  @override
  final bool? customer;
  @override
  final bool? supplier;
  final List<dynamic>? _companyId;
  @override
  @JsonKey(name: 'company_id')
  List<dynamic>? get companyId {
    final value = _companyId;
    if (value == null) return null;
    if (_companyId is EqualUnmodifiableListView) return _companyId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'company_type')
  final String? companyType;

  @override
  String toString() {
    return 'ProfileModel(id: $id, name: $name, street: $street, typeIntegration: $typeIntegration, customer: $customer, supplier: $supplier, companyId: $companyId, companyType: $companyType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.typeIntegration, typeIntegration) ||
                other.typeIntegration == typeIntegration) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.supplier, supplier) ||
                other.supplier == supplier) &&
            const DeepCollectionEquality()
                .equals(other._companyId, _companyId) &&
            (identical(other.companyType, companyType) ||
                other.companyType == companyType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      street,
      typeIntegration,
      customer,
      supplier,
      const DeepCollectionEquality().hash(_companyId),
      companyType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      __$$ProfileModelImplCopyWithImpl<_$ProfileModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileModel implements ProfileModel {
  factory _ProfileModel(
          {final int? id,
          final String? name,
          final String? street,
          @JsonKey(name: 'type_integration') final String? typeIntegration,
          final bool? customer,
          final bool? supplier,
          @JsonKey(name: 'company_id') final List<dynamic>? companyId,
          @JsonKey(name: 'company_type') final String? companyType}) =
      _$ProfileModelImpl;

  factory _ProfileModel.fromJson(Map<String, dynamic> json) =
      _$ProfileModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get street;
  @override
  @JsonKey(name: 'type_integration')
  String? get typeIntegration;
  @override
  bool? get customer;
  @override
  bool? get supplier;
  @override
  @JsonKey(name: 'company_id')
  List<dynamic>? get companyId;
  @override
  @JsonKey(name: 'company_type')
  String? get companyType;
  @override
  @JsonKey(ignore: true)
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
