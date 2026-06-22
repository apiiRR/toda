// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_master_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LocationMasterModel _$LocationMasterModelFromJson(Map<String, dynamic> json) {
  return _LocationMasterModel.fromJson(json);
}

/// @nodoc
mixin _$LocationMasterModel {
  Result? get result => throw _privateConstructorUsedError;
  String? get jsonrpc => throw _privateConstructorUsedError;
  dynamic get id => throw _privateConstructorUsedError;

  /// Serializes this LocationMasterModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationMasterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationMasterModelCopyWith<LocationMasterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationMasterModelCopyWith<$Res> {
  factory $LocationMasterModelCopyWith(
    LocationMasterModel value,
    $Res Function(LocationMasterModel) then,
  ) = _$LocationMasterModelCopyWithImpl<$Res, LocationMasterModel>;
  @useResult
  $Res call({Result? result, String? jsonrpc, dynamic id});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$LocationMasterModelCopyWithImpl<$Res, $Val extends LocationMasterModel>
    implements $LocationMasterModelCopyWith<$Res> {
  _$LocationMasterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationMasterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? jsonrpc = freezed,
    Object? id = freezed,
  }) {
    return _then(
      _value.copyWith(
            result: freezed == result
                ? _value.result
                : result // ignore: cast_nullable_to_non_nullable
                      as Result?,
            jsonrpc: freezed == jsonrpc
                ? _value.jsonrpc
                : jsonrpc // ignore: cast_nullable_to_non_nullable
                      as String?,
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as dynamic,
          )
          as $Val,
    );
  }

  /// Create a copy of LocationMasterModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $ResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationMasterModelImplCopyWith<$Res>
    implements $LocationMasterModelCopyWith<$Res> {
  factory _$$LocationMasterModelImplCopyWith(
    _$LocationMasterModelImpl value,
    $Res Function(_$LocationMasterModelImpl) then,
  ) = __$$LocationMasterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Result? result, String? jsonrpc, dynamic id});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$LocationMasterModelImplCopyWithImpl<$Res>
    extends _$LocationMasterModelCopyWithImpl<$Res, _$LocationMasterModelImpl>
    implements _$$LocationMasterModelImplCopyWith<$Res> {
  __$$LocationMasterModelImplCopyWithImpl(
    _$LocationMasterModelImpl _value,
    $Res Function(_$LocationMasterModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationMasterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? jsonrpc = freezed,
    Object? id = freezed,
  }) {
    return _then(
      _$LocationMasterModelImpl(
        result: freezed == result
            ? _value.result
            : result // ignore: cast_nullable_to_non_nullable
                  as Result?,
        jsonrpc: freezed == jsonrpc
            ? _value.jsonrpc
            : jsonrpc // ignore: cast_nullable_to_non_nullable
                  as String?,
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as dynamic,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationMasterModelImpl implements _LocationMasterModel {
  _$LocationMasterModelImpl({this.result, this.jsonrpc, this.id});

  factory _$LocationMasterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationMasterModelImplFromJson(json);

  @override
  final Result? result;
  @override
  final String? jsonrpc;
  @override
  final dynamic id;

  @override
  String toString() {
    return 'LocationMasterModel(result: $result, jsonrpc: $jsonrpc, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationMasterModelImpl &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    result,
    jsonrpc,
    const DeepCollectionEquality().hash(id),
  );

  /// Create a copy of LocationMasterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationMasterModelImplCopyWith<_$LocationMasterModelImpl> get copyWith =>
      __$$LocationMasterModelImplCopyWithImpl<_$LocationMasterModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationMasterModelImplToJson(this);
  }
}

abstract class _LocationMasterModel implements LocationMasterModel {
  factory _LocationMasterModel({
    final Result? result,
    final String? jsonrpc,
    final dynamic id,
  }) = _$LocationMasterModelImpl;

  factory _LocationMasterModel.fromJson(Map<String, dynamic> json) =
      _$LocationMasterModelImpl.fromJson;

  @override
  Result? get result;
  @override
  String? get jsonrpc;
  @override
  dynamic get id;

  /// Create a copy of LocationMasterModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationMasterModelImplCopyWith<_$LocationMasterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
