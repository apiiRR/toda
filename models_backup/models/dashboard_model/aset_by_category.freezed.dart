// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aset_by_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AsetByCategory _$AsetByCategoryFromJson(Map<String, dynamic> json) {
  return _AsetByCategory.fromJson(json);
}

/// @nodoc
mixin _$AsetByCategory {
  String? get name => throw _privateConstructorUsedError;
  int? get qty => throw _privateConstructorUsedError;

  /// Serializes this AsetByCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AsetByCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AsetByCategoryCopyWith<AsetByCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AsetByCategoryCopyWith<$Res> {
  factory $AsetByCategoryCopyWith(
    AsetByCategory value,
    $Res Function(AsetByCategory) then,
  ) = _$AsetByCategoryCopyWithImpl<$Res, AsetByCategory>;
  @useResult
  $Res call({String? name, int? qty});
}

/// @nodoc
class _$AsetByCategoryCopyWithImpl<$Res, $Val extends AsetByCategory>
    implements $AsetByCategoryCopyWith<$Res> {
  _$AsetByCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AsetByCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = freezed, Object? qty = freezed}) {
    return _then(
      _value.copyWith(
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            qty: freezed == qty
                ? _value.qty
                : qty // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AsetByCategoryImplCopyWith<$Res>
    implements $AsetByCategoryCopyWith<$Res> {
  factory _$$AsetByCategoryImplCopyWith(
    _$AsetByCategoryImpl value,
    $Res Function(_$AsetByCategoryImpl) then,
  ) = __$$AsetByCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, int? qty});
}

/// @nodoc
class __$$AsetByCategoryImplCopyWithImpl<$Res>
    extends _$AsetByCategoryCopyWithImpl<$Res, _$AsetByCategoryImpl>
    implements _$$AsetByCategoryImplCopyWith<$Res> {
  __$$AsetByCategoryImplCopyWithImpl(
    _$AsetByCategoryImpl _value,
    $Res Function(_$AsetByCategoryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AsetByCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = freezed, Object? qty = freezed}) {
    return _then(
      _$AsetByCategoryImpl(
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        qty: freezed == qty
            ? _value.qty
            : qty // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AsetByCategoryImpl implements _AsetByCategory {
  _$AsetByCategoryImpl({this.name, this.qty});

  factory _$AsetByCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$AsetByCategoryImplFromJson(json);

  @override
  final String? name;
  @override
  final int? qty;

  @override
  String toString() {
    return 'AsetByCategory(name: $name, qty: $qty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AsetByCategoryImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.qty, qty) || other.qty == qty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, qty);

  /// Create a copy of AsetByCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AsetByCategoryImplCopyWith<_$AsetByCategoryImpl> get copyWith =>
      __$$AsetByCategoryImplCopyWithImpl<_$AsetByCategoryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AsetByCategoryImplToJson(this);
  }
}

abstract class _AsetByCategory implements AsetByCategory {
  factory _AsetByCategory({final String? name, final int? qty}) =
      _$AsetByCategoryImpl;

  factory _AsetByCategory.fromJson(Map<String, dynamic> json) =
      _$AsetByCategoryImpl.fromJson;

  @override
  String? get name;
  @override
  int? get qty;

  /// Create a copy of AsetByCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AsetByCategoryImplCopyWith<_$AsetByCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
