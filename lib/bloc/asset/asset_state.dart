part of 'asset_bloc.dart';

@freezed
class AssetState with _$AssetState {
  const factory AssetState.initial() = _Initial;
  const factory AssetState.loading() = _Loading;
  const factory AssetState.error(String errorMessage) = _Error;
  const factory AssetState.success(String message) = _Success;
  const factory AssetState.successDuplicate(AssetModel asset) =
      _SuccessDuplicate;
  const factory AssetState.successWithData(AssetModel asset) = _SuccessWithData;
}
