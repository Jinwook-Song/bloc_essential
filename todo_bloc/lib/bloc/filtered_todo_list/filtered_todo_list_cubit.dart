import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:todo_bloc/cubit/filtered_todo_list/filtered_todo_list_state.dart';
import 'package:todo_bloc/cubit/todo_filter/todo_filter_cubit.dart';
import 'package:todo_bloc/cubit/todo_filter/todo_filter_state.dart';
import 'package:todo_bloc/cubit/todo_list/todo_list.dart';
import 'package:todo_bloc/cubit/todo_search/todo_search.dart';
import 'package:todo_bloc/model/model.dart';

class FilteredTodoListCubit extends Cubit<FilteredTodoListState> {
  final List<Todo> initialTodoList;
  final TodoFilterCubit todoFilterCubit;
  final TodoSearchCubit todoSearchCubit;
  final TodoListCubit todoListCubit;

  late final StreamSubscription filterSubscription;
  late final StreamSubscription searchSubscription;
  late final StreamSubscription todoListSubscription;
  FilteredTodoListCubit({
    required this.initialTodoList,
    required this.todoFilterCubit,
    required this.todoSearchCubit,
    required this.todoListCubit,
  }) : super(FilteredTodoListState(filteredTodoList: initialTodoList)) {
    filterSubscription = todoFilterCubit.stream.listen((TodoFilterState event) {
      _setFilteredTodos();
    });
    searchSubscription = todoSearchCubit.stream.listen((TodoSearchState event) {
      _setFilteredTodos();
    });
    todoListSubscription = todoListCubit.stream.listen((TodoListState event) {
      _setFilteredTodos();
    });
  }

  void _setFilteredTodos() {
    List<Todo> filteredTodoList;

    switch (todoFilterCubit.state.filter) {
      case Filter.active:
        filteredTodoList = todoListCubit.state.todoList
            .where((todo) => !todo.completed)
            .toList();
        break;
      case Filter.completed:
        filteredTodoList = todoListCubit.state.todoList
            .where((todo) => todo.completed)
            .toList();
      case Filter.all:
      default:
        filteredTodoList = todoListCubit.state.todoList;
        break;
    }

    if (todoSearchCubit.state.term.isNotEmpty) {
      filteredTodoList = filteredTodoList
          .where((todo) =>
              todo.desc.toLowerCase().contains(todoSearchCubit.state.term))
          .toList();
    }

    emit(state.copyWith(filteredTodoList: filteredTodoList));
  }

  @override
  Future<void> close() {
    filterSubscription.cancel();
    searchSubscription.cancel();
    todoListSubscription.cancel();
    return super.close();
  }
}
