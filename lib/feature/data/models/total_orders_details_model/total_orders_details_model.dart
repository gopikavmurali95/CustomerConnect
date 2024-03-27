import 'package:json_annotation/json_annotation.dart';

part 'total_orders_details_model.g.dart';

@JsonSerializable()
class TotalOrdersDetailsModel {
  @JsonKey(name: 'odd_ID')
  String? oddId;
  @JsonKey(name: 'odd_ord_ID')
  String? oddOrdId;
  @JsonKey(name: 'prd_ID')
  String? prdId;
  @JsonKey(name: 'prd_Code')
  String? prdCode;
  @JsonKey(name: 'prd_Name')
  String? prdName;
  @JsonKey(name: 'prd_NameArabic')
  String? prdNameArabic;
  @JsonKey(name: 'prd_Description')
  String? prdDescription;
  @JsonKey(name: 'odd_HigherUOM')
  String? oddHigherUom;
  @JsonKey(name: 'odd_LowerUOM')
  String? oddLowerUom;
  @JsonKey(name: 'odd_HigherQty')
  String? oddHigherQty;
  @JsonKey(name: 'odd_LowerQty')
  String? oddLowerQty;
  @JsonKey(name: 'odd_HigherPrice')
  String? oddHigherPrice;
  @JsonKey(name: 'odd_LowerPrice')
  String? oddLowerPrice;
  @JsonKey(name: 'odd_Price')
  String? oddPrice;
  @JsonKey(name: 'odd_TotalQty')
  String? oddTotalQty;
  @JsonKey(name: 'odd_VATPercent')
  String? oddVatPercent;
  @JsonKey(name: 'odd_Discount')
  String? oddDiscount;
  @JsonKey(name: 'odd_SubTotal')
  String? oddSubTotal;
  @JsonKey(name: 'odd_VATAmount')
  String? oddVatAmount;
  @JsonKey(name: 'odd_GrandTotal')
  String? oddGrandTotal;
  @JsonKey(name: 'odd_TransType')
  String? oddTransType;

  TotalOrdersDetailsModel({
    this.oddId,
    this.oddOrdId,
    this.prdId,
    this.prdCode,
    this.prdName,
    this.prdNameArabic,
    this.prdDescription,
    this.oddHigherUom,
    this.oddLowerUom,
    this.oddHigherQty,
    this.oddLowerQty,
    this.oddHigherPrice,
    this.oddLowerPrice,
    this.oddPrice,
    this.oddTotalQty,
    this.oddVatPercent,
    this.oddDiscount,
    this.oddSubTotal,
    this.oddVatAmount,
    this.oddGrandTotal,
    this.oddTransType,
  });

  factory TotalOrdersDetailsModel.fromJson(Map<String, dynamic> json) {
    return _$TotalOrdersDetailsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TotalOrdersDetailsModelToJson(this);
}
