import 'package:customer_connect/feature/data/models/free_sample_approve_prd_model/free_sample_approve_prd_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'free_sample_approve_in_model.g.dart';

@JsonSerializable()
class FreeSampleApproveInModel {
  @JsonKey(name: 'UserId')
  String? userId;
  @JsonKey(name: 'HeaderID')
  String? headerId;
  List<FreeSampleApprovePrdModel>? products;
  FreeSampleApproveInModel({this.userId, this.headerId, this.products});

  factory FreeSampleApproveInModel.fromJson(Map<String, dynamic> json) {
    return _$FreeSampleApproveInModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FreeSampleApproveInModelToJson(this);
}
