import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fb_auth_bloc/model/model.dart';

part 'signup_state.freezed.dart';
part 'signup_state.g.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState({
    required SignupStatus status,
    required CustomError customError,
  }) = _SignupState;

  factory SignupState.fromJson(Map<String, dynamic> json) =>
      _$SignupStateFromJson(json);

  factory SignupState.initial() {
    return SignupState(
      status: SignupStatus.initial,
      customError: CustomError(),
    );
  }
}

enum SignupStatus {
  initial,
  loading,
  success,
  failure,
}
