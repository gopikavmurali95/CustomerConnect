import 'package:json_annotation/json_annotation.dart';

part 'stamped_copy_model.g.dart';

@JsonSerializable()
class StampedCopyModel {
  @JsonKey(name: 'Stamped')
  String? stamped;
  @JsonKey(name: 'TransID')
  String? transId;

  StampedCopyModel({this.stamped, this.transId});

  factory StampedCopyModel.fromJson(Map<String, dynamic> json) {
    return _$StampedCopyModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$StampedCopyModelToJson(this);
}
