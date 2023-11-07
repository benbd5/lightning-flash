// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lightning.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Lightning _$LightningFromJson(Map<String, dynamic> json) {
  return _Lightning.fromJson(json);
}

/// @nodoc
mixin _$Lightning {
  int get time => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LightningCopyWith<Lightning> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LightningCopyWith<$Res> {
  factory $LightningCopyWith(Lightning value, $Res Function(Lightning) then) =
      _$LightningCopyWithImpl<$Res, Lightning>;
  @useResult
  $Res call({int time, double lat, double lon, double? distance});
}

/// @nodoc
class _$LightningCopyWithImpl<$Res, $Val extends Lightning>
    implements $LightningCopyWith<$Res> {
  _$LightningCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? lat = null,
    Object? lon = null,
    Object? distance = freezed,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LightningImplCopyWith<$Res>
    implements $LightningCopyWith<$Res> {
  factory _$$LightningImplCopyWith(
          _$LightningImpl value, $Res Function(_$LightningImpl) then) =
      __$$LightningImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int time, double lat, double lon, double? distance});
}

/// @nodoc
class __$$LightningImplCopyWithImpl<$Res>
    extends _$LightningCopyWithImpl<$Res, _$LightningImpl>
    implements _$$LightningImplCopyWith<$Res> {
  __$$LightningImplCopyWithImpl(
      _$LightningImpl _value, $Res Function(_$LightningImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? lat = null,
    Object? lon = null,
    Object? distance = freezed,
  }) {
    return _then(_$LightningImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LightningImpl implements _Lightning {
  _$LightningImpl(
      {required this.time,
      required this.lat,
      required this.lon,
      required this.distance});

  factory _$LightningImpl.fromJson(Map<String, dynamic> json) =>
      _$$LightningImplFromJson(json);

  @override
  final int time;
  @override
  final double lat;
  @override
  final double lon;
  @override
  final double? distance;

  @override
  String toString() {
    return 'Lightning(time: $time, lat: $lat, lon: $lon, distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LightningImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.distance, distance) ||
                other.distance == distance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, time, lat, lon, distance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LightningImplCopyWith<_$LightningImpl> get copyWith =>
      __$$LightningImplCopyWithImpl<_$LightningImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LightningImplToJson(
      this,
    );
  }
}

abstract class _Lightning implements Lightning {
  factory _Lightning(
      {required final int time,
      required final double lat,
      required final double lon,
      required final double? distance}) = _$LightningImpl;

  factory _Lightning.fromJson(Map<String, dynamic> json) =
      _$LightningImpl.fromJson;

  @override
  int get time;
  @override
  double get lat;
  @override
  double get lon;
  @override
  double? get distance;
  @override
  @JsonKey(ignore: true)
  _$$LightningImplCopyWith<_$LightningImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
