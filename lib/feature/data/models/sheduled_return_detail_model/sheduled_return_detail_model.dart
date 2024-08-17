import 'package:json_annotation/json_annotation.dart';

part 'sheduled_return_detail_model.g.dart';

@JsonSerializable()
class SheduledReturnDetailModel {
  @JsonKey(name: 'rrd_ID')
  String? rrdId;
  @JsonKey(name: 'rrd_rrh_ID')
  String? rrdRrhId;
  @JsonKey(name: 'rrd_prd_ID')
  String? rrdPrdId;
  @JsonKey(name: 'prd_Code')
  String? prdCode;
  @JsonKey(name: 'prd_Name')
  String? prdName;
  @JsonKey(name: 'HQty')
  String? hQty;
  @JsonKey(name: 'rrd_HUOM')
  String? rrdHuom;
  @JsonKey(name: 'LQty')
  String? lQty;
  @JsonKey(name: 'rrd_LUOM')
  String? rrdLuom;
  @JsonKey(name: 'rrd_LineNo')
  String? rrdLineNo;
  @JsonKey(name: 'rsn_Name')
  String? rsnName;
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'rsn_ID')
  String? rsnId;
  @JsonKey(name: 'Image')
  String? image;
  @JsonKey(name: 'rsn_Type')
  String? rsnType;
  @JsonKey(name: 'Arprd_Name')
  String? arprdName;
  @JsonKey(name: 'Arrsn_Name')
  String? arrsnName;
  @JsonKey(name: 'ArStatus')
  String? arStatus;
  @JsonKey(name: 'Arrsn_Type')
  String? arrsnType;
  SheduledReturnDetailModel({
    this.rrdId,
    this.rrdRrhId,
    this.rrdPrdId,
    this.prdCode,
    this.prdName,
    this.hQty,
    this.rrdHuom,
    this.lQty,
    this.rrdLuom,
    this.rrdLineNo,
    this.rsnName,
    this.status,
    this.rsnId,
    this.image,
    this.rsnType,
    this.arStatus,
    this.arprdName,
    this.arrsnName,
    this.arrsnType,
  });

  factory SheduledReturnDetailModel.fromJson(Map<String, dynamic> json) {
    return _$SheduledReturnDetailModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SheduledReturnDetailModelToJson(this);
}
