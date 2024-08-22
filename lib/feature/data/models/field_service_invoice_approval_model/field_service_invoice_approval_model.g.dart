// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_service_invoice_approval_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FieldServiceInvoiceApprovalModel _$FieldServiceInvoiceApprovalModelFromJson(
        Map<String, dynamic> json) =>
    FieldServiceInvoiceApprovalModel(
      status: json['Status'] as String?,
    )..arStatus = json['ArStatus'] as String?;

Map<String, dynamic> _$FieldServiceInvoiceApprovalModelToJson(
        FieldServiceInvoiceApprovalModel instance) =>
    <String, dynamic>{
      'Status': instance.status,
      'ArStatus': instance.arStatus,
    };
