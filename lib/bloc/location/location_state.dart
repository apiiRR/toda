part of 'location_bloc.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState.initial() = _Initial;
  const factory LocationState.loading() = _Loading;
  const factory LocationState.error(String errorMessage) = _Error;
  const factory LocationState.success(String message) = _Success;
  const factory LocationState.successWithData(LocationModel location) =
      _SuccessWithData;
}
