import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_state.freezed.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState({
    @Default(AppTheme.light) AppTheme appTheme,
  }) = _ThemeState;
}

enum AppTheme {
  light,
  dark;
}
