import 'package:json_annotation/json_annotation.dart';

part 'must_sell_i_json_model.g.dart';

@JsonSerializable()
class MustSellIJsonModel {
  @JsonKey(name: 'msa_id')
  String? msaId;
  @JsonKey(name: 'Status')
  String? status;

  MustSellIJsonModel({this.msaId, this.status});

  factory MustSellIJsonModel.fromJson(Map<String, dynamic> json) {
    return _$MustSellIJsonModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MustSellIJsonModelToJson(this);
}
