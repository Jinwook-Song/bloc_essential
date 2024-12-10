import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fb_auth_bloc/model/model.dart';

part 'signin_state.freezed.dart';
part 'signin_state.g.dart';

@freezed
class SigninState with _$SigninState {
  const factory SigninState({
    required SigninStatus status,
    required CustomError customError,
  }) = _SigninState;

  factory SigninState.fromJson(Map<String, dynamic> json) =>
      _$SigninStateFromJson(json);

  factory SigninState.initial() {
    return SigninState(
      status: SigninStatus.initial,
      customError: CustomError(),
    );
  }
}

enum SigninStatus {
  initial,
  loading,
  success,
  failure,
}
