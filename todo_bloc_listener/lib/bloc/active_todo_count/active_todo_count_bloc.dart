import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:todo_bloc_listener/bloc/bloc.dart';
import 'package:todo_bloc_listener/model/model.dart';

part 'active_todo_count_event.dart';

class ActiveTodoCountBloc
    extends Bloc<ActiveTodoCountEvent, ActiveTodoCountState> {
  late final StreamSubscription todoListSubscription;

  final int initialActiveTodoCount;
  final TodoListBloc todoListBloc;
  ActiveTodoCountBloc({
    required this.initialActiveTodoCount,
    required this.todoListBloc,
  }) : super(ActiveTodoCountState(count: initialActiveTodoCount)) {
    todoListSubscription = todoListBloc.stream.listen((todoListState) {
      final int activeTodoCount = todoListState.todoList
          .where((Todo todo) => !todo.completed)
          .toList()
          .length;

      add(CalcActiveTodoCountEvent(activeTodoCount: activeTodoCount));
    });
    on<CalcActiveTodoCountEvent>(
      (event, emit) {
        emit(state.copyWith(count: event.activeTodoCount));
      },
    );
  }

  @override
  Future<void> close() {
    todoListSubscription.cancel();
    return super.close();
  }
}
