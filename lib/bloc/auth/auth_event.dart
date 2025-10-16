part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;
  const factory AuthEvent.login(Map<String, String> data) = _Login;
  const factory AuthEvent.authDetail() = _AuthDetail;
  const factory AuthEvent.checkSignInStatus() = _CheckSignInStatus;
  const factory AuthEvent.logOut() = _LogOut;
}
