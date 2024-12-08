part of 'active_todo_count_bloc.dart';

sealed class ActiveTodoCountEvent {}

class CalcActiveTodoCountEvent extends ActiveTodoCountEvent {
  final int activeTodoCount;

  CalcActiveTodoCountEvent({required this.activeTodoCount});
}
