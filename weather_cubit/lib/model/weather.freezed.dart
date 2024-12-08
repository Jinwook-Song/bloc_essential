// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return _Weather.fromJson(json);
}

/// @nodoc
mixin _$Weather {
  Temp get main => throw _privateConstructorUsedError;
  List<WeatherProps> get weather => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(fromJson: msToDateTimeDefaultToday)
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Weather to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res, Weather>;
  @useResult
  $Res call(
      {Temp main,
      List<WeatherProps> weather,
      String country,
      String name,
      @JsonKey(fromJson: msToDateTimeDefaultToday) DateTime updatedAt});

  $TempCopyWith<$Res> get main;
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res, $Val extends Weather>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = null,
    Object? weather = null,
    Object? country = null,
    Object? name = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as Temp,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherProps>,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TempCopyWith<$Res> get main {
    return $TempCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherImplCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$$WeatherImplCopyWith(
          _$WeatherImpl value, $Res Function(_$WeatherImpl) then) =
      __$$WeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Temp main,
      List<WeatherProps> weather,
      String country,
      String name,
      @JsonKey(fromJson: msToDateTimeDefaultToday) DateTime updatedAt});

  @override
  $TempCopyWith<$Res> get main;
}

/// @nodoc
class __$$WeatherImplCopyWithImpl<$Res>
    extends _$WeatherCopyWithImpl<$Res, _$WeatherImpl>
    implements _$$WeatherImplCopyWith<$Res> {
  __$$WeatherImplCopyWithImpl(
      _$WeatherImpl _value, $Res Function(_$WeatherImpl) _then)
      : super(_value, _then);

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = null,
    Object? weather = null,
    Object? country = null,
    Object? name = null,
    Object? updatedAt = null,
  }) {
    return _then(_$WeatherImpl(
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as Temp,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherProps>,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$WeatherImpl implements _Weather {
  const _$WeatherImpl(
      {required this.main,
      required final List<WeatherProps> weather,
      required this.country,
      required this.name,
      @JsonKey(fromJson: msToDateTimeDefaultToday) required this.updatedAt})
      : _weather = weather;

  factory _$WeatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherImplFromJson(json);

  @override
  final Temp main;
  final List<WeatherProps> _weather;
  @override
  List<WeatherProps> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  final String country;
  @override
  final String name;
  @override
  @JsonKey(fromJson: msToDateTimeDefaultToday)
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Weather(main: $main, weather: $weather, country: $country, name: $name, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherImpl &&
            (identical(other.main, main) || other.main == main) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, main,
      const DeepCollectionEquality().hash(_weather), country, name, updatedAt);

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherImplCopyWith<_$WeatherImpl> get copyWith =>
      __$$WeatherImplCopyWithImpl<_$WeatherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherImplToJson(
      this,
    );
  }
}

abstract class _Weather implements Weather {
  const factory _Weather(
      {required final Temp main,
      required final List<WeatherProps> weather,
      required final String country,
      required final String name,
      @JsonKey(fromJson: msToDateTimeDefaultToday)
      required final DateTime updatedAt}) = _$WeatherImpl;

  factory _Weather.fromJson(Map<String, dynamic> json) = _$WeatherImpl.fromJson;

  @override
  Temp get main;
  @override
  List<WeatherProps> get weather;
  @override
  String get country;
  @override
  String get name;
  @override
  @JsonKey(fromJson: msToDateTimeDefaultToday)
  DateTime get updatedAt;

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherImplCopyWith<_$WeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherProps _$WeatherPropsFromJson(Map<String, dynamic> json) {
  return _WeatherProps.fromJson(json);
}

/// @nodoc
mixin _$WeatherProps {
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  /// Serializes this WeatherProps to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherProps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherPropsCopyWith<WeatherProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherPropsCopyWith<$Res> {
  factory $WeatherPropsCopyWith(
          WeatherProps value, $Res Function(WeatherProps) then) =
      _$WeatherPropsCopyWithImpl<$Res, WeatherProps>;
  @useResult
  $Res call({String description, String icon});
}

/// @nodoc
class _$WeatherPropsCopyWithImpl<$Res, $Val extends WeatherProps>
    implements $WeatherPropsCopyWith<$Res> {
  _$WeatherPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherProps
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherPropsImplCopyWith<$Res>
    implements $WeatherPropsCopyWith<$Res> {
  factory _$$WeatherPropsImplCopyWith(
          _$WeatherPropsImpl value, $Res Function(_$WeatherPropsImpl) then) =
      __$$WeatherPropsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, String icon});
}

/// @nodoc
class __$$WeatherPropsImplCopyWithImpl<$Res>
    extends _$WeatherPropsCopyWithImpl<$Res, _$WeatherPropsImpl>
    implements _$$WeatherPropsImplCopyWith<$Res> {
  __$$WeatherPropsImplCopyWithImpl(
      _$WeatherPropsImpl _value, $Res Function(_$WeatherPropsImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherProps
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_$WeatherPropsImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherPropsImpl implements _WeatherProps {
  const _$WeatherPropsImpl({required this.description, required this.icon});

  factory _$WeatherPropsImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherPropsImplFromJson(json);

  @override
  final String description;
  @override
  final String icon;

  @override
  String toString() {
    return 'WeatherProps(description: $description, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherPropsImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, description, icon);

  /// Create a copy of WeatherProps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherPropsImplCopyWith<_$WeatherPropsImpl> get copyWith =>
      __$$WeatherPropsImplCopyWithImpl<_$WeatherPropsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherPropsImplToJson(
      this,
    );
  }
}

abstract class _WeatherProps implements WeatherProps {
  const factory _WeatherProps(
      {required final String description,
      required final String icon}) = _$WeatherPropsImpl;

  factory _WeatherProps.fromJson(Map<String, dynamic> json) =
      _$WeatherPropsImpl.fromJson;

  @override
  String get description;
  @override
  String get icon;

  /// Create a copy of WeatherProps
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherPropsImplCopyWith<_$WeatherPropsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Temp _$TempFromJson(Map<String, dynamic> json) {
  return _Temp.fromJson(json);
}

/// @nodoc
mixin _$Temp {
  double get temp => throw _privateConstructorUsedError;
  double get tempMin => throw _privateConstructorUsedError;
  double get tempMax => throw _privateConstructorUsedError;

  /// Serializes this Temp to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Temp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TempCopyWith<Temp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TempCopyWith<$Res> {
  factory $TempCopyWith(Temp value, $Res Function(Temp) then) =
      _$TempCopyWithImpl<$Res, Temp>;
  @useResult
  $Res call({double temp, double tempMin, double tempMax});
}

/// @nodoc
class _$TempCopyWithImpl<$Res, $Val extends Temp>
    implements $TempCopyWith<$Res> {
  _$TempCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Temp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? tempMin = null,
    Object? tempMax = null,
  }) {
    return _then(_value.copyWith(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: null == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: null == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TempImplCopyWith<$Res> implements $TempCopyWith<$Res> {
  factory _$$TempImplCopyWith(
          _$TempImpl value, $Res Function(_$TempImpl) then) =
      __$$TempImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double temp, double tempMin, double tempMax});
}

/// @nodoc
class __$$TempImplCopyWithImpl<$Res>
    extends _$TempCopyWithImpl<$Res, _$TempImpl>
    implements _$$TempImplCopyWith<$Res> {
  __$$TempImplCopyWithImpl(_$TempImpl _value, $Res Function(_$TempImpl) _then)
      : super(_value, _then);

  /// Create a copy of Temp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? tempMin = null,
    Object? tempMax = null,
  }) {
    return _then(_$TempImpl(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: null == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: null == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$TempImpl implements _Temp {
  const _$TempImpl(
      {required this.temp, required this.tempMin, required this.tempMax});

  factory _$TempImpl.fromJson(Map<String, dynamic> json) =>
      _$$TempImplFromJson(json);

  @override
  final double temp;
  @override
  final double tempMin;
  @override
  final double tempMax;

  @override
  String toString() {
    return 'Temp(temp: $temp, tempMin: $tempMin, tempMax: $tempMax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TempImpl &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.tempMin, tempMin) || other.tempMin == tempMin) &&
            (identical(other.tempMax, tempMax) || other.tempMax == tempMax));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, temp, tempMin, tempMax);

  /// Create a copy of Temp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TempImplCopyWith<_$TempImpl> get copyWith =>
      __$$TempImplCopyWithImpl<_$TempImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TempImplToJson(
      this,
    );
  }
}

abstract class _Temp implements Temp {
  const factory _Temp(
      {required final double temp,
      required final double tempMin,
      required final double tempMax}) = _$TempImpl;

  factory _Temp.fromJson(Map<String, dynamic> json) = _$TempImpl.fromJson;

  @override
  double get temp;
  @override
  double get tempMin;
  @override
  double get tempMax;

  /// Create a copy of Temp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TempImplCopyWith<_$TempImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
