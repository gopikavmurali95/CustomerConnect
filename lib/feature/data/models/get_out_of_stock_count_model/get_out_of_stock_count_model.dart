import 'package:json_annotation/json_annotation.dart';

part 'get_out_of_stock_count_model.g.dart';

@JsonSerializable()
class GetOutOfStockCountModel {
  @JsonKey(name: 'ItemCount')
  int? itemCount;
  @JsonKey(name: 'CusCount')
  int? cusCount;

  GetOutOfStockCountModel({this.itemCount, this.cusCount});

  factory GetOutOfStockCountModel.fromJson(Map<String, dynamic> json) {
    return _$GetOutOfStockCountModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetOutOfStockCountModelToJson(this);
}
