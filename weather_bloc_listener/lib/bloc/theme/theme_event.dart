part of 'theme_bloc.dart';

sealed class ThemeEvent {}

class SetThemeEvent extends ThemeEvent {
  final AppTheme appTheme;

  SetThemeEvent(this.appTheme);
}
