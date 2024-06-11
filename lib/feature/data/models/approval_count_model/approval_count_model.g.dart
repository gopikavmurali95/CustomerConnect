// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'approval_count_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApprovalCountModel _$ApprovalCountModelFromJson(Map<String, dynamic> json) =>
    ApprovalCountModel(
      pendingReturnHeader: json['PendingReturnHeader'] as String?,
      pendingPriceChangeApproval: json['PendingPriceChangeApproval'] as String?,
      pendingJurneyPlanSeqApprvl: json['PendingJurneyPlanSeqApprvl'] as String?,
      pendingVanToVanHeader: json['PendingVanToVanHeader'] as String?,
      pendingMaterialReqApproval: json['PendingMaterialReqApproval'] as String?,
      pendingLodTransRequest: json['PendingLodTransRequest'] as String?,
      pendingLoadRequestHeader: json['PendingLoadRequestHeader'] as String?,
      pendingAssetAddReqHeader: json['PendingAssetAddReqHeader'] as String?,
      pendingAssetRemovalReqHeader:
          json['PendingAssetRemovalReqHeader'] as String?,
      pendingInvoiceApprovalHeader:
          json['PendingInvoiceApprovalHeader'] as String?,
      pendingDisputeNoteReqHeader:
          json['PendingDisputeNoteReqHeader'] as String?,
      pendingCreditNoteReqHeader: json['PendingCreditNoteReqHeader'] as String?,
      pendingPartialDeliveryHeader:
          json['PendingPartialDeliveryHeader'] as String?,
      pendingReturnRequestSc: json['PendingReturnRequestSC'] as String?,
      inventoryReconfirm: json['PendingInvReconfirm'] as String?,
    );

Map<String, dynamic> _$ApprovalCountModelToJson(ApprovalCountModel instance) =>
    <String, dynamic>{
      'PendingReturnHeader': instance.pendingReturnHeader,
      'PendingPriceChangeApproval': instance.pendingPriceChangeApproval,
      'PendingJurneyPlanSeqApprvl': instance.pendingJurneyPlanSeqApprvl,
      'PendingVanToVanHeader': instance.pendingVanToVanHeader,
      'PendingMaterialReqApproval': instance.pendingMaterialReqApproval,
      'PendingLodTransRequest': instance.pendingLodTransRequest,
      'PendingLoadRequestHeader': instance.pendingLoadRequestHeader,
      'PendingAssetAddReqHeader': instance.pendingAssetAddReqHeader,
      'PendingAssetRemovalReqHeader': instance.pendingAssetRemovalReqHeader,
      'PendingInvoiceApprovalHeader': instance.pendingInvoiceApprovalHeader,
      'PendingDisputeNoteReqHeader': instance.pendingDisputeNoteReqHeader,
      'PendingCreditNoteReqHeader': instance.pendingCreditNoteReqHeader,
      'PendingPartialDeliveryHeader': instance.pendingPartialDeliveryHeader,
      'PendingReturnRequestSC': instance.pendingReturnRequestSc,
      'PendingInvReconfirm': instance.inventoryReconfirm,
    };
