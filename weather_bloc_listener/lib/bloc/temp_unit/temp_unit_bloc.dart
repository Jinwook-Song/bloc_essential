import 'package:bloc/bloc.dart';
import 'package:weather_bloc_listener/bloc/bloc.dart';

part 'temp_unit_event.dart';

class TempUnitBloc extends Bloc<TempUnitEvent, TempUnitState> {
  TempUnitBloc() : super(TempUnitState()) {
    on<ToggleTempUnitEvent>((event, emit) {
      emit(
        state.copyWith(
          tempUnit: state.tempUnit == TempUnit.celsius
              ? TempUnit.fahrenheit
              : TempUnit.celsius,
        ),
      );
    });
  }
}
