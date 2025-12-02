// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_history_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserHistoryId _$UserHistoryIdFromJson(Map<String, dynamic> json) {
  return _UserHistoryId.fromJson(json);
}

/// @nodoc
mixin _$UserHistoryId {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  List<dynamic>? get userId => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;

  /// Serializes this UserHistoryId to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserHistoryId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserHistoryIdCopyWith<UserHistoryId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserHistoryIdCopyWith<$Res> {
  factory $UserHistoryIdCopyWith(
    UserHistoryId value,
    $Res Function(UserHistoryId) then,
  ) = _$UserHistoryIdCopyWithImpl<$Res, UserHistoryId>;
  @useResult
  $Res call({
    int? id,
    String? name,
    @JsonKey(name: 'user_id') List<dynamic>? userId,
    String? date,
  });
}

/// @nodoc
class _$UserHistoryIdCopyWithImpl<$Res, $Val extends UserHistoryId>
    implements $UserHistoryIdCopyWith<$Res> {
  _$UserHistoryIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserHistoryId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? userId = freezed,
    Object? date = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            date: freezed == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserHistoryIdImplCopyWith<$Res>
    implements $UserHistoryIdCopyWith<$Res> {
  factory _$$UserHistoryIdImplCopyWith(
    _$UserHistoryIdImpl value,
    $Res Function(_$UserHistoryIdImpl) then,
  ) = __$$UserHistoryIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    String? name,
    @JsonKey(name: 'user_id') List<dynamic>? userId,
    String? date,
  });
}

/// @nodoc
class __$$UserHistoryIdImplCopyWithImpl<$Res>
    extends _$UserHistoryIdCopyWithImpl<$Res, _$UserHistoryIdImpl>
    implements _$$UserHistoryIdImplCopyWith<$Res> {
  __$$UserHistoryIdImplCopyWithImpl(
    _$UserHistoryIdImpl _value,
    $Res Function(_$UserHistoryIdImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserHistoryId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? userId = freezed,
    Object? date = freezed,
  }) {
    return _then(
      _$UserHistoryIdImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        userId: freezed == userId
            ? _value._userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        date: freezed == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserHistoryIdImpl implements _UserHistoryId {
  _$UserHistoryIdImpl({
    this.id,
    this.name,
    @JsonKey(name: 'user_id') final List<dynamic>? userId,
    this.date,
  }) : _userId = userId;

  factory _$UserHistoryIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserHistoryIdImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  final List<dynamic>? _userId;
  @override
  @JsonKey(name: 'user_id')
  List<dynamic>? get userId {
    final value = _userId;
    if (value == null) return null;
    if (_userId is EqualUnmodifiableListView) return _userId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? date;

  @override
  String toString() {
    return 'UserHistoryId(id: $id, name: $name, userId: $userId, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserHistoryIdImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._userId, _userId) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    const DeepCollectionEquality().hash(_userId),
    date,
  );

  /// Create a copy of UserHistoryId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserHistoryIdImplCopyWith<_$UserHistoryIdImpl> get copyWith =>
      __$$UserHistoryIdImplCopyWithImpl<_$UserHistoryIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserHistoryIdImplToJson(this);
  }
}

abstract class _UserHistoryId implements UserHistoryId {
  factory _UserHistoryId({
    final int? id,
    final String? name,
    @JsonKey(name: 'user_id') final List<dynamic>? userId,
    final String? date,
  }) = _$UserHistoryIdImpl;

  factory _UserHistoryId.fromJson(Map<String, dynamic> json) =
      _$UserHistoryIdImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'user_id')
  List<dynamic>? get userId;
  @override
  String? get date;

  /// Create a copy of UserHistoryId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserHistoryIdImplCopyWith<_$UserHistoryIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
