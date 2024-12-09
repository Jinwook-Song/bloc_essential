// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeStateImpl _$$ThemeStateImplFromJson(Map<String, dynamic> json) =>
    _$ThemeStateImpl(
      appTheme: $enumDecodeNullable(_$AppThemeEnumMap, json['appTheme']) ??
          AppTheme.light,
    );

Map<String, dynamic> _$$ThemeStateImplToJson(_$ThemeStateImpl instance) =>
    <String, dynamic>{
      'appTheme': _$AppThemeEnumMap[instance.appTheme]!,
    };

const _$AppThemeEnumMap = {
  AppTheme.light: 'light',
  AppTheme.dark: 'dark',
};
