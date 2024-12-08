import 'package:bloc/bloc.dart';
import 'package:todo_bloc/bloc/todo_list/todo_list.dart';
import 'package:todo_bloc/model/model.dart';

part 'todo_list_event.dart';

class TodoListBloc extends Bloc<TodoListEvent, TodoListState> {
  TodoListBloc() : super(TodoListState.init()) {
    on<AddTodoEvent>(_addTodo);
    on<EditTodoEvent>(_editTodo);
    on<ToggleTodoEvent>(_toggleTodo);
    on<DeleteTodoEvent>(_deleteTodo);
  }

  void _addTodo(AddTodoEvent event, Emitter<TodoListState> emit) {
    final Todo newTodo = Todo.init(desc: event.desc);
    final List<Todo> newTodoList = [...state.todoList, newTodo];
    emit(state.copyWith(todoList: newTodoList));
  }

  _editTodo(EditTodoEvent event, Emitter<TodoListState> emit) {
    final updatedTodoList = state.todoList
        .map((todo) =>
            todo.id == event.id ? todo.copyWith(desc: event.desc) : todo)
        .toList();

    emit(state.copyWith(todoList: updatedTodoList));
  }

  _toggleTodo(ToggleTodoEvent event, Emitter<TodoListState> emit) {
    final updatedTodoList = state.todoList
        .map((todo) => todo.id == event.id
            ? todo.copyWith(completed: !todo.completed)
            : todo)
        .toList();
    emit(state.copyWith(todoList: updatedTodoList));
  }

  _deleteTodo(DeleteTodoEvent event, Emitter<TodoListState> emit) {
    final updatedTodoList =
        state.todoList.where((todo) => todo.id != event.id).toList();
    emit(state.copyWith(todoList: updatedTodoList));
  }
}
