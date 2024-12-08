// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_filter_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoFilterStateImpl _$$TodoFilterStateImplFromJson(
        Map<String, dynamic> json) =>
    _$TodoFilterStateImpl(
      filter:
          $enumDecodeNullable(_$FilterEnumMap, json['filter']) ?? Filter.all,
    );

Map<String, dynamic> _$$TodoFilterStateImplToJson(
        _$TodoFilterStateImpl instance) =>
    <String, dynamic>{
      'filter': _$FilterEnumMap[instance.filter]!,
    };

const _$FilterEnumMap = {
  Filter.all: 'all',
  Filter.active: 'active',
  Filter.completed: 'completed',
};
