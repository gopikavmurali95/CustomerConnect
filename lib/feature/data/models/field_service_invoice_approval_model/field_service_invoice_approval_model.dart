import 'package:json_annotation/json_annotation.dart';

part 'field_service_invoice_approval_model.g.dart';

@JsonSerializable()
class FieldServiceInvoiceApprovalModel {
  @JsonKey(name: 'Status')
  String? status;

  FieldServiceInvoiceApprovalModel({this.status});

  factory FieldServiceInvoiceApprovalModel.fromJson(Map<String, dynamic> json) {
    return _$FieldServiceInvoiceApprovalModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$FieldServiceInvoiceApprovalModelToJson(this);
  }
}
