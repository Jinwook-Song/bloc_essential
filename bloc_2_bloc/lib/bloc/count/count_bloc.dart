import 'package:bloc/bloc.dart';
import 'package:bloc_2_bloc/bloc/count/count_state.dart';
import 'package:meta/meta.dart';

part 'count_event.dart';

class CountBloc extends Bloc<CountEvent, CountState> {
  CountBloc() : super(const CountState()) {
    on<CountEvent>((event, emit) {});
  }
}
