part of 'profile_bloc.dart';

sealed class ProfileEvent {}

class GetProfileEvent extends ProfileEvent {
  final String uid;

  GetProfileEvent(this.uid);
}
