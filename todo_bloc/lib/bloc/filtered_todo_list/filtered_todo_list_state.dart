import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_bloc/model/model.dart';

part 'filtered_todo_list_state.freezed.dart';
part 'filtered_todo_list_state.g.dart';

@freezed
class FilteredTodoListState with _$FilteredTodoListState {
  const factory FilteredTodoListState(
      {@Default([]) List<Todo> filteredTodoList}) = _FilteredTodoListState;

  factory FilteredTodoListState.fromJson(Map<String, dynamic> json) =>
      _$FilteredTodoListStateFromJson(json);
}
