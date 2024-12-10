part of 'signin_bloc.dart';

sealed class SigninEvent {}

class SigninRequestEvent extends SigninEvent {
  final String email;
  final String password;

  SigninRequestEvent({
    required this.email,
    required this.password,
  });
}
