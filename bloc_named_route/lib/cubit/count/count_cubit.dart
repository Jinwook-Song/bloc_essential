import 'package:bloc/bloc.dart';
import 'package:bloc_named_route/cubit/count/count_state.dart';

class CountCubit extends Cubit<CountState> {
  CountCubit() : super(const CountState());

  void increment() {
    emit(state.copyWith(count: state.count + 1));
  }
}
