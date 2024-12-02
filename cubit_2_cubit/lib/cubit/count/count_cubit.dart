import 'package:bloc/bloc.dart';
import 'package:cubit_2_cubit/cubit/count/count_state.dart';

class CountCubit extends Cubit<CountState> {
  CountCubit() : super(const CountState());

  void changeCount(int value) {
    emit(state.copyWith(count: state.count + value));
  }
}
