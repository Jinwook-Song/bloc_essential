import 'package:fb_auth_bloc/model/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';
part 'profile_state.g.dart';

enum ProfileStatus {
  initial,
  loading,
  success,
  failure,
}

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required ProfileStatus status,
    required User user,
    required CustomError error,
  }) = _ProfileState;

  factory ProfileState.fromJson(Map<String, dynamic> json) =>
      _$ProfileStateFromJson(json);

  factory ProfileState.initial() {
    return ProfileState(
      status: ProfileStatus.initial,
      user: User(),
      error: CustomError(),
    );
  }
}
