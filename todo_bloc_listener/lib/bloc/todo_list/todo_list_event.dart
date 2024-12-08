part of 'todo_list_bloc.dart';

sealed class TodoListEvent {}

class AddTodoEvent extends TodoListEvent {
  final String desc;

  AddTodoEvent({required this.desc});
}

class EditTodoEvent extends TodoListEvent {
  final String id;
  final String desc;

  EditTodoEvent({
    required this.id,
    required this.desc,
  });
}

class ToggleTodoEvent extends TodoListEvent {
  final String id;

  ToggleTodoEvent({required this.id});
}

class DeleteTodoEvent extends TodoListEvent {
  final String id;

  DeleteTodoEvent({required this.id});
}
