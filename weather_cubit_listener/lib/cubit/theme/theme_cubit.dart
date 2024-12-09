import 'package:bloc/bloc.dart';
import 'package:weather_cubit_listener/constant/constant.dart';
import 'package:weather_cubit_listener/cubit/cubit.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState());

  void setTheme(double currTemp) {
    if (currTemp > kIsWarm) {
      emit(state.copyWith(appTheme: AppTheme.light));
    } else {
      emit(state.copyWith(appTheme: AppTheme.dark));
    }
  }
}
