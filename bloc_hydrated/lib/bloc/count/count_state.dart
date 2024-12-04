import 'package:freezed_annotation/freezed_annotation.dart';

part 'count_state.freezed.dart';
part 'count_state.g.dart';

@freezed
class CountState with _$CountState {
  const factory CountState({@Default(0) count}) = _CountState;

  factory CountState.fromJson(Map<String, dynamic> json) =>
      _$CountStateFromJson(json);
}
