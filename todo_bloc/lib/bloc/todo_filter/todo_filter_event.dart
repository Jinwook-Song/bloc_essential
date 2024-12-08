part of 'todo_filter_bloc.dart';

sealed class TodoFilterEvent {}

class ChangeTodoFilterEvent extends TodoFilterEvent {
  final Filter filter;

  ChangeTodoFilterEvent({required this.filter});
}
