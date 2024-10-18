import 'package:json_annotation/json_annotation.dart';

part 'free_sample_reson_model.g.dart';

@JsonSerializable()
class FreeSampleResonModel {
  @JsonKey(name: 'rsn_ID')
  String? rsnId;
  @JsonKey(name: 'rsn_Name')
  String? rsnName;

  FreeSampleResonModel({this.rsnId, this.rsnName});

  factory FreeSampleResonModel.fromJson(Map<String, dynamic> json) {
    return _$FreeSampleResonModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FreeSampleResonModelToJson(this);
}
