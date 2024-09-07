import 'package:json_annotation/json_annotation.dart';

part 'sales_order_details_model.g.dart';

@JsonSerializable()
class SalesOrderDetailsModel {
  @JsonKey(name: 'Prd_Code')
  String? prdCode;
  @JsonKey(name: 'Prd_Name')
  String? prdName;
  @JsonKey(name: 'Prd_NameArabic')
  String? prdNameArabic;
  @JsonKey(name: 'Odd_HigherUOM')
  String? oddHigherUOM;
  @JsonKey(name: 'Odd_LowerUOM')
  String? oddLowerUOM;
  @JsonKey(name: 'Odd_HigherQty')
  String? oddHigherQty;
  @JsonKey(name: 'Odd_LowerQty')
  String? oddLowerQty;
  @JsonKey(name: 'Odd_HigherPrice')
  String? oddHigherPrice;
  @JsonKey(name: 'Odd_LowerPrice')
  String? oddLowerPrice;
  @JsonKey(name: 'Odd_VATAmount')
  String? oddVATAmount;
  @JsonKey(name: 'Odd_VATPercent')
  String? oddVATPercent;
  @JsonKey(name: 'Odd_Discount')
  String? oddDiscount;
  @JsonKey(name: 'Odd_SubTotal')
  String? oddSubTotal;
  @JsonKey(name: 'Odd_GrandTotal')
  String? oddGrandTotal;
  @JsonKey(name: 'Odd_TotalQty')
  String? oddTotalQty;
  @JsonKey(name: 'Odd_Price')
  String? oddPrice;
  @JsonKey(name: 'Odd_TransType')
  String? oddTransType;
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'CreatedDate')
  String? createdDate;

  SalesOrderDetailsModel({
    this.prdCode,
    this.prdName,
    this.prdNameArabic,
    this.oddHigherUOM,
    this.oddLowerUOM,
    this.oddHigherQty,
    this.oddLowerQty,
    this.oddHigherPrice,
    this.oddLowerPrice,
    this.oddVATAmount,
    this.oddVATPercent,
    this.oddDiscount,
    this.oddSubTotal,
    this.oddGrandTotal,
    this.oddTotalQty,
    this.oddPrice,
    this.oddTransType,
    this.status,
    this.createdDate,
  });

  factory SalesOrderDetailsModel.fromJson(Map<String, dynamic> json) {
    return _$SalesOrderDetailsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SalesOrderDetailsModelToJson(this);
}
