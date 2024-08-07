import 'package:json_annotation/json_annotation.dart';

part 'merch_cu_service_count_model.g.dart';

@JsonSerializable()
class MerchCuServiceCountModel {
  @JsonKey(name: 'ReqCreditNoteReq')
  String? reqCreditNoteReq;
  @JsonKey(name: 'ApprovedCreditNoteReq')
  String? approvedCreditNoteReq;
  @JsonKey(name: 'ReqDisputeNoteReq')
  String? reqDisputeNoteReq;
  @JsonKey(name: 'ApprovedDisputeNoteReq')
  String? approvedDisputeNoteReq;
  @JsonKey(name: 'ReqReturnRequest')
  String? reqReturnRequest;
  @JsonKey(name: 'ApprovedReturnRequest')
  String? approvedReturnRequest;
  @JsonKey(name: 'NewRequest')
  String? newRequest;
  @JsonKey(name: 'RespondedReq')
  String? respondedReq;

  MerchCuServiceCountModel({
    this.reqCreditNoteReq,
    this.approvedCreditNoteReq,
    this.reqDisputeNoteReq,
    this.approvedDisputeNoteReq,
    this.reqReturnRequest,
    this.approvedReturnRequest,
    this.newRequest,
    this.respondedReq,
  });

  factory MerchCuServiceCountModel.fromJson(Map<String, dynamic> json) {
    return _$MerchCuServiceCountModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MerchCuServiceCountModelToJson(this);
}
