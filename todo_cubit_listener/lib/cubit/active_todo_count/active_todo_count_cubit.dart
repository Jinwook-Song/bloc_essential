import 'package:bloc/bloc.dart';
import 'package:todo_cubit_listener/cubit/active_todo_count/active_todo_count_state.dart';

class ActiveTodoCountCubit extends Cubit<ActiveTodoCountState> {
  final int initialActiveTodoCount;

  ActiveTodoCountCubit({
    required this.initialActiveTodoCount,
  }) : super(ActiveTodoCountState(count: initialActiveTodoCount));

  void calcActiveTodoCount(int activeTodoCount) {
    emit(state.copyWith(count: activeTodoCount));
  }
}
