// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'datum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  @JsonKey(name: 'location_gedung_id')
  List<dynamic>? get locationGedungId => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_name')
  String? get locationName => throw _privateConstructorUsedError;
  int? get lifetime => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_history_ids')
  List<UserHistoryId>? get userHistoryIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'po_amount')
  double? get poAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_accumulated_depreciation')
  double? get currentAccumulatedDepreciation =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'residual_value')
  double? get residualValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'past_image_url')
  String? get pastImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'asset_location_id')
  List<dynamic>? get assetLocationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_depreciable_amount')
  double? get currentDepreciableAmount => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'depreciation_amount_per_month')
  double? get depreciationAmountPerMonth => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  List<dynamic>? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'notes_history_ids')
  List<NotesHistoryId>? get notesHistoryIds =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'user_name')
  String? get userName => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_code')
  String? get productCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'history_ids')
  List<HistoryId>? get historyIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'maintenance_ids')
  List<MaintenanceId>? get maintenanceIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_name')
  String? get productName => throw _privateConstructorUsedError;
  @JsonKey(name: 'po_date')
  String? get poDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'merk_id')
  List<dynamic>? get merkId => throw _privateConstructorUsedError;
  String? get kondisi => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'po_number')
  String? get poNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_lantai_id')
  List<dynamic>? get locationLantaiId => throw _privateConstructorUsedError;

  /// Serializes this Datum to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call({
    @JsonKey(name: 'location_gedung_id') List<dynamic>? locationGedungId,
    @JsonKey(name: 'location_name') String? locationName,
    int? lifetime,
    @JsonKey(name: 'user_history_ids') List<UserHistoryId>? userHistoryIds,
    @JsonKey(name: 'po_amount') double? poAmount,
    @JsonKey(name: 'current_accumulated_depreciation')
    double? currentAccumulatedDepreciation,
    @JsonKey(name: 'residual_value') double? residualValue,
    @JsonKey(name: 'past_image_url') String? pastImageUrl,
    @JsonKey(name: 'asset_location_id') List<dynamic>? assetLocationId,
    @JsonKey(name: 'current_depreciable_amount')
    double? currentDepreciableAmount,
    String? notes,
    @JsonKey(name: 'depreciation_amount_per_month')
    double? depreciationAmountPerMonth,
    @JsonKey(name: 'category_id') List<dynamic>? categoryId,
    @JsonKey(name: 'notes_history_ids') List<NotesHistoryId>? notesHistoryIds,
    @JsonKey(name: 'user_name') String? userName,
    int? id,
    @JsonKey(name: 'product_code') String? productCode,
    @JsonKey(name: 'history_ids') List<HistoryId>? historyIds,
    @JsonKey(name: 'maintenance_ids') List<MaintenanceId>? maintenanceIds,
    @JsonKey(name: 'product_name') String? productName,
    @JsonKey(name: 'po_date') String? poDate,
    @JsonKey(name: 'merk_id') List<dynamic>? merkId,
    String? kondisi,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'po_number') String? poNumber,
    @JsonKey(name: 'location_lantai_id') List<dynamic>? locationLantaiId,
  });
}

