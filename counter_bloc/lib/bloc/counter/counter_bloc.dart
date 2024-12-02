import 'package:bloc/bloc.dart';
import 'package:counter_bloc/bloc/counter/counter_state.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<IncreamentCounterEvent>((event, emit) {
      emit(state.copyWith(count: state.count + 1));
    });
    on<DecreamentCounterEvent>(_decreamentCounter);
  }

  _decreamentCounter(DecreamentCounterEvent event, Emitter<CounterState> emit) {
    emit(state.copyWith(count: state.count + -1));
  }
}
