part of 'count_bloc.dart';

@immutable
sealed class CountEvent {}

class ChangeCountEvent extends CountEvent {}
