import 'package:customer_connect/feature/domain/repoImpls/customersettings/customersettingsrepo.dart';
import 'package:json_annotation/json_annotation.dart';

part 'customer_settings_model.g.dart';

@JsonSerializable()
class CustomerSettingsModel {
  @JsonKey(name: 'INTR-INVTRAN')
  String? invTrans;

  @JsonKey(name: 'INTR-CUSTTRAN')
  String? custTrans;

  @JsonKey(name: 'SLOR-SALESORD')
  String? salesOrd;

  @JsonKey(name: 'OTOP-APPR')
  String? approvals;

  @JsonKey(name: 'OTOP-CUSINSI')
  String? custInsight;

  @JsonKey(name: 'OTOP-TRACK')
  String? tracking;

  @JsonKey(name: 'OTOP-PROMO')
  String? promo;

  @JsonKey(name: 'OTOP-SPCLPRC')
  String? spclPrice;

  @JsonKey(name: 'OTOP-OUTSTD')
  String? outstand;

  @JsonKey(name: 'OTOP-TARGET')
  String? target;

  @JsonKey(name: 'OTOP-ACTREVW')
  String? actReview;

  @JsonKey(name: 'OTOP-MERCH')
  String? merch;

  @JsonKey(name: 'APPR-PRCCHG')
  String? priceChangeAppr;

  @JsonKey(name: 'APPR-PARDEL')
  String? partDelAppr;

  @JsonKey(name: 'APPR-SCHRET')
  String? schReturnAppr;

  @JsonKey(name: 'APPR-RET')
  String? retAppr;

  @JsonKey(name: 'APPR-DISPNOT')
  String? dispNoteAppr;

  @JsonKey(name: 'APPR-CREDNOT')
  String? credNoteAppr;

  @JsonKey(name: 'APPR-ASSADD')
  String? assAddAppr;

  @JsonKey(name: 'APPR-ASSREM')
  String? assRemAppr;

  @JsonKey(name: 'APPR-VANTOVAN')
  String? vantoVanAppr;

  @JsonKey(name: 'APPR-LODTRAN')
  String? loadTransAppr;

  @JsonKey(name: 'APPR-JOUPLAN')
  String? jourPlanAppr;

  @JsonKey(name: 'APPR-FLDSERV')
  String? fieldServAppr;

  @JsonKey(name: 'APPR-METREQ')
  String? matReqAppr;

  @JsonKey(name: 'APPR-LODREQ')
  String? loadReqAppr;

  @JsonKey(name: 'APPR-INVRECON')
  String? invReconfAppr;

  @JsonKey(name: 'APPR-VOIDTRN')
  String? voidTransAppr;

  @JsonKey(name: 'APPR-MUSTSEL')
  String? mustSellAppr;

  @JsonKey(name: 'APPR-UNSCHLD')
  String? unschvisit;

  @JsonKey(name: 'APPR-SETLMNT')
  String? settleAppr;

  @JsonKey(name: 'INTR-LOADIN')
  String? loadin;

  @JsonKey(name: 'INTR-PICKIN')
  String? picking;

  @JsonKey(name: 'CUTR-INVOICE')
  String? invoice;

  @JsonKey(name: 'CUTR-ARCOLL')
  String? arcollection;

  @JsonKey(name: 'SLOR-TOTORDS')
  String? totalorders;

  @JsonKey(name: 'SLOR-TOTDELS')
  String? todaysdelivery;

  @JsonKey(name: 'CUIN-CUSARCOLL')
  String? cusArcollection;

  @JsonKey(name: 'CUIN-CUSINV')
  String? cusInvoice;

  @JsonKey(name: 'CUIN-CUSSALORD')
  String? cusSalesOrders;

  @JsonKey(name: 'CUIN-CUSSERVJOB')
  String? cusServiceJobs;

  @JsonKey(name: 'CUIN-CUSOUTSTD')
  String? cusOutstanding;

  @JsonKey(name: 'CUIN-CUSSPLPRC')
  String? cusSpPrice;

  @JsonKey(name: 'CUIN-CUSPROMO')
  String? cusPromotion;

  @JsonKey(name: 'CUIN-CUSITMLST')
  String? cusItemList;

  @JsonKey(name: 'CUIN-CUSDOCS')
  String? cusDocuments;

  @JsonKey(name: 'CUIN-CUSGEOLOC')
  String? cusGeoLocation;

