part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.error(String errorMessage) = _Error;
  const factory AuthState.signedIn() = _SignedIn;
  const factory AuthState.signedOut() = _SignedOut;
  const factory AuthState.success() = _Success;
  const factory AuthState.successWithText(String text) = _SuccessWithText;
  const factory AuthState.profile(ProfileModel data) = _Profile;
}
