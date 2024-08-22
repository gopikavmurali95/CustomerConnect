import 'package:json_annotation/json_annotation.dart';

part 'tracking_sales_man_model.g.dart';

@JsonSerializable()
class TrackingSalesManModel {
  @JsonKey(name: 'Customer')
  String? customer;
  @JsonKey(name: 'Duration')
  String? duration;
  @JsonKey(name: 'Date')
  String? date;
  @JsonKey(name: 'Time')
  String? time;
  @JsonKey(name: 'MoveStatus')
  String? moveStatus;
  @JsonKey(name: 'Geocode')
  String? geocode;
  @JsonKey(name: 'CustomerAr')
  String? customerAr;

  TrackingSalesManModel(
      {this.customer,
      this.duration,
      this.date,
      this.time,
      this.moveStatus,
      this.geocode,
      this.customerAr});

  factory TrackingSalesManModel.fromJson(Map<String, dynamic> json) {
    return _$TrackingSalesManModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TrackingSalesManModelToJson(this);
}
