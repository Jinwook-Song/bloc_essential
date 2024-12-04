import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:todo_cubit/cubit/active_todo_count/active_todo_count_state.dart';
import 'package:todo_cubit/cubit/todo_list/todo_list.dart';

class ActiveTodoCountCubit extends Cubit<ActiveTodoCountState> {
  final TodoListCubit todoListCubit;
  late final StreamSubscription todoListSubscription;

  ActiveTodoCountCubit({required this.todoListCubit})
      : super(const ActiveTodoCountState()) {
    todoListSubscription =
        todoListCubit.stream.listen((TodoListState todoListState) {
      final int activeTodoCount = todoListState.todoList
          .where((todo) => !todo.completed)
          .toList()
          .length;

      emit(state.copyWith(count: activeTodoCount));
    });
  }

  @override
  Future<void> close() {
    todoListSubscription.cancel();
    return super.close();
  }
}
