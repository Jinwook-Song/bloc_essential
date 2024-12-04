part of 'count_bloc.dart';

@immutable
sealed class CountEvent {}

class IncrementEvent extends CountEvent {}

class DecrementEvent extends CountEvent {}
