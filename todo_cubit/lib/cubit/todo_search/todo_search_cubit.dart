import 'package:bloc/bloc.dart';
import 'package:todo_cubit/cubit/todo_search/todo_search.dart';

class TodoSearchCubit extends Cubit<TodoSearchState> {
  TodoSearchCubit() : super(const TodoSearchState());

  void setSearchTerm(String term) {
    emit(state.copyWith(term: term));
  }
}
