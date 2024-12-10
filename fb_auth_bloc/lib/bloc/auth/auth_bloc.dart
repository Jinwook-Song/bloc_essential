import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fb_auth_bloc/bloc/bloc.dart';
import 'package:fb_auth_bloc/repository/repository.dart';
import 'package:firebase_auth/firebase_auth.dart' as fbAuth;

part 'auth_event.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  late final StreamSubscription _authSubscription;
  final AuthRepository _authRepository;

  AuthBloc(this._authRepository) : super(AuthState.unknwon()) {
    _authSubscription = _authRepository.user.listen(
      (user) => add(AuthStateChangedEvent(user)),
    );

    on<AuthStateChangedEvent>(_onAuthStateChangedEvent);
    on<SignoutRequestEvent>((event, emit) async {
      await _authRepository.signout();
      emit(state.copyWith(
        authStatus: AuthStatus.unauthenticated,
        user: null,
      ));
    });
  }

  _onAuthStateChangedEvent(
      AuthStateChangedEvent event, Emitter<AuthState> emit) {
    if (event.user == null) {
      emit(state.copyWith(
        authStatus: AuthStatus.unauthenticated,
        user: null,
      ));
    } else {
      emit(state.copyWith(
        authStatus: AuthStatus.authenticated,
        user: event.user,
      ));
    }
  }

  @override
  Future<void> close() {
    _authSubscription.cancel();
    return super.close();
  }
}
