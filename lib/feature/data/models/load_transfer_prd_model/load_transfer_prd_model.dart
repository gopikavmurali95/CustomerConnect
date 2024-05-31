import 'package:json_annotation/json_annotation.dart';

part 'load_transfer_prd_model.g.dart';

@JsonSerializable()
class LoadTransferPrdModel {
  @JsonKey(name: 'ldr_ID')
  String? ldrId;
  @JsonKey(name: 'Status')
  String? status;

  LoadTransferPrdModel({this.ldrId, this.status});

  factory LoadTransferPrdModel.fromJson(Map<String, dynamic> json) {
    return _$LoadTransferPrdModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoadTransferPrdModelToJson(this);
}
