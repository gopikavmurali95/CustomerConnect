import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'res.g.dart';

@JsonSerializable()
class Res {
  int? code;
  String? message;
  Data? data;

  Res({this.code, this.message, this.data});

  factory Res.fromJson(Map<String, dynamic> json) => _$ResFromJson(json);

  Map<String, dynamic> toJson() => _$ResToJson(this);
}
