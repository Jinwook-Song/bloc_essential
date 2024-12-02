part of 'theme_bloc.dart';

@immutable
sealed class ThemeEvent {}

class ChangeThemeEvent extends ThemeEvent {
  final int randInt;

  ChangeThemeEvent({required this.randInt});
}
