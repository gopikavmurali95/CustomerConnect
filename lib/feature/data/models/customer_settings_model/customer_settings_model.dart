import 'package:json_annotation/json_annotation.dart';

part 'customer_settings_model.g.dart';

@JsonSerializable()
class CustomerSettingsModel {
  @JsonKey(name: 'InvTrans')
  String? invTrans;
  @JsonKey(name: 'CustTrans')
  String? custTrans;
  @JsonKey(name: 'SalesOrd')
  String? salesOrd;
  @JsonKey(name: 'Approvals')
  String? approvals;
  @JsonKey(name: 'CustInsight')
  String? custInsight;
  @JsonKey(name: 'Tracking')
  String? tracking;
  @JsonKey(name: 'Promo')
  String? promo;
  @JsonKey(name: 'SpclPrice')
  String? spclPrice;
  @JsonKey(name: 'Outstand')
  String? outstand;
  @JsonKey(name: 'Target')
  String? target;
  @JsonKey(name: 'ActReview')
  String? actReview;
  @JsonKey(name: 'Merch')
  String? merch;
  @JsonKey(name: 'PriceChangeAppr')
  String? priceChangeAppr;
  @JsonKey(name: 'PartDelAppr')
  String? partDelAppr;
  @JsonKey(name: 'SchReturnAppr')
  String? schReturnAppr;
  @JsonKey(name: 'RetAppr')
  String? retAppr;
  @JsonKey(name: 'DispNoteAppr')
  String? dispNoteAppr;
  @JsonKey(name: 'CredNoteAppr')
  String? credNoteAppr;
  @JsonKey(name: 'AssAddAppr')
  String? assAddAppr;
  @JsonKey(name: 'AssRemAppr')
  String? assRemAppr;
  @JsonKey(name: 'VantoVanAppr')
  String? vantoVanAppr;
  @JsonKey(name: 'LoadTransAppr')
  String? loadTransAppr;
  @JsonKey(name: 'JourPlanAppr')
  String? jourPlanAppr;
  @JsonKey(name: 'FieldServAppr')
  String? fieldServAppr;
  @JsonKey(name: 'MatReqAppr')
  String? matReqAppr;
  @JsonKey(name: 'LoadReqAppr')
  String? loadReqAppr;
  @JsonKey(name: 'InvReconfAppr')
  String? invReconfAppr;
  @JsonKey(name: 'VoidTransAppr')
  String? voidTransAppr;
  @JsonKey(name: 'MustSellAppr')
  String? mustSellAppr;
  @JsonKey(name: 'SettleAppr')
  String? settleAppr;
  @JsonKey(name: 'Loadin')
  String? loadin;
  @JsonKey(name: 'Picking')
  String? picking;

  CustomerSettingsModel({
    this.invTrans,
    this.custTrans,
    this.salesOrd,
    this.approvals,
    this.custInsight,
    this.tracking,
    this.promo,
    this.spclPrice,
    this.outstand,
    this.target,
    this.actReview,
    this.merch,
    this.priceChangeAppr,
    this.partDelAppr,
    this.schReturnAppr,
    this.retAppr,
    this.dispNoteAppr,
    this.credNoteAppr,
    this.assAddAppr,
    this.assRemAppr,
    this.vantoVanAppr,
    this.loadTransAppr,
    this.jourPlanAppr,
    this.fieldServAppr,
    this.matReqAppr,
    this.loadReqAppr,
    this.invReconfAppr,
    this.voidTransAppr,
    this.mustSellAppr,
    this.settleAppr,
    this.picking,
    this.loadin,
  });

  factory CustomerSettingsModel.fromJson(Map<String, dynamic> json) {
    return _$CustomerSettingsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CustomerSettingsModelToJson(this);
}
