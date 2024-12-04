import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:event_transformer/bloc/bloc/count_state.dart';
import 'package:meta/meta.dart';

part 'count_event.dart';

class CountBloc extends Bloc<CountEvent, CountState> {
  CountBloc() : super(const CountState()) {
    // on<IncrementEvent>(
    //   _increment,
    //   transformer: sequential(),
    // );
    // on<DecrementEvent>(
    //   _decrement,
    //   transformer: sequential(),
    //   // transformer: droppable(),
    //   // transformer: restartable(),
    // );

    // Event에 대해 동시에 적용
    on<CountEvent>(
      (event, emit) async {
        switch (event) {
          case IncrementEvent():
            await _increment(event, emit);
            break;
          case DecrementEvent():
            await _decrement(event, emit);
            break;
          default:
            throw UnimplementedError();
        }
      },
      transformer: sequential(),
    );
  }
  Future<void> _increment(
      IncrementEvent event, Emitter<CountState> emit) async {
    await Future.delayed(const Duration(seconds: 4));
    emit(state.copyWith(count: state.count + 1));
  }

  Future<void> _decrement(
      DecrementEvent event, Emitter<CountState> emit) async {
    await Future.delayed(const Duration(seconds: 2));
    emit(state.copyWith(count: state.count - 1));
  }
}
