import 'package:firebase_auth/firebase_auth.dart' as fbAuth;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  @JsonSerializable(explicitToJson: true)
  const factory AuthState({
    required AuthStatus authStatus,
    required fbAuth.User? user,
  }) = _AuthState;

  factory AuthState.unknwon() {
    return AuthState(
      authStatus: AuthStatus.unknwon,
      user: null,
    );
  }
}

enum AuthStatus {
  unknwon,
  authenticated,
  unauthenticated,
}
