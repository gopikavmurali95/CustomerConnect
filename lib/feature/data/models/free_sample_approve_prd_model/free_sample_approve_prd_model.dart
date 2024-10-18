import 'package:json_annotation/json_annotation.dart';

part 'free_sample_approve_prd_model.g.dart';

@JsonSerializable()
class FreeSampleApprovePrdModel {
  String? reasonId;
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'fsa_ID')
  String? fsaId;

  FreeSampleApprovePrdModel({this.reasonId, this.status, this.fsaId});

  factory FreeSampleApprovePrdModel.fromJson(Map<String, dynamic> json) {
    return _$FreeSampleApprovePrdModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FreeSampleApprovePrdModelToJson(this);
}
