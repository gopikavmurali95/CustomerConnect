import 'package:json_annotation/json_annotation.dart';

part 'cus_documents_model.g.dart';

@JsonSerializable()
class CusDocumentsModel {
  @JsonKey(name: 'DocName')
  String? docName;
  @JsonKey(name: 'DocUrl')
  String? docUrl;
  @JsonKey(name: 'FromDate')
  String? fromDate;
  @JsonKey(name: 'EndDate')
  String? endDate;

  CusDocumentsModel({
    this.docName,
    this.docUrl,
    this.fromDate,
    this.endDate,
  });

  factory CusDocumentsModel.fromJson(Map<String, dynamic> json) {
    return _$CusDocumentsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CusDocumentsModelToJson(this);
}
