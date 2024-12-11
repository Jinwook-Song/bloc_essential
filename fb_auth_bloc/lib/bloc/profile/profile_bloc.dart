import 'package:bloc/bloc.dart';
import 'package:fb_auth_bloc/bloc/bloc.dart';
import 'package:fb_auth_bloc/model/model.dart';
import 'package:fb_auth_bloc/repository/repository.dart';

part 'profile_event.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository _profileRepository;
  ProfileBloc(this._profileRepository) : super(ProfileState.initial()) {
    on<GetProfileEvent>(_getProfile);
  }

  _getProfile(GetProfileEvent event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(status: ProfileStatus.loading));

    try {
      final user = await _profileRepository.getProfile(uid: event.uid);
      emit(state.copyWith(status: ProfileStatus.success, user: user));
    } on CustomError catch (e) {
      emit(state.copyWith(
        status: ProfileStatus.failure,
        error: e,
      ));
    }
  }
}
