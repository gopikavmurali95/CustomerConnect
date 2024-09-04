import 'package:json_annotation/json_annotation.dart';

part 'load_transfer_detail_model.g.dart';

@JsonSerializable()
class LoadTransferDetailModel {
  @JsonKey(name: 'ldr_ID')
  String? ldrId;
  @JsonKey(name: 'ldr_prd_ID')
  String? ldrPrdId;
  @JsonKey(name: 'ldr_CurrentStockHQty')
  String? ldrCurrentStockHQty;
  @JsonKey(name: 'ldr_CurrentStockLQty')
  String? ldrCurrentStockLQty;
  @JsonKey(name: 'ldr_BalanceHQty')
  String? ldrBalanceHQty;
  @JsonKey(name: 'ldr_BalanceLQty')
  String? ldrBalanceLQty;
  @JsonKey(name: 'ldr_OffloadHQty')
  String? ldrOffloadHQty;
  @JsonKey(name: 'ldr_OffloadLQty')
  String? ldrOffloadLQty;
  @JsonKey(name: 'ldr_HigherPrice')
  String? ldrHigherPrice;
  @JsonKey(name: 'ldr_LowerPrice')
  String? ldrLowerPrice;
  @JsonKey(name: 'ldr_CurrentStockHUOM')
  String? ldrCurrentStockHuom;
  @JsonKey(name: 'ldr_CurrentStockLUOM')
  String? ldrCurrentStockLuom;
  @JsonKey(name: 'ldr_BalanceHUOM')
  String? ldrBalanceHuom;
  @JsonKey(name: 'ldr_OffloadHUOM')
  String? ldrOffloadHuom;
  @JsonKey(name: 'ldr_OffloadLUOM')
  String? ldrOffloadLuom;
  @JsonKey(name: 'prd_Code')
  String? prdCode;
  @JsonKey(name: 'prd_Name')
  String? prdName;
  @JsonKey(name: 'prd_ArName')
  String? prdArName;
  @JsonKey(name: 'Status')
  String? status;

  LoadTransferDetailModel({
    this.ldrId,
    this.ldrPrdId,
    this.ldrCurrentStockHQty,
    this.ldrCurrentStockLQty,
    this.ldrBalanceHQty,
    this.ldrBalanceLQty,
    this.ldrOffloadHQty,
    this.ldrOffloadLQty,
    this.ldrHigherPrice,
    this.ldrLowerPrice,
    this.ldrCurrentStockHuom,
    this.ldrCurrentStockLuom,
    this.ldrBalanceHuom,
    this.ldrOffloadHuom,
    this.ldrOffloadLuom,
    this.prdCode,
    this.prdName,
    this.prdArName,
  });

  factory LoadTransferDetailModel.fromJson(Map<String, dynamic> json) {
    return _$LoadTransferDetailModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoadTransferDetailModelToJson(this);
}