  @JsonKey(name: 'APPR-CUSFOC')
  String? cusfoc;
  @JsonKey(name: 'APPR-CUSFRSMPLE')
  String? freesample;
  @JsonKey(name: 'APPR-CUSOVRDE')
  String? cusovrride;

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
    this.loadin,
    this.picking,
    this.invoice,
    this.arcollection,
    this.totalorders,
    this.todaysdelivery,
    this.cusArcollection,
    this.cusInvoice,
    this.cusSalesOrders,
    this.cusServiceJobs,
    this.cusOutstanding,
    this.cusSpPrice,
    this.cusPromotion,
    this.cusItemList,
    this.cusDocuments,
    this.cusGeoLocation,
    this.cusfoc,
    this.cusovrride,
    this.freesample,
    this.unschvisit,
  });

  factory CustomerSettingsModel.fromJson(Map<String, dynamic> json) {
    return _$CustomerSettingsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CustomerSettingsModelToJson(this);

  void updateFromApiResponse(List<Map<String, String>> response) {
    Map<String, String> mapping = {
      "INTR": 'invntry',
      "CUTR": "cusTrans",
      "SLOR": "salesorder",
      "OTOP": "otheroptions",
      "CUIN": "cusIns",
      "APPR": "approval",
      'INTR-LAODIN': 'loadin',
      'INTR-PICKIN': 'picking',
      'CUTR-INVOICE': 'invoice',
      'CUTR-ARCOLL': 'arcollection',
      'SLOR-TOTORDS': 'totalorders',
      'SLOR-TOTDELS': 'todaysdelivery',
      'OTOP-APPR': 'approvals',
      'OTOP-CUSINSI': 'custInsight',
      'OTOP-TRACK': 'tracking',
      'OTOP-PROMO': 'promo',
      'OTOP-SPCLPRC': 'spclPrice',
      'OTOP-OUTSTD': 'outstand',
      'OTOP-TARGET': 'target',
      'OTOP-ACTREVW': 'actReview',
      'OTOP-MERCH': 'merch',
      'CUIN-CUSARCOLL': 'cusArcollection',
      'CUIN-CUSINV': 'cusInvoice',
      'CUIN-CUSSALORD': 'cusSalesOrders',
      'CUIN-CUSSERVJOB': 'cusServiceJobs',
      'CUIN-CUSOUTSTD': 'cusOutstanding',
      'CUIN-CUSSPLPRC': 'cusSpPrice',
      'CUIN-CUSPROMO': 'cusPromotion',
      'CUIN-CUSITMLST': 'cusItemList',
      'CUIN-CUSDOCS': 'cusDocuments',
      'CUIN-CUSGEOLOC': 'cusGeoLocation',
      'APPR-PRCCHG': 'priceChangeAppr',
      'APPR-PARDEL': 'partDelAppr',
      'APPR-SCHRET': 'schReturnAppr',
      'APPR-RET': 'retAppr',
      'APPR-DISPNOT': 'dispNoteAppr',
      'APPR-CREDNOT': 'credNoteAppr',
      'APPR-ASSADD': 'assAddAppr',
      'APPR-ASSREM': 'assRemAppr',
      'APPR-VANTOVAN': 'vantoVanAppr',
      'APPR-LODTRAN': 'loadTransAppr',
      'APPR-JOUPLAN': 'jourPlanAppr',
      'APPR-FLDSERV': 'fieldServAppr',
      'APPR-METREQ': 'matReqAppr',
      'APPR-LODREQ': 'loadReqAppr',
      'APPR-INVRECON': 'invReconfAppr',
      'APPR-VOIDTRN': 'voidTransAppr',
      'APPR-MUSTSEL': 'mustSellAppr',
      'APPR-SETLMNT': 'settleAppr',
      'APPR-CUSFOC': 'cusfoc',
      'APPR-CUSFRSMPLE': 'freesample',
      'APPR-CUSOVRDE': 'cusovrride',
      'APPR-UNSCHLD': 'unschvisit'
    };

    for (var item in response) {
      String key = '${item['ParentNode']}-${item['ChildNode']}';
      if (mapping.containsKey(key)) {
        // log('Keyyyy ${mapping[key]}');
        String field = mapping[key]!;
        String parent = item['ParentNode'] ?? '';
        // if(mapping.containsKey(key))
        setFieldValue(field, "Y");
        // log('parent ${parent}');

        setFieldValue(parent, "Y");
      }
    }
  }

  // Helper method to set the field dynamically by name
  void setFieldValue(String fieldName, String value) {
    switch (fieldName) {
      case 'INTR':
        customerSettings.invTrans = value;
        break;
      case 'CUTR':
        customerSettings.custTrans = value;
        break;
      case 'SLOR':
        customerSettings.salesOrd = value;
        break;
      case 'APPR':
        customerSettings.approvals = value;
        break;
      case 'CUIN':
        customerSettings.custInsight = value;
        break;
      /*  case 'OTOP':
        customerSettings. = value;
        break; */
      case 'tracking':
        customerSettings.tracking = value;
        break;
      case 'promo':
        customerSettings.promo = value;
        break;
      case 'spclPrice':
        customerSettings.spclPrice = value;
        break;
      case 'outstand':
        customerSettings.outstand = value;
        break;
      case 'target':
        customerSettings.target = value;
        break;
      case 'actReview':
        customerSettings.actReview = value;
        break;
      case 'merch':
        customerSettings.merch = value;
        break;
      case 'priceChangeAppr':
        customerSettings.priceChangeAppr = value;
        break;
      case 'partDelAppr':
        customerSettings.partDelAppr = value;
        break;
      case 'schReturnAppr':
        customerSettings.schReturnAppr = value;
        break;
      case 'retAppr':
        customerSettings.retAppr = value;
        break;
      case 'dispNoteAppr':
        customerSettings.dispNoteAppr = value;
        break;
      case 'credNoteAppr':
        customerSettings.credNoteAppr = value;
        break;
      case 'assAddAppr':
        customerSettings.assAddAppr = value;
        break;
      case 'assRemAppr':
        customerSettings.assRemAppr = value;
        break;
      case 'vantoVanAppr':
        customerSettings.vantoVanAppr = value;
        break;
      case 'loadTransAppr':
        customerSettings.loadTransAppr = value;
        break;
      case 'jourPlanAppr':
        customerSettings.jourPlanAppr = value;
        break;
      case 'fieldServAppr':
        customerSettings.fieldServAppr = value;
        break;
      case 'matReqAppr':
        customerSettings.matReqAppr = value;
        break;
      case 'loadReqAppr':
        customerSettings.loadReqAppr = value;
        break;
      case 'invReconfAppr':
        customerSettings.invReconfAppr = value;
        break;
      case 'voidTransAppr':
        customerSettings.voidTransAppr = value;
        break;
      case 'mustSellAppr':
        customerSettings.mustSellAppr = value;
        break;
      case 'settleAppr':
        customerSettings.settleAppr = value;
        break;
      case 'loadin':
        customerSettings.loadin = value;
        break;
      case 'picking':
        customerSettings.picking = value;
        break;
      case 'invoice':
        customerSettings.invoice = value;
        break;
      case 'arcollection':
        customerSettings.arcollection = value;
        break;
      case 'totalorders':
        customerSettings.totalorders = value;
        break;
      case 'todaysdelivery':
        customerSettings.todaysdelivery = value;
        break;
      case 'cusArcollection':
        customerSettings.cusArcollection = value;
        break;
      case 'cusInvoice':
        customerSettings.cusInvoice = value;
        break;
      case 'cusSalesOrders':
        customerSettings.cusSalesOrders = value;
        break;
      case 'cusServiceJobs':
        customerSettings.cusServiceJobs = value;
        break;
      case 'cusOutstanding':
        customerSettings.cusOutstanding = value;
        break;
      case 'cusSpPrice':
        customerSettings.cusSpPrice = value;
        break;
      case 'cusPromotion':
        customerSettings.cusPromotion = value;
        break;
      case 'cusItemList':
        customerSettings.cusItemList = value;
        break;
      case 'cusDocuments':
        customerSettings.cusDocuments = value;
        break;
      case 'cusGeoLocation':
        customerSettings.cusGeoLocation = value;
        break;

      case 'cusfoc':
        customerSettings.cusfoc = value;
        break;
      case 'freesample':
        customerSettings.freesample = value;
        break;
      case 'cusovrride':
        customerSettings.cusovrride = value;
        break;
      case 'unschvisit':
        customerSettings.unschvisit = value;
        break;
    }
  }
}
