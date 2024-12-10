import 'package:bloc/bloc.dart';
import 'package:fb_auth_bloc/bloc/bloc.dart';
import 'package:fb_auth_bloc/model/model.dart';
import 'package:fb_auth_bloc/repository/repository.dart';

part 'signup_event.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final AuthRepository _authRepository;
  SignupBloc(this._authRepository) : super(SignupState.initial()) {
    on<SignupRequestEvent>(_signup);
  }

  Future<void> _signup(
    SignupRequestEvent event,
    Emitter<SignupState> emit,
  ) async {
    emit(state.copyWith(status: SignupStatus.loading));
    try {
      await _authRepository.signup(
        name: event.name,
        email: event.email,
        password: event.password,
      );
      emit(state.copyWith(status: SignupStatus.success));
    } on CustomError catch (e) {
      emit(state.copyWith(
        status: SignupStatus.failure,
        customError: e,
      ));
    }
  }
}
