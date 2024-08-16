import 'package:json_annotation/json_annotation.dart';

part 'approve_price_change_model.g.dart';

@JsonSerializable()
class ApprovePriceChangeModel {
  @JsonKey(name: 'Mode')
  String? mode;
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'TransID')
  String? transId;
  @JsonKey(name: 'ArStatus')
  String? arStatus;
  ApprovePriceChangeModel({
    this.mode,
    this.status,
    this.transId,
    this.arStatus,
  });

  factory ApprovePriceChangeModel.fromJson(Map<String, dynamic> json) {
    return _$ApprovePriceChangeModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApprovePriceChangeModelToJson(this);
}
