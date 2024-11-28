import 'package:bloc/bloc.dart';
import 'package:counter_cubit/cubits/counter/counter_state.dart';

abstract class ICounterCubit {
  void increament();
  void decrement();
}

class CounterCubit extends Cubit<CounterState> implements ICounterCubit {
  CounterCubit() : super(const CounterState(count: 0));

  @override
  void decrement() {
    emit(state.copyWith(count: state.count - 1));
  }

  @override
  void increament() {
    emit(state.copyWith(count: state.count + 1));
  }
}
