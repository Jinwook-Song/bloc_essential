import 'package:bloc_hydrated/bloc/theme/theme_state.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:meta/meta.dart';

part 'theme_event.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> with HydratedMixin {
  ThemeBloc() : super(const ThemeState()) {
    hydrate();

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

  @override
  ThemeState? fromJson(Map<String, dynamic> json) {
    return ThemeState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(ThemeState state) {
    return state.toJson();
  }
}
