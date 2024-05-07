import 'package:json_annotation/json_annotation.dart';

part 'van_to_van_approval_model.g.dart';

@JsonSerializable()
class VanToVanApprovalModel {
  @JsonKey(name: 'Status')
  String? status;

  VanToVanApprovalModel({this.status});

  factory VanToVanApprovalModel.fromJson(Map<String, dynamic> json) {
    return _$VanToVanApprovalModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VanToVanApprovalModelToJson(this);
}
