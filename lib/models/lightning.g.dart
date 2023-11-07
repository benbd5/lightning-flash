// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lightning.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LightningImpl _$$LightningImplFromJson(Map<String, dynamic> json) =>
    _$LightningImpl(
      time: json['time'] as int,
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
      distance: (json['distance'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$LightningImplToJson(_$LightningImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'lat': instance.lat,
      'lon': instance.lon,
      'distance': instance.distance,
    };
