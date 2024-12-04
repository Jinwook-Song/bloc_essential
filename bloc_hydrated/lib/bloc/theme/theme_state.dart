import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_state.freezed.dart';
part 'theme_state.g.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState({
    @Default(AppTheme.light) AppTheme appTheme,
  }) = _ThemeState;

  factory ThemeState.fromJson(Map<String, dynamic> json) =>
      _$ThemeStateFromJson(json);
}

enum AppTheme {
  light,
  dark,
}
