import 'package:json_annotation/json_annotation.dart';

part 'item_listing_count.g.dart';

@JsonSerializable()
class ItemListingCount {
  @JsonKey(name: 'Total_Count')
  String? totalCount;

  ItemListingCount({this.totalCount});

  factory ItemListingCount.fromJson(Map<String, dynamic> json) {
    return _$ItemListingCountFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ItemListingCountToJson(this);
}
