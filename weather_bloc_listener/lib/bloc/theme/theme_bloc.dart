import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:weather_bloc_listener/bloc/bloc.dart';
import 'package:weather_bloc_listener/constant/constant.dart';

part 'theme_event.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  late final StreamSubscription _weatherStreamSubscription;

  final WeatherBloc _weatherBloc;
  ThemeBloc(this._weatherBloc) : super(ThemeState()) {
    _weatherStreamSubscription = _weatherBloc.stream.listen(
      (WeatherState event) {
        if (event.weather.main.temp > kIsWarm) {
          add(SetThemeEvent(AppTheme.light));
        } else {
          add(SetThemeEvent(AppTheme.dark));
        }
      },
    );

    on<SetThemeEvent>((event, emit) {
      emit(state.copyWith(appTheme: event.appTheme));
    });
  }

  @override
  Future<void> close() {
    _weatherStreamSubscription.cancel();
    return super.close();
  }
}
