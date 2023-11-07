import 'package:freezed_annotation/freezed_annotation.dart';

part 'lightning.freezed.dart';
part 'lightning.g.dart';

@freezed
class Lightning with _$Lightning {
  factory Lightning({
    required int time,
    required double lat,
    required double lon,
    required double? distance,
  }) = _Lightning;

  factory Lightning.fromJson(Map<String, dynamic> json) =>
      _$LightningFromJson(json);
}
