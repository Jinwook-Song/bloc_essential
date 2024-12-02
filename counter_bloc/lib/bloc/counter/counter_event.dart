part of 'counter_bloc.dart';

@immutable
sealed class CounterEvent {}

class IncreamentCounterEvent extends CounterEvent {}

class DecreamentCounterEvent extends CounterEvent {}
