// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notes_history_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

NotesHistoryId _$NotesHistoryIdFromJson(Map<String, dynamic> json) {
  return _NotesHistoryId.fromJson(json);
}

/// @nodoc
mixin _$NotesHistoryId {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  List<dynamic>? get userId => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;

  /// Serializes this NotesHistoryId to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotesHistoryId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotesHistoryIdCopyWith<NotesHistoryId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesHistoryIdCopyWith<$Res> {
  factory $NotesHistoryIdCopyWith(
    NotesHistoryId value,
    $Res Function(NotesHistoryId) then,
  ) = _$NotesHistoryIdCopyWithImpl<$Res, NotesHistoryId>;
  @useResult
  $Res call({
    int? id,
    String? name,
    @JsonKey(name: 'user_id') List<dynamic>? userId,
    String? date,
  });
}

/// @nodoc
class _$NotesHistoryIdCopyWithImpl<$Res, $Val extends NotesHistoryId>
    implements $NotesHistoryIdCopyWith<$Res> {
  _$NotesHistoryIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotesHistoryId
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
abstract class _$$NotesHistoryIdImplCopyWith<$Res>
    implements $NotesHistoryIdCopyWith<$Res> {
  factory _$$NotesHistoryIdImplCopyWith(
    _$NotesHistoryIdImpl value,
    $Res Function(_$NotesHistoryIdImpl) then,
  ) = __$$NotesHistoryIdImplCopyWithImpl<$Res>;
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
class __$$NotesHistoryIdImplCopyWithImpl<$Res>
    extends _$NotesHistoryIdCopyWithImpl<$Res, _$NotesHistoryIdImpl>
    implements _$$NotesHistoryIdImplCopyWith<$Res> {
  __$$NotesHistoryIdImplCopyWithImpl(
    _$NotesHistoryIdImpl _value,
    $Res Function(_$NotesHistoryIdImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotesHistoryId
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
      _$NotesHistoryIdImpl(
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
class _$NotesHistoryIdImpl implements _NotesHistoryId {
  _$NotesHistoryIdImpl({
    this.id,
    this.name,
    @JsonKey(name: 'user_id') final List<dynamic>? userId,
    this.date,
  }) : _userId = userId;

  factory _$NotesHistoryIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotesHistoryIdImplFromJson(json);

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
    return 'NotesHistoryId(id: $id, name: $name, userId: $userId, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotesHistoryIdImpl &&
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

  /// Create a copy of NotesHistoryId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotesHistoryIdImplCopyWith<_$NotesHistoryIdImpl> get copyWith =>
      __$$NotesHistoryIdImplCopyWithImpl<_$NotesHistoryIdImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$NotesHistoryIdImplToJson(this);
  }
}

abstract class _NotesHistoryId implements NotesHistoryId {
  factory _NotesHistoryId({
    final int? id,
    final String? name,
    @JsonKey(name: 'user_id') final List<dynamic>? userId,
    final String? date,
  }) = _$NotesHistoryIdImpl;

  factory _NotesHistoryId.fromJson(Map<String, dynamic> json) =
      _$NotesHistoryIdImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'user_id')
  List<dynamic>? get userId;
  @override
  String? get date;

  /// Create a copy of NotesHistoryId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotesHistoryIdImplCopyWith<_$NotesHistoryIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
