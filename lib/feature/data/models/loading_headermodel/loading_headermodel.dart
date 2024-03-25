import 'package:json_annotation/json_annotation.dart';

part 'loading_headermodel.g.dart';

@JsonSerializable()
class LoadingHeadermodel {
  @JsonKey(name: 'TransactionCode')
  String? transactionCode;
  @JsonKey(name: 'rot_ID')
  String? rotId;
  @JsonKey(name: 'rot_Code')
  String? rotCode;
  @JsonKey(name: 'rot_Name')
  String? rotName;
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'ID')
  String? id;
  @JsonKey(name: 'Date')
  String? date;

  LoadingHeadermodel({
    this.transactionCode,
    this.rotId,
    this.rotCode,
    this.rotName,
    this.status,
    this.id,
    this.date,
  });

  factory LoadingHeadermodel.fromJson(Map<String, dynamic> json) {
    return _$LoadingHeadermodelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoadingHeadermodelToJson(this);
}
