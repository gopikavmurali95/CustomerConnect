import 'package:json_annotation/json_annotation.dart';

part 'cu_s_ins_rot_list.g.dart';

@JsonSerializable()
class CuSInsRotList {
  @JsonKey(name: 'rot_ID')
  String? rotId;
  @JsonKey(name: 'rot_Name')
  String? rotName;

  CuSInsRotList({this.rotId, this.rotName});

  factory CuSInsRotList.fromJson(Map<String, dynamic> json) {
    return _$CuSInsRotListFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CuSInsRotListToJson(this);
}
