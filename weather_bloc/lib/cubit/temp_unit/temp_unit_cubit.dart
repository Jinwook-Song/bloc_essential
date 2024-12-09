import 'package:bloc/bloc.dart';
import 'package:weather_bloc/cubit/cubit.dart';

class TempUnitCubit extends Cubit<TempUnitState> {
  TempUnitCubit() : super(TempUnitState());

  void toggleTempUnit() {
    emit(
      state.copyWith(
        tempUnit: state.tempUnit == TempUnit.celsius
            ? TempUnit.fahrenheit
            : TempUnit.celsius,
      ),
    );
  }
}
