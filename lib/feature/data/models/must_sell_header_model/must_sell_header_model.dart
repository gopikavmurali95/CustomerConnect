import 'package:json_annotation/json_annotation.dart';

part 'must_sell_header_model.g.dart';

@JsonSerializable()
class MustSellHeaderModel {
  @JsonKey(name: 'msa_id')
  String? msaId;
  @JsonKey(name: 'msa_TransID')
  String? msaTransId;
  @JsonKey(name: 'msa_usr_id')
  String? msaUsrId;
  String? userName;
  @JsonKey(name: 'rot_Code')
  String? rotCode;
  @JsonKey(name: 'rot_Name')
  String? rotName;
  @JsonKey(name: 'CreatedDate')
  String? createdDate;
  @JsonKey(name: 'msa_rot_id')
  String? msaRotId;
  @JsonKey(name: 'OrdNumber')
  String? ordNumber;
  String? salNumber;
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'CreatedBy')
  String? createdBy;
  @JsonKey(name: 'type')
  String? type;
  @JsonKey(name: 'cus_Code')
  String? cuscode;
  @JsonKey(name: 'cus_Name')
  String? cusname;
  @JsonKey(name: 'Artype')
  String? artype;
  @JsonKey(name: 'rot_ArName')
  String? rotArName;
  @JsonKey(name: 'cus_ArName')
  String? cusArName;
  @JsonKey(name: 'ArStatus')
  String? arStatus;

  MustSellHeaderModel({
    this.msaId,
    this.msaTransId,
    this.msaUsrId,
    this.userName,
    this.rotCode,
    this.rotName,
    this.createdDate,
    this.msaRotId,
    this.ordNumber,
    this.salNumber,
    this.status,
    this.createdBy,
    this.cuscode,
    this.cusname,
    this.type,
    this.artype,
    this.rotArName,
    this.cusArName,
    this.arStatus,
  });

  factory MustSellHeaderModel.fromJson(Map<String, dynamic> json) {
    return _$MustSellHeaderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MustSellHeaderModelToJson(this);
}
