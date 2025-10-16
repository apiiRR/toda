part of 'barcode_bloc.dart';

@freezed
class BarcodeState with _$BarcodeState {
  const factory BarcodeState.initial() = _Initial;
  const factory BarcodeState.loading() = _Loading;
  const factory BarcodeState.error(String errorMessage) = _Error;
  const factory BarcodeState.success(String message) = _Success;
  const factory BarcodeState.successWithDataAsset(AssetModel asset) =
      _SuccessWithDataAsset;
  const factory BarcodeState.successWithDataLocation(LocationModel location) =
      _SuccessWithDataLocation;
}
