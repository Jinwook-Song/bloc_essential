import 'package:bloc/bloc.dart';
import 'package:cubit_2_cubit_listener_listener/cubit/count/count_state.dart';

class CountCubit extends Cubit<CountState> {
  CountCubit() : super(const CountState());

  void changeCount(int incrementSize) {
    emit(state.copyWith(count: state.count + incrementSize));
  }
}
