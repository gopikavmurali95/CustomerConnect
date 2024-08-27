import 'package:json_annotation/json_annotation.dart';

part 'approval_count_model.g.dart';

@JsonSerializable()
class ApprovalCountModel {
  @JsonKey(name: 'PendingReturnHeader')
  String? pendingReturnHeader;
  @JsonKey(name: 'PendingPriceChangeApproval')
  String? pendingPriceChangeApproval;
  @JsonKey(name: 'PendingJurneyPlanSeqApprvl')
  String? pendingJurneyPlanSeqApprvl;
  @JsonKey(name: 'PendingVanToVanHeader')
  String? pendingVanToVanHeader;
  @JsonKey(name: 'PendingMaterialReqApproval')
  String? pendingMaterialReqApproval;
  @JsonKey(name: 'PendingLodTransRequest')
  String? pendingLodTransRequest;
  @JsonKey(name: 'PendingLoadRequestHeader')
  String? pendingLoadRequestHeader;
  @JsonKey(name: 'PendingAssetAddReqHeader')
  String? pendingAssetAddReqHeader;
  @JsonKey(name: 'PendingAssetRemovalReqHeader')
  String? pendingAssetRemovalReqHeader;
  @JsonKey(name: 'PendingInvoiceApprovalHeader')
  String? pendingInvoiceApprovalHeader;
  @JsonKey(name: 'PendingDisputeNoteReqHeader')
  String? pendingDisputeNoteReqHeader;
  @JsonKey(name: 'PendingCreditNoteReqHeader')
  String? pendingCreditNoteReqHeader;
  @JsonKey(name: 'PendingPartialDeliveryHeader')
  String? pendingPartialDeliveryHeader;
  @JsonKey(name: 'PendingReturnRequestSC')
  String? pendingReturnRequestSc;
  @JsonKey(name: 'PendingInvReconfirm')
  String? inventoryReconfirm;
  @JsonKey(name: 'MustSellHeader')
  String? mustSellHead;
  @JsonKey(name: 'SettlementApprovalHeader')
  String? settlementApprovalHead;
  @JsonKey(name: 'VoidTransactionHeader')
  String? voidTransactionHead;
  @JsonKey(name: 'UnschVisit')
  String? unschVisit;

  ApprovalCountModel(
      {this.pendingReturnHeader,
      this.pendingPriceChangeApproval,
      this.pendingJurneyPlanSeqApprvl,
      this.pendingVanToVanHeader,
      this.pendingMaterialReqApproval,
      this.pendingLodTransRequest,
      this.pendingLoadRequestHeader,
      this.pendingAssetAddReqHeader,
      this.pendingAssetRemovalReqHeader,
      this.pendingInvoiceApprovalHeader,
      this.pendingDisputeNoteReqHeader,
      this.pendingCreditNoteReqHeader,
      this.pendingPartialDeliveryHeader,
      this.pendingReturnRequestSc,
      this.inventoryReconfirm});

  factory ApprovalCountModel.fromJson(Map<String, dynamic> json) {
    return _$ApprovalCountModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApprovalCountModelToJson(this);
}
