import 'package:bloc/bloc.dart';
import 'package:todo_bloc_listener/bloc/bloc.dart';

part 'active_todo_count_event.dart';

class ActiveTodoCountBloc
    extends Bloc<ActiveTodoCountEvent, ActiveTodoCountState> {
  final int initialActiveTodoCount;
  ActiveTodoCountBloc({
    required this.initialActiveTodoCount,
  }) : super(ActiveTodoCountState(count: initialActiveTodoCount)) {
    on<CalcActiveTodoCountEvent>(
      (event, emit) {
        emit(state.copyWith(count: event.activeTodoCount));
      },
    );
  }
}
