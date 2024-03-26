import 'package:json_annotation/json_annotation.dart';

part 'cus_ins_tr_n_counts.g.dart';

@JsonSerializable()
class CusInsTrNCounts {
  @JsonKey(name: 'Invoice')
  String? invoice;
  @JsonKey(name: 'AR')
  String? ar;
  @JsonKey(name: 'SaleOrder')
  String? saleOrder;
  @JsonKey(name: 'SarviceJob')
  String? sarviceJob;

  CusInsTrNCounts({this.invoice, this.ar, this.saleOrder, this.sarviceJob});

  factory CusInsTrNCounts.fromJson(Map<String, dynamic> json) {
    return _$CusInsTrNCountsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CusInsTrNCountsToJson(this);
}
