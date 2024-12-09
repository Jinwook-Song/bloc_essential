import 'package:freezed_annotation/freezed_annotation.dart';

part 'temp_unit_state.freezed.dart';
part 'temp_unit_state.g.dart';

@freezed
class TempUnitState with _$TempUnitState {
  const factory TempUnitState({
    @Default(TempUnit.celsius) TempUnit tempUnit,
  }) = _TempUnitState;

  factory TempUnitState.fromJson(Map<String, dynamic> json) =>
      _$TempUnitStateFromJson(json);
}

enum TempUnit {
  celsius,
  fahrenheit,
}
