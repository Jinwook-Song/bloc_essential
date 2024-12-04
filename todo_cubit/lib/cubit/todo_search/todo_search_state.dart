import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_search_state.freezed.dart';
part 'todo_search_state.g.dart';

@freezed
class TodoSearchState with _$TodoSearchState {
  const factory TodoSearchState({
    @Default('') String term,
  }) = _TodoSearchState;

  factory TodoSearchState.fromJson(Map<String, dynamic> json) =>
      _$TodoSearchStateFromJson(json);
}
