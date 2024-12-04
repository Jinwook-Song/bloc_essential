import 'package:freezed_annotation/freezed_annotation.dart';

part 'active_todo_count_state.freezed.dart';
part 'active_todo_count_state.g.dart';

@freezed
class ActiveTodoCountState with _$ActiveTodoCountState {
  const factory ActiveTodoCountState({@Default(0) int count}) =
      _ActiveTodoCountState;

  factory ActiveTodoCountState.fromJson(Map<String, dynamic> json) =>
      _$ActiveTodoCountStateFromJson(json);
}
