part of 'signup_bloc.dart';

sealed class SignupEvent {}

class SignupRequestEvent extends SignupEvent {
  final String name;
  final String email;
  final String password;

  SignupRequestEvent({
    required this.name,
    required this.email,
    required this.password,
  });
}
