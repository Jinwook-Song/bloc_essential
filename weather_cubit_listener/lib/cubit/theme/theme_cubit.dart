import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:weather_cubit_listener/constant/constant.dart';
import 'package:weather_cubit_listener/cubit/cubit.dart';

class ThemeCubit extends Cubit<ThemeState> {
  late final StreamSubscription _weatherStreamSubscription;

  final WeatherCubit _weatherCubit;

  ThemeCubit(this._weatherCubit) : super(ThemeState()) {
    _weatherStreamSubscription = _weatherCubit.stream.listen(
      (WeatherState weather) {
        final isWarm = weather.weather.main.temp >= kIsWarm;
        if (isWarm) {
          emit(state.copyWith(appTheme: AppTheme.light));
        } else {
          emit(state.copyWith(appTheme: AppTheme.dark));
        }
      },
    );
  }

  @override
  Future<void> close() {
    _weatherStreamSubscription.cancel();
    return super.close();
  }
}
