import 'package:json_annotation/json_annotation.dart';

part 'price_change_reason_model.g.dart';

@JsonSerializable()
class PriceChangeReasonModel {
  @JsonKey(name: 'rsn_ID')
  String? rsnId;
  @JsonKey(name: 'rsn_Name')
  String? rsnName;
  @JsonKey(name: 'rsn_Type')
  String? rsnType;

  PriceChangeReasonModel({this.rsnId, this.rsnName, this.rsnType});

  factory PriceChangeReasonModel.fromJson(Map<String, dynamic> json) {
    return _$PriceChangeReasonModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PriceChangeReasonModelToJson(this);
}