/// @nodoc
class _$DatumCopyWithImpl<$Res, $Val extends Datum>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationGedungId = freezed,
    Object? locationName = freezed,
    Object? lifetime = freezed,
    Object? userHistoryIds = freezed,
    Object? poAmount = freezed,
    Object? currentAccumulatedDepreciation = freezed,
    Object? residualValue = freezed,
    Object? pastImageUrl = freezed,
    Object? assetLocationId = freezed,
    Object? currentDepreciableAmount = freezed,
    Object? notes = freezed,
    Object? depreciationAmountPerMonth = freezed,
    Object? categoryId = freezed,
    Object? notesHistoryIds = freezed,
    Object? userName = freezed,
    Object? id = freezed,
    Object? productCode = freezed,
    Object? historyIds = freezed,
    Object? maintenanceIds = freezed,
    Object? productName = freezed,
    Object? poDate = freezed,
    Object? merkId = freezed,
    Object? kondisi = freezed,
    Object? imageUrl = freezed,
    Object? poNumber = freezed,
    Object? locationLantaiId = freezed,
  }) {
    return _then(
      _value.copyWith(
            locationGedungId: freezed == locationGedungId
                ? _value.locationGedungId
                : locationGedungId // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            locationName: freezed == locationName
                ? _value.locationName
                : locationName // ignore: cast_nullable_to_non_nullable
                      as String?,
            lifetime: freezed == lifetime
                ? _value.lifetime
                : lifetime // ignore: cast_nullable_to_non_nullable
                      as int?,
            userHistoryIds: freezed == userHistoryIds
                ? _value.userHistoryIds
                : userHistoryIds // ignore: cast_nullable_to_non_nullable
                      as List<UserHistoryId>?,
            poAmount: freezed == poAmount
                ? _value.poAmount
                : poAmount // ignore: cast_nullable_to_non_nullable
                      as double?,
            currentAccumulatedDepreciation:
                freezed == currentAccumulatedDepreciation
                ? _value.currentAccumulatedDepreciation
                : currentAccumulatedDepreciation // ignore: cast_nullable_to_non_nullable
                      as double?,
            residualValue: freezed == residualValue
                ? _value.residualValue
                : residualValue // ignore: cast_nullable_to_non_nullable
                      as double?,
            pastImageUrl: freezed == pastImageUrl
                ? _value.pastImageUrl
                : pastImageUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            assetLocationId: freezed == assetLocationId
                ? _value.assetLocationId
                : assetLocationId // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            currentDepreciableAmount: freezed == currentDepreciableAmount
                ? _value.currentDepreciableAmount
                : currentDepreciableAmount // ignore: cast_nullable_to_non_nullable
                      as double?,
            notes: freezed == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                      as String?,
            depreciationAmountPerMonth: freezed == depreciationAmountPerMonth
                ? _value.depreciationAmountPerMonth
                : depreciationAmountPerMonth // ignore: cast_nullable_to_non_nullable
                      as double?,
            categoryId: freezed == categoryId
                ? _value.categoryId
                : categoryId // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            notesHistoryIds: freezed == notesHistoryIds
                ? _value.notesHistoryIds
                : notesHistoryIds // ignore: cast_nullable_to_non_nullable
                      as List<NotesHistoryId>?,
            userName: freezed == userName
                ? _value.userName
                : userName // ignore: cast_nullable_to_non_nullable
                      as String?,
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            productCode: freezed == productCode
                ? _value.productCode
                : productCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            historyIds: freezed == historyIds
                ? _value.historyIds
                : historyIds // ignore: cast_nullable_to_non_nullable
                      as List<HistoryId>?,
            maintenanceIds: freezed == maintenanceIds
                ? _value.maintenanceIds
                : maintenanceIds // ignore: cast_nullable_to_non_nullable
                      as List<MaintenanceId>?,
            productName: freezed == productName
                ? _value.productName
                : productName // ignore: cast_nullable_to_non_nullable
                      as String?,
            poDate: freezed == poDate
                ? _value.poDate
                : poDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            merkId: freezed == merkId
                ? _value.merkId
                : merkId // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            kondisi: freezed == kondisi
                ? _value.kondisi
                : kondisi // ignore: cast_nullable_to_non_nullable
                      as String?,
            imageUrl: freezed == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            poNumber: freezed == poNumber
                ? _value.poNumber
                : poNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            locationLantaiId: freezed == locationLantaiId
                ? _value.locationLantaiId
                : locationLantaiId // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DatumImplCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$DatumImplCopyWith(
    _$DatumImpl value,
    $Res Function(_$DatumImpl) then,
  ) = __$$DatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'location_gedung_id') List<dynamic>? locationGedungId,
    @JsonKey(name: 'location_name') String? locationName,
    int? lifetime,
    @JsonKey(name: 'user_history_ids') List<UserHistoryId>? userHistoryIds,
    @JsonKey(name: 'po_amount') double? poAmount,
    @JsonKey(name: 'current_accumulated_depreciation')
    double? currentAccumulatedDepreciation,
    @JsonKey(name: 'residual_value') double? residualValue,
    @JsonKey(name: 'past_image_url') String? pastImageUrl,
    @JsonKey(name: 'asset_location_id') List<dynamic>? assetLocationId,
    @JsonKey(name: 'current_depreciable_amount')
    double? currentDepreciableAmount,
    String? notes,
    @JsonKey(name: 'depreciation_amount_per_month')
    double? depreciationAmountPerMonth,
    @JsonKey(name: 'category_id') List<dynamic>? categoryId,
    @JsonKey(name: 'notes_history_ids') List<NotesHistoryId>? notesHistoryIds,
    @JsonKey(name: 'user_name') String? userName,
    int? id,
    @JsonKey(name: 'product_code') String? productCode,
    @JsonKey(name: 'history_ids') List<HistoryId>? historyIds,
    @JsonKey(name: 'maintenance_ids') List<MaintenanceId>? maintenanceIds,
    @JsonKey(name: 'product_name') String? productName,
    @JsonKey(name: 'po_date') String? poDate,
    @JsonKey(name: 'merk_id') List<dynamic>? merkId,
    String? kondisi,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'po_number') String? poNumber,
    @JsonKey(name: 'location_lantai_id') List<dynamic>? locationLantaiId,
  });
}

