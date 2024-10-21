import 'package:json_annotation/json_annotation.dart';

part 'overide_approv_reject_model.g.dart';

@JsonSerializable()
class OverideApprovRejectModel {
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'Res')
  String? res;

  OverideApprovRejectModel({this.status, this.res});

  factory OverideApprovRejectModel.fromJson(Map<String, dynamic> json) {
    return _$OverideApprovRejectModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OverideApprovRejectModelToJson(this);
}
