import 'package:json_annotation/json_annotation.dart';

part 'customer_live_location_model.g.dart';

@JsonSerializable()
class CustomerLiveLocationModel {
  @JsonKey(name: 'User')
  String? user;
  @JsonKey(name: 'Duration')
  String? duration;
  @JsonKey(name: 'Date')
  String? date;
  @JsonKey(name: 'Time')
  String? time;
  @JsonKey(name: 'Geocode')
  String? geocode;
  @JsonKey(name: 'UserAr')
  String? userAr;
  CustomerLiveLocationModel(
      {this.user,
      this.duration,
      this.date,
      this.time,
      this.geocode,
      this.userAr});

  factory CustomerLiveLocationModel.fromJson(Map<String, dynamic> json) {
    return _$CustomerLiveLocationModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CustomerLiveLocationModelToJson(this);
}
