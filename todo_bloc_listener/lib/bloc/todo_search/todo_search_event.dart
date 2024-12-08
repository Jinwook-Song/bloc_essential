part of 'todo_search_bloc.dart';

sealed class TodoSearchEvent {}

class SetSearchTermEvent extends TodoSearchEvent {
  final String searchTerm;

  SetSearchTermEvent({required this.searchTerm});
}
