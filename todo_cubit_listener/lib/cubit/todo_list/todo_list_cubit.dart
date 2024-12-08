import 'package:bloc/bloc.dart';
import 'package:todo_cubit_listener/cubit/todo_list/todo_list_state.dart';
import 'package:todo_cubit_listener/model/model.dart';

abstract interface class ITodoListCubit {
  /// 새로운 todo 추가
  void addTodo(String desc);

  /// todo의 desc 변경
  void editTodo(String id, String desc);

  /// todo status 변경
  void toggleTodo(String id);

  /// todo 제거
  void deleteTodo(String id);
}

class TodoListCubit extends Cubit<TodoListState> implements ITodoListCubit {
  TodoListCubit() : super(TodoListState.init());

  @override
  void addTodo(String desc) {
    final Todo newTodo = Todo.init(desc: desc);
    final List<Todo> newTodoList = [...state.todoList, newTodo];
    emit(state.copyWith(todoList: newTodoList));
  }

  @override
  editTodo(String id, String desc) {
    final updatedTodoList = state.todoList
        .map((todo) => todo.id == id ? todo.copyWith(desc: desc) : todo)
        .toList();

    print(updatedTodoList);
    emit(state.copyWith(todoList: updatedTodoList));
  }

  @override
  toggleTodo(String id) {
    final updatedTodoList = state.todoList
        .map((todo) =>
            todo.id == id ? todo.copyWith(completed: !todo.completed) : todo)
        .toList();
    emit(state.copyWith(todoList: updatedTodoList));
  }

  @override
  deleteTodo(String id) {
    final updatedTodoList =
        state.todoList.where((todo) => todo.id != id).toList();
    emit(state.copyWith(todoList: updatedTodoList));
  }
}
