import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_cubit_listener/model/model.dart';

part 'todo_filter_state.freezed.dart';
part 'todo_filter_state.g.dart';

@freezed
class TodoFilterState with _$TodoFilterState {
  const factory TodoFilterState({
    @Default(Filter.all) Filter filter,
  }) = _TodoFilterState;

  factory TodoFilterState.fromJson(Map<String, dynamic> json) =>
      _$TodoFilterStateFromJson(json);
}
