import 'package:json_annotation/json_annotation.dart';

part 'picking_and_loadin_counts_model.g.dart';

@JsonSerializable()
class PickingAndLoadinCountsModel {
  @JsonKey(name: 'PickingTotal')
  String? pickingTotal;
  @JsonKey(name: 'PickingNotStarted')
  String? pickingNotStarted;
  @JsonKey(name: 'PickingNotStartedRoute')
  String? pickingNotStartedRoute;
  @JsonKey(name: 'PickingOngoing')
  String? pickingOngoing;
  @JsonKey(name: 'PickingOngoingRoute')
  String? pickingOngoingRoute;
  @JsonKey(name: 'PickingCompleted')
  String? pickingCompleted;
  @JsonKey(name: 'PickingCompletedRoute')
  String? pickingCompletedRoute;
  @JsonKey(name: 'LoadInTotal')
  String? loadInTotal;
  @JsonKey(name: 'LoadInPending')
  String? loadInPending;
  @JsonKey(name: 'LoadInPendingRoute')
  String? loadInPendingRoute;
  @JsonKey(name: 'LoadInCompleted')
  String? loadInCompleted;
  @JsonKey(name: 'LoadInCompletedRoute')
  String? loadInCompletedRoute;
  @JsonKey(name: 'LoadInCancelled')
  String? loadInCancelled;
  @JsonKey(name: 'LoadInCancelledRoute')
  String? loadInCancelledRoute;

  PickingAndLoadinCountsModel({
    this.pickingTotal,
    this.pickingNotStarted,
    this.pickingNotStartedRoute,
    this.pickingOngoing,
    this.pickingOngoingRoute,
    this.pickingCompleted,
    this.pickingCompletedRoute,
    this.loadInTotal,
    this.loadInPending,
    this.loadInPendingRoute,
    this.loadInCompleted,
    this.loadInCompletedRoute,
    this.loadInCancelled,
    this.loadInCancelledRoute,
  });

  factory PickingAndLoadinCountsModel.fromJson(Map<String, dynamic> json) {
    return _$PickingAndLoadinCountsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PickingAndLoadinCountsModelToJson(this);
}
