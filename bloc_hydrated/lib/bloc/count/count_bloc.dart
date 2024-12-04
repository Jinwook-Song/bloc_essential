import 'package:bloc_hydrated/bloc/count/count_state.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:meta/meta.dart';

part 'count_event.dart';

class CountBloc extends HydratedBloc<CountEvent, CountState> {
  CountBloc() : super(const CountState()) {
    on<DecrementEvent>((event, emit) {
      emit(state.copyWith(count: state.count - 1));
    });
    on<IncrementEvent>((event, emit) {
      emit(state.copyWith(count: state.count + 1));
    });
  }

  @override
  CountState? fromJson(Map<String, dynamic> json) {
    return CountState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(CountState state) {
    return state.toJson();
  }
}
