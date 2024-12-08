import 'package:rxdart/rxdart.dart';
import 'package:bloc/bloc.dart';
import 'package:todo_bloc/bloc/todo_search/todo_search.dart';

part 'todo_search_event.dart';

class TodoSearchBloc extends Bloc<TodoSearchEvent, TodoSearchState> {
  TodoSearchBloc() : super(TodoSearchState()) {
    on<SetSearchTermEvent>((event, emit) {
      emit(state.copyWith(term: event.searchTerm));
    }, transformer: _debounce(Duration(milliseconds: 1000)));
  }

  EventTransformer<SetSearchTermEvent> _debounce<SetSearchTermEvent>(
      Duration duration) {
    return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
  }
}
