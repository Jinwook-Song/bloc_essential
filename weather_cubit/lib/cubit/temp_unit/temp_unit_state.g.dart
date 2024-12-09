// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temp_unit_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TempUnitStateImpl _$$TempUnitStateImplFromJson(Map<String, dynamic> json) =>
    _$TempUnitStateImpl(
      tempUnit: $enumDecodeNullable(_$TempUnitEnumMap, json['tempUnit']) ??
          TempUnit.celsius,
    );

Map<String, dynamic> _$$TempUnitStateImplToJson(_$TempUnitStateImpl instance) =>
    <String, dynamic>{
      'tempUnit': _$TempUnitEnumMap[instance.tempUnit]!,
    };

const _$TempUnitEnumMap = {
  TempUnit.celsius: 'celsius',
  TempUnit.fahrenheit: 'fahrenheit',
};
