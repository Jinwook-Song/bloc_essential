import 'package:bloc/bloc.dart';
import 'package:weather_bloc_listener/bloc/bloc.dart';

part 'theme_event.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState()) {
    on<SetThemeEvent>((event, emit) {
      emit(state.copyWith(appTheme: event.appTheme));
    });
  }
}
