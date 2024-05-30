import 'package:json_annotation/json_annotation.dart';

part 'load_transfer_product_model.g.dart';

@JsonSerializable()
class LoadTransferProductModel {
  @JsonKey(name: 'ldr_ID')
  String? ldrId;
  @JsonKey(name: 'Status')
  String? status;

  LoadTransferProductModel({this.ldrId, this.status});

  factory LoadTransferProductModel.fromJson(Map<String, dynamic> json) {
    return _$LoadTransferProductModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoadTransferProductModelToJson(this);
}
