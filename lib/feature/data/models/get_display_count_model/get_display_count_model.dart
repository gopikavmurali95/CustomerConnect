import 'package:json_annotation/json_annotation.dart';

part 'get_display_count_model.g.dart';

@JsonSerializable()
class GetDisplayCountModel {
  @JsonKey(name: 'New')
  String? neww;
  @JsonKey(name: 'Approved')
  String? approved;
  @JsonKey(name: 'Active')
  String? active;

  GetDisplayCountModel({required this.neww, this.approved, this.active});

  factory GetDisplayCountModel.fromJson(Map<String, dynamic> json) {
    return _$GetDisplayCountModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetDisplayCountModelToJson(this);
}
