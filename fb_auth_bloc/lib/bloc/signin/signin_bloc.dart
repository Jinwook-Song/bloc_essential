import 'package:bloc/bloc.dart';
import 'package:fb_auth_bloc/bloc/signin/signin.dart';
import 'package:fb_auth_bloc/model/model.dart';
import 'package:fb_auth_bloc/repository/repository.dart';

part 'signin_event.dart';

class SigninBloc extends Bloc<SigninEvent, SigninState> {
  final AuthRepository _authRepository;
  SigninBloc(this._authRepository) : super(SigninState.initial()) {
    on<SigninRequestEvent>(_signin);
  }

  Future<void> _signin(
    SigninRequestEvent event,
    Emitter<SigninState> emit,
  ) async {
    emit(state.copyWith(status: SigninStatus.loading));
    try {
      await _authRepository.signin(
        email: event.email,
        password: event.password,
      );
      emit(state.copyWith(status: SigninStatus.success));
    } on CustomError catch (e) {
      emit(state.copyWith(
        status: SigninStatus.failure,
        customError: e,
      ));
    }
  }
}