/// @nodoc
class __$$DatumImplCopyWithImpl<$Res>
    extends _$DatumCopyWithImpl<$Res, _$DatumImpl>
    implements _$$DatumImplCopyWith<$Res> {
  __$$DatumImplCopyWithImpl(
    _$DatumImpl _value,
    $Res Function(_$DatumImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationGedungId = freezed,
    Object? locationName = freezed,
    Object? lifetime = freezed,
    Object? userHistoryIds = freezed,
    Object? poAmount = freezed,
    Object? currentAccumulatedDepreciation = freezed,
    Object? residualValue = freezed,
    Object? pastImageUrl = freezed,
    Object? assetLocationId = freezed,
    Object? currentDepreciableAmount = freezed,
    Object? notes = freezed,
    Object? depreciationAmountPerMonth = freezed,
    Object? categoryId = freezed,
    Object? notesHistoryIds = freezed,
    Object? userName = freezed,
    Object? id = freezed,
    Object? productCode = freezed,
    Object? historyIds = freezed,
    Object? maintenanceIds = freezed,
    Object? productName = freezed,
    Object? poDate = freezed,
    Object? merkId = freezed,
    Object? kondisi = freezed,
    Object? imageUrl = freezed,
    Object? poNumber = freezed,
    Object? locationLantaiId = freezed,
  }) {
    return _then(
      _$DatumImpl(
        locationGedungId: freezed == locationGedungId
            ? _value._locationGedungId
            : locationGedungId // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        locationName: freezed == locationName
            ? _value.locationName
            : locationName // ignore: cast_nullable_to_non_nullable
                  as String?,
        lifetime: freezed == lifetime
            ? _value.lifetime
            : lifetime // ignore: cast_nullable_to_non_nullable
                  as int?,
        userHistoryIds: freezed == userHistoryIds
            ? _value._userHistoryIds
            : userHistoryIds // ignore: cast_nullable_to_non_nullable
                  as List<UserHistoryId>?,
        poAmount: freezed == poAmount
            ? _value.poAmount
            : poAmount // ignore: cast_nullable_to_non_nullable
                  as double?,
        currentAccumulatedDepreciation:
            freezed == currentAccumulatedDepreciation
            ? _value.currentAccumulatedDepreciation
            : currentAccumulatedDepreciation // ignore: cast_nullable_to_non_nullable
                  as double?,
        residualValue: freezed == residualValue
            ? _value.residualValue
            : residualValue // ignore: cast_nullable_to_non_nullable
                  as double?,
        pastImageUrl: freezed == pastImageUrl
            ? _value.pastImageUrl
            : pastImageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        assetLocationId: freezed == assetLocationId
            ? _value._assetLocationId
            : assetLocationId // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        currentDepreciableAmount: freezed == currentDepreciableAmount
            ? _value.currentDepreciableAmount
            : currentDepreciableAmount // ignore: cast_nullable_to_non_nullable
                  as double?,
        notes: freezed == notes
            ? _value.notes
            : notes // ignore: cast_nullable_to_non_nullable
                  as String?,
        depreciationAmountPerMonth: freezed == depreciationAmountPerMonth
            ? _value.depreciationAmountPerMonth
            : depreciationAmountPerMonth // ignore: cast_nullable_to_non_nullable
                  as double?,
        categoryId: freezed == categoryId
            ? _value._categoryId
            : categoryId // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        notesHistoryIds: freezed == notesHistoryIds
            ? _value._notesHistoryIds
            : notesHistoryIds // ignore: cast_nullable_to_non_nullable
                  as List<NotesHistoryId>?,
        userName: freezed == userName
            ? _value.userName
            : userName // ignore: cast_nullable_to_non_nullable
                  as String?,
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        productCode: freezed == productCode
            ? _value.productCode
            : productCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        historyIds: freezed == historyIds
            ? _value._historyIds
            : historyIds // ignore: cast_nullable_to_non_nullable
                  as List<HistoryId>?,
        maintenanceIds: freezed == maintenanceIds
            ? _value._maintenanceIds
            : maintenanceIds // ignore: cast_nullable_to_non_nullable
                  as List<MaintenanceId>?,
        productName: freezed == productName
            ? _value.productName
            : productName // ignore: cast_nullable_to_non_nullable
                  as String?,
        poDate: freezed == poDate
            ? _value.poDate
            : poDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        merkId: freezed == merkId
            ? _value._merkId
            : merkId // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        kondisi: freezed == kondisi
            ? _value.kondisi
            : kondisi // ignore: cast_nullable_to_non_nullable
                  as String?,
        imageUrl: freezed == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        poNumber: freezed == poNumber
            ? _value.poNumber
            : poNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        locationLantaiId: freezed == locationLantaiId
            ? _value._locationLantaiId
            : locationLantaiId // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumImpl implements _Datum {
  _$DatumImpl({
    @JsonKey(name: 'location_gedung_id') final List<dynamic>? locationGedungId,
    @JsonKey(name: 'location_name') this.locationName,
    this.lifetime,
    @JsonKey(name: 'user_history_ids')
    final List<UserHistoryId>? userHistoryIds,
    @JsonKey(name: 'po_amount') this.poAmount,
    @JsonKey(name: 'current_accumulated_depreciation')
    this.currentAccumulatedDepreciation,
    @JsonKey(name: 'residual_value') this.residualValue,
    @JsonKey(name: 'past_image_url') this.pastImageUrl,
    @JsonKey(name: 'asset_location_id') final List<dynamic>? assetLocationId,
    @JsonKey(name: 'current_depreciable_amount') this.currentDepreciableAmount,
    this.notes,
    @JsonKey(name: 'depreciation_amount_per_month')
    this.depreciationAmountPerMonth,
    @JsonKey(name: 'category_id') final List<dynamic>? categoryId,
    @JsonKey(name: 'notes_history_ids')
    final List<NotesHistoryId>? notesHistoryIds,
    @JsonKey(name: 'user_name') this.userName,
    this.id,
    @JsonKey(name: 'product_code') this.productCode,
    @JsonKey(name: 'history_ids') final List<HistoryId>? historyIds,
    @JsonKey(name: 'maintenance_ids') final List<MaintenanceId>? maintenanceIds,
    @JsonKey(name: 'product_name') this.productName,
    @JsonKey(name: 'po_date') this.poDate,
    @JsonKey(name: 'merk_id') final List<dynamic>? merkId,
    this.kondisi,
    @JsonKey(name: 'image_url') this.imageUrl,
    @JsonKey(name: 'po_number') this.poNumber,
    @JsonKey(name: 'location_lantai_id') final List<dynamic>? locationLantaiId,
  }) : _locationGedungId = locationGedungId,
       _userHistoryIds = userHistoryIds,
       _assetLocationId = assetLocationId,
       _categoryId = categoryId,
       _notesHistoryIds = notesHistoryIds,
       _historyIds = historyIds,
       _maintenanceIds = maintenanceIds,
       _merkId = merkId,
       _locationLantaiId = locationLantaiId;

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  final List<dynamic>? _locationGedungId;
  @override
  @JsonKey(name: 'location_gedung_id')
  List<dynamic>? get locationGedungId {
    final value = _locationGedungId;
    if (value == null) return null;
    if (_locationGedungId is EqualUnmodifiableListView)
      return _locationGedungId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'location_name')
  final String? locationName;
  @override
  final int? lifetime;
  final List<UserHistoryId>? _userHistoryIds;
  @override
  @JsonKey(name: 'user_history_ids')
  List<UserHistoryId>? get userHistoryIds {
    final value = _userHistoryIds;
    if (value == null) return null;
    if (_userHistoryIds is EqualUnmodifiableListView) return _userHistoryIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'po_amount')
  final double? poAmount;
  @override
  @JsonKey(name: 'current_accumulated_depreciation')
  final double? currentAccumulatedDepreciation;
  @override
  @JsonKey(name: 'residual_value')
  final double? residualValue;
  @override
  @JsonKey(name: 'past_image_url')
  final String? pastImageUrl;
  final List<dynamic>? _assetLocationId;
  @override
  @JsonKey(name: 'asset_location_id')
  List<dynamic>? get assetLocationId {
    final value = _assetLocationId;
    if (value == null) return null;
    if (_assetLocationId is EqualUnmodifiableListView) return _assetLocationId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'current_depreciable_amount')
  final double? currentDepreciableAmount;
  @override
  final String? notes;
  @override
  @JsonKey(name: 'depreciation_amount_per_month')
  final double? depreciationAmountPerMonth;
  final List<dynamic>? _categoryId;
  @override
  @JsonKey(name: 'category_id')
  List<dynamic>? get categoryId {
    final value = _categoryId;
    if (value == null) return null;
    if (_categoryId is EqualUnmodifiableListView) return _categoryId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<NotesHistoryId>? _notesHistoryIds;
  @override
  @JsonKey(name: 'notes_history_ids')
  List<NotesHistoryId>? get notesHistoryIds {
    final value = _notesHistoryIds;
    if (value == null) return null;
    if (_notesHistoryIds is EqualUnmodifiableListView) return _notesHistoryIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'user_name')
  final String? userName;
  @override
  final int? id;
  @override
  @JsonKey(name: 'product_code')
  final String? productCode;
  final List<HistoryId>? _historyIds;
  @override
  @JsonKey(name: 'history_ids')
  List<HistoryId>? get historyIds {
    final value = _historyIds;
    if (value == null) return null;
    if (_historyIds is EqualUnmodifiableListView) return _historyIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MaintenanceId>? _maintenanceIds;
  @override
  @JsonKey(name: 'maintenance_ids')
  List<MaintenanceId>? get maintenanceIds {
    final value = _maintenanceIds;
    if (value == null) return null;
    if (_maintenanceIds is EqualUnmodifiableListView) return _maintenanceIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'product_name')
  final String? productName;
  @override
  @JsonKey(name: 'po_date')
  final String? poDate;
  final List<dynamic>? _merkId;
  @override
  @JsonKey(name: 'merk_id')
  List<dynamic>? get merkId {
    final value = _merkId;
    if (value == null) return null;
    if (_merkId is EqualUnmodifiableListView) return _merkId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? kondisi;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @override
  @JsonKey(name: 'po_number')
  final String? poNumber;
  final List<dynamic>? _locationLantaiId;
  @override
  @JsonKey(name: 'location_lantai_id')
  List<dynamic>? get locationLantaiId {
    final value = _locationLantaiId;
    if (value == null) return null;
    if (_locationLantaiId is EqualUnmodifiableListView)
      return _locationLantaiId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Datum(locationGedungId: $locationGedungId, locationName: $locationName, lifetime: $lifetime, userHistoryIds: $userHistoryIds, poAmount: $poAmount, currentAccumulatedDepreciation: $currentAccumulatedDepreciation, residualValue: $residualValue, pastImageUrl: $pastImageUrl, assetLocationId: $assetLocationId, currentDepreciableAmount: $currentDepreciableAmount, notes: $notes, depreciationAmountPerMonth: $depreciationAmountPerMonth, categoryId: $categoryId, notesHistoryIds: $notesHistoryIds, userName: $userName, id: $id, productCode: $productCode, historyIds: $historyIds, maintenanceIds: $maintenanceIds, productName: $productName, poDate: $poDate, merkId: $merkId, kondisi: $kondisi, imageUrl: $imageUrl, poNumber: $poNumber, locationLantaiId: $locationLantaiId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            const DeepCollectionEquality().equals(
              other._locationGedungId,
              _locationGedungId,
            ) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.lifetime, lifetime) ||
                other.lifetime == lifetime) &&
            const DeepCollectionEquality().equals(
              other._userHistoryIds,
              _userHistoryIds,
            ) &&
            (identical(other.poAmount, poAmount) ||
                other.poAmount == poAmount) &&
            (identical(
                  other.currentAccumulatedDepreciation,
                  currentAccumulatedDepreciation,
                ) ||
                other.currentAccumulatedDepreciation ==
                    currentAccumulatedDepreciation) &&
            (identical(other.residualValue, residualValue) ||
                other.residualValue == residualValue) &&
            (identical(other.pastImageUrl, pastImageUrl) ||
                other.pastImageUrl == pastImageUrl) &&
            const DeepCollectionEquality().equals(
              other._assetLocationId,
              _assetLocationId,
            ) &&
            (identical(
                  other.currentDepreciableAmount,
                  currentDepreciableAmount,
                ) ||
                other.currentDepreciableAmount == currentDepreciableAmount) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(
                  other.depreciationAmountPerMonth,
                  depreciationAmountPerMonth,
                ) ||
                other.depreciationAmountPerMonth ==
                    depreciationAmountPerMonth) &&
            const DeepCollectionEquality().equals(
              other._categoryId,
              _categoryId,
            ) &&
            const DeepCollectionEquality().equals(
              other._notesHistoryIds,
              _notesHistoryIds,
            ) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productCode, productCode) ||
                other.productCode == productCode) &&
            const DeepCollectionEquality().equals(
              other._historyIds,
              _historyIds,
            ) &&
            const DeepCollectionEquality().equals(
              other._maintenanceIds,
              _maintenanceIds,
            ) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.poDate, poDate) || other.poDate == poDate) &&
            const DeepCollectionEquality().equals(other._merkId, _merkId) &&
            (identical(other.kondisi, kondisi) || other.kondisi == kondisi) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.poNumber, poNumber) ||
                other.poNumber == poNumber) &&
            const DeepCollectionEquality().equals(
              other._locationLantaiId,
              _locationLantaiId,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    const DeepCollectionEquality().hash(_locationGedungId),
    locationName,
    lifetime,
    const DeepCollectionEquality().hash(_userHistoryIds),
    poAmount,
    currentAccumulatedDepreciation,
    residualValue,
    pastImageUrl,
    const DeepCollectionEquality().hash(_assetLocationId),
    currentDepreciableAmount,
    notes,
    depreciationAmountPerMonth,
    const DeepCollectionEquality().hash(_categoryId),
    const DeepCollectionEquality().hash(_notesHistoryIds),
    userName,
    id,
    productCode,
    const DeepCollectionEquality().hash(_historyIds),
    const DeepCollectionEquality().hash(_maintenanceIds),
    productName,
    poDate,
    const DeepCollectionEquality().hash(_merkId),
    kondisi,
    imageUrl,
    poNumber,
    const DeepCollectionEquality().hash(_locationLantaiId),
  ]);

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      __$$DatumImplCopyWithImpl<_$DatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumImplToJson(this);
  }
}

