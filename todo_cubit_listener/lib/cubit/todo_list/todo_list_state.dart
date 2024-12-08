import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_cubit_listener/model/model.dart';

part 'todo_list_state.freezed.dart';
part 'todo_list_state.g.dart';

@freezed
class TodoListState with _$TodoListState {
  const factory TodoListState({
    @Default([]) List<Todo> todoList,
  }) = _TodoListState;

  factory TodoListState.init() {
    return TodoListState(todoList: [
      Todo.init(desc: 'Clean the room'),
      Todo.init(desc: 'Wash the dish'),
      Todo.init(desc: 'Do flutter'),
    ]);
  }

  factory TodoListState.fromJson(Map<String, dynamic> json) =>
      _$TodoListStateFromJson(json);
}
