import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:todo_bloc/bloc/bloc.dart';
import 'package:todo_bloc/model/model.dart';

part 'filtered_todo_list_event.dart';

class FilteredTodoListBloc
    extends Bloc<FilteredTodoListEvent, FilteredTodoListState> {
  final List<Todo> initialTodoList;
  final TodoFilterBloc todoFilterBloc;
  final TodoSearchBloc todoSearchBloc;
  final TodoListBloc todoListBloc;

  late final StreamSubscription filterSubscription;
  late final StreamSubscription searchSubscription;
  late final StreamSubscription todoListSubscription;

  FilteredTodoListBloc({
    required this.initialTodoList,
    required this.todoFilterBloc,
    required this.todoSearchBloc,
    required this.todoListBloc,
  }) : super(FilteredTodoListState()) {
    filterSubscription =
        todoFilterBloc.stream.listen((_) => _setFilteredTodos());
    searchSubscription =
        todoSearchBloc.stream.listen((_) => _setFilteredTodos());
    todoListSubscription =
        todoListBloc.stream.listen((_) => _setFilteredTodos());
  }

  void _setFilteredTodos() {
    List<Todo> filteredTodoList;

    switch (todoFilterBloc.state.filter) {
      case Filter.active:
        filteredTodoList = todoListBloc.state.todoList
            .where((todo) => !todo.completed)
            .toList();
        break;
      case Filter.completed:
        filteredTodoList = todoListBloc.state.todoList
            .where((todo) => todo.completed)
            .toList();
      case Filter.all:
      default:
        filteredTodoList = todoListBloc.state.todoList;
        break;
    }

    if (todoSearchBloc.state.term.isNotEmpty) {
      filteredTodoList = filteredTodoList
          .where((todo) =>
              todo.desc.toLowerCase().contains(todoSearchBloc.state.term))
          .toList();
    }

    add(CalcFilteredTodoListEvent(filteredTodoList: filteredTodoList));
  }

  @override
  Future<void> close() {
    filterSubscription.cancel();
    searchSubscription.cancel();
    todoListSubscription.cancel();
    return super.close();
  }
}
