import 'package:bloc/bloc.dart';
import 'package:bloc_hydrated/bloc/count/count_state.dart';
import 'package:meta/meta.dart';

part 'count_event.dart';

class CountBloc extends Bloc<CountEvent, CountState> {
  CountBloc() : super(const CountState()) {
    on<DecrementEvent>((event, emit) {
      emit(state.copyWith(count: state.count - 1));
    });
    on<IncrementEvent>((event, emit) {
      emit(state.copyWith(count: state.count + 1));
    });
  }
}
