part of 'filtered_todo_list_bloc.dart';

sealed class FilteredTodoListEvent {}

class CalcFilteredTodoListEvent extends FilteredTodoListEvent {
  final List<Todo> filteredTodoList;

  CalcFilteredTodoListEvent({required this.filteredTodoList});
}
