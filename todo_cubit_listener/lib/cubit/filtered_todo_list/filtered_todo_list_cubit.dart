import 'package:bloc/bloc.dart';
import 'package:todo_cubit_listener/cubit/filtered_todo_list/filtered_todo_list_state.dart';
import 'package:todo_cubit_listener/model/model.dart';

class FilteredTodoListCubit extends Cubit<FilteredTodoListState> {
  final List<Todo> initialTodoList;

  FilteredTodoListCubit({
    required this.initialTodoList,
  }) : super(FilteredTodoListState(filteredTodoList: initialTodoList));

  void setFilteredTodos(
      {required Filter todoFilter,
      required List<Todo> todoList,
      required String searchTerm}) {
    List<Todo> filteredTodoList;

    switch (todoFilter) {
      case Filter.active:
        filteredTodoList = todoList.where((todo) => !todo.completed).toList();
        break;
      case Filter.completed:
        filteredTodoList = todoList.where((todo) => todo.completed).toList();
      case Filter.all:
      default:
        filteredTodoList = todoList;
        break;
    }

    if (searchTerm.isNotEmpty) {
      filteredTodoList = filteredTodoList
          .where((todo) => todo.desc.toLowerCase().contains(searchTerm))
          .toList();
    }

    emit(state.copyWith(filteredTodoList: filteredTodoList));
  }
}
