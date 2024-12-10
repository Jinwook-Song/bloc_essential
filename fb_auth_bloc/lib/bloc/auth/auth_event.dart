part of 'auth_bloc.dart';

sealed class AuthEvent {}

class AuthStateChangedEvent extends AuthEvent {
  final fbAuth.User? user;

  AuthStateChangedEvent(this.user);
}

class SignoutRequestEvent extends AuthEvent {}