abstract class _Datum implements Datum {
  factory _Datum({
    @JsonKey(name: 'location_gedung_id') final List<dynamic>? locationGedungId,
    @JsonKey(name: 'location_name') final String? locationName,
    final int? lifetime,
    @JsonKey(name: 'user_history_ids')
    final List<UserHistoryId>? userHistoryIds,
    @JsonKey(name: 'po_amount') final double? poAmount,
    @JsonKey(name: 'current_accumulated_depreciation')
    final double? currentAccumulatedDepreciation,
    @JsonKey(name: 'residual_value') final double? residualValue,
    @JsonKey(name: 'past_image_url') final String? pastImageUrl,
    @JsonKey(name: 'asset_location_id') final List<dynamic>? assetLocationId,
    @JsonKey(name: 'current_depreciable_amount')
    final double? currentDepreciableAmount,
    final String? notes,
    @JsonKey(name: 'depreciation_amount_per_month')
    final double? depreciationAmountPerMonth,
    @JsonKey(name: 'category_id') final List<dynamic>? categoryId,
    @JsonKey(name: 'notes_history_ids')
    final List<NotesHistoryId>? notesHistoryIds,
    @JsonKey(name: 'user_name') final String? userName,
    final int? id,
    @JsonKey(name: 'product_code') final String? productCode,
    @JsonKey(name: 'history_ids') final List<HistoryId>? historyIds,
    @JsonKey(name: 'maintenance_ids') final List<MaintenanceId>? maintenanceIds,
    @JsonKey(name: 'product_name') final String? productName,
    @JsonKey(name: 'po_date') final String? poDate,
    @JsonKey(name: 'merk_id') final List<dynamic>? merkId,
    final String? kondisi,
    @JsonKey(name: 'image_url') final String? imageUrl,
    @JsonKey(name: 'po_number') final String? poNumber,
    @JsonKey(name: 'location_lantai_id') final List<dynamic>? locationLantaiId,
  }) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  @JsonKey(name: 'location_gedung_id')
  List<dynamic>? get locationGedungId;
  @override
  @JsonKey(name: 'location_name')
  String? get locationName;
  @override
  int? get lifetime;
  @override
  @JsonKey(name: 'user_history_ids')
  List<UserHistoryId>? get userHistoryIds;
  @override
  @JsonKey(name: 'po_amount')
  double? get poAmount;
  @override
  @JsonKey(name: 'current_accumulated_depreciation')
  double? get currentAccumulatedDepreciation;
  @override
  @JsonKey(name: 'residual_value')
  double? get residualValue;
  @override
  @JsonKey(name: 'past_image_url')
  String? get pastImageUrl;
  @override
  @JsonKey(name: 'asset_location_id')
  List<dynamic>? get assetLocationId;
  @override
  @JsonKey(name: 'current_depreciable_amount')
  double? get currentDepreciableAmount;
  @override
  String? get notes;
  @override
  @JsonKey(name: 'depreciation_amount_per_month')
  double? get depreciationAmountPerMonth;
  @override
  @JsonKey(name: 'category_id')
  List<dynamic>? get categoryId;
  @override
  @JsonKey(name: 'notes_history_ids')
  List<NotesHistoryId>? get notesHistoryIds;
  @override
  @JsonKey(name: 'user_name')
  String? get userName;
  @override
  int? get id;
  @override
  @JsonKey(name: 'product_code')
  String? get productCode;
  @override
  @JsonKey(name: 'history_ids')
  List<HistoryId>? get historyIds;
  @override
  @JsonKey(name: 'maintenance_ids')
  List<MaintenanceId>? get maintenanceIds;
  @override
  @JsonKey(name: 'product_name')
  String? get productName;
  @override
  @JsonKey(name: 'po_date')
  String? get poDate;
  @override
  @JsonKey(name: 'merk_id')
  List<dynamic>? get merkId;
  @override
  String? get kondisi;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  @JsonKey(name: 'po_number')
  String? get poNumber;
  @override
  @JsonKey(name: 'location_lantai_id')
  List<dynamic>? get locationLantaiId;

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
