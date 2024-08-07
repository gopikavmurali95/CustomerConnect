// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merch_cu_service_count_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MerchCuServiceCountModel _$MerchCuServiceCountModelFromJson(
        Map<String, dynamic> json) =>
    MerchCuServiceCountModel(
      reqCreditNoteReq: json['ReqCreditNoteReq'] as String?,
      approvedCreditNoteReq: json['ApprovedCreditNoteReq'] as String?,
      reqDisputeNoteReq: json['ReqDisputeNoteReq'] as String?,
      approvedDisputeNoteReq: json['ApprovedDisputeNoteReq'] as String?,
      reqReturnRequest: json['ReqReturnRequest'] as String?,
      approvedReturnRequest: json['ApprovedReturnRequest'] as String?,
      newRequest: json['NewRequest'] as String?,
      respondedReq: json['RespondedReq'] as String?,
    );

Map<String, dynamic> _$MerchCuServiceCountModelToJson(
        MerchCuServiceCountModel instance) =>
    <String, dynamic>{
      'ReqCreditNoteReq': instance.reqCreditNoteReq,
      'ApprovedCreditNoteReq': instance.approvedCreditNoteReq,
      'ReqDisputeNoteReq': instance.reqDisputeNoteReq,
      'ApprovedDisputeNoteReq': instance.approvedDisputeNoteReq,
      'ReqReturnRequest': instance.reqReturnRequest,
      'ApprovedReturnRequest': instance.approvedReturnRequest,
      'NewRequest': instance.newRequest,
      'RespondedReq': instance.respondedReq,
    };
