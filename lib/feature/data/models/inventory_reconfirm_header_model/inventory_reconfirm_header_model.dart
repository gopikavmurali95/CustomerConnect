import 'package:json_annotation/json_annotation.dart';

part 'inventory_reconfirm_header_model.g.dart';

@JsonSerializable()
class InventoryReconfirmHeaderModel {
  @JsonKey(name: 'iah_ID')
  String? iahId;
  @JsonKey(name: 'iah_TransID')
  String? iahTransId;
  @JsonKey(name: 'iah_usr_ID')
  String? iahUsrId;
  @JsonKey(name: 'usr_Name')
  String? usrName;
  @JsonKey(name: 'rot_Code')
  String? rotCode;
  @JsonKey(name: 'rot_Name')
  String? rotName;
  @JsonKey(name: 'CreatedDate')
  String? createdDate;
  @JsonKey(name: 'iah_rot_ID')
  String? iahRotId;
  @JsonKey(name: 'iah_Status')
  String? iahStatus;
  @JsonKey(name: 'Arusr_Name')
  String? arusrName;
  @JsonKey(name: 'Ariah_Status')
  String? ariahStatus;

  InventoryReconfirmHeaderModel({
    this.iahId,
    this.iahTransId,
    this.iahUsrId,
    this.usrName,
    this.rotCode,
    this.rotName,
    this.createdDate,
    this.iahRotId,
    this.iahStatus,
  });

  factory InventoryReconfirmHeaderModel.fromJson(Map<String, dynamic> json) {
    return _$InventoryReconfirmHeaderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$InventoryReconfirmHeaderModelToJson(this);
}
