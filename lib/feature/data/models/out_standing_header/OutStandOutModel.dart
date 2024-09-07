import 'dart:convert';

OutStandOutModel outStandOutModelFromJson(String str) =>
    OutStandOutModel.fromJson(json.decode(str));
String outStandOutModelToJson(OutStandOutModel data) =>
    json.encode(data.toJson());

class OutStandOutModel {
  OutStandOutModel(
      {this.invoiceID,
      this.invoicedOn,
      this.invoiceAmount,
      this.amountPaid,
      this.invoiceBalance,
      this.pDCAmount,
      this.createdDate,
      this.cusID,
      this.cusCode,
      this.cusName,
      this.cshID,
      this.cshCode,
      this.cshName,
      this.rotID,
      this.rotCode,
      this.rotName,
      this.status,
      this.id,
      this.invPayType,
      this.arStatus,
      this.cusArName,
      this.cshArName,
      this.rotArName});

  OutStandOutModel.fromJson(dynamic json) {
    invoiceID = json['InvoiceID'];
    invoicedOn = json['InvoicedOn'];
    invoiceAmount = json['InvoiceAmount'];
    amountPaid = json['AmountPaid'];
    invoiceBalance = json['InvoiceBalance'];
    pDCAmount = json['PDC_Amount'];
    createdDate = json['CreatedDate'];
    cusID = json['cus_ID'];
    cusCode = json['cus_Code'];
    cusName = json['cus_Name'];
    cshID = json['csh_ID'];
    cshCode = json['csh_Code'];
    cshName = json['csh_Name'];
    rotID = json['rot_ID'];
    rotCode = json['rot_Code'];
    rotName = json['rot_Name'];
    status = json['Status'];
    id = json['ID'];
    invPayType = json['inv_PayType'];
    arStatus = json['ArStatus'];
    cusArName = json['cus_ArName'];
    cshArName = json['csh_ArName'];
    rotArName = json['rot_ArName'];
  }
  String? invoiceID;
  String? invoicedOn;
  String? invoiceAmount;
  String? amountPaid;
  String? invoiceBalance;
  String? pDCAmount;
  String? createdDate;
  String? cusID;
  String? cusCode;
  String? cusName;
  String? cshID;
  String? cshCode;
  String? cshName;
  String? rotID;
  String? rotCode;
  String? rotName;
  String? status;
  String? id;
  String? invPayType;
  String? arStatus;
  String? cusArName;
  String? cshArName;
  String? rotArName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['InvoiceID'] = invoiceID;
    map['InvoicedOn'] = invoicedOn;
    map['InvoiceAmount'] = invoiceAmount;
    map['AmountPaid'] = amountPaid;
    map['InvoiceBalance'] = invoiceBalance;
    map['PDC_Amount'] = pDCAmount;
    map['CreatedDate'] = createdDate;
    map['cus_ID'] = cusID;
    map['cus_Code'] = cusCode;
    map['cus_Name'] = cusName;
    map['csh_ID'] = cshID;
    map['csh_Code'] = cshCode;
    map['csh_Name'] = cshName;
    map['rot_ID'] = rotID;
    map['rot_Code'] = rotCode;
    map['rot_Name'] = rotName;
    map['Status'] = status;
    map['ID'] = id;
    map['inv_PayType'] = invPayType;
    map['ArStatus'] = arStatus;
    map['cus_ArName'] = cusArName;
    map['csh_ArName'] = cshArName;
    map['rot_ArName'] = rotArName;
    return map;
  }
}
