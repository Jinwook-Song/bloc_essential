import 'package:bloc/bloc.dart';
import 'package:bloc_hydrated/bloc/theme/theme_state.dart';
import 'package:meta/meta.dart';

part 'theme_event.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeState()) {
    on<ToggleThemeEvent>((event, emit) {
      final AppTheme currentTheme = state.appTheme;
      switch (currentTheme) {
        case AppTheme.light:
          emit(state.copyWith(appTheme: AppTheme.dark));
        case AppTheme.dark:
          emit(state.copyWith(appTheme: AppTheme.light));
      }
    });
  }
}
