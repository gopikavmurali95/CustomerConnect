// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'picking_and_loadin_counts_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PickingAndLoadinCountsModel _$PickingAndLoadinCountsModelFromJson(
        Map<String, dynamic> json) =>
    PickingAndLoadinCountsModel(
      pickingTotal: json['PickingTotal'] as String?,
      pickingNotStarted: json['PickingNotStarted'] as String?,
      pickingNotStartedRoute: json['PickingNotStartedRoute'] as String?,
      pickingOngoing: json['PickingOngoing'] as String?,
      pickingOngoingRoute: json['PickingOngoingRoute'] as String?,
      pickingCompleted: json['PickingCompleted'] as String?,
      pickingCompletedRoute: json['PickingCompletedRoute'] as String?,
      loadInTotal: json['LoadInTotal'] as String?,
      loadInPending: json['LoadInPending'] as String?,
      loadInPendingRoute: json['LoadInPendingRoute'] as String?,
      loadInCompleted: json['LoadInCompleted'] as String?,
      loadInCompletedRoute: json['LoadInCompletedRoute'] as String?,
      loadInCancelled: json['LoadInCancelled'] as String?,
      loadInCancelledRoute: json['LoadInCancelledRoute'] as String?,
    );

Map<String, dynamic> _$PickingAndLoadinCountsModelToJson(
        PickingAndLoadinCountsModel instance) =>
    <String, dynamic>{
      'PickingTotal': instance.pickingTotal,
      'PickingNotStarted': instance.pickingNotStarted,
      'PickingNotStartedRoute': instance.pickingNotStartedRoute,
      'PickingOngoing': instance.pickingOngoing,
      'PickingOngoingRoute': instance.pickingOngoingRoute,
      'PickingCompleted': instance.pickingCompleted,
      'PickingCompletedRoute': instance.pickingCompletedRoute,
      'LoadInTotal': instance.loadInTotal,
      'LoadInPending': instance.loadInPending,
      'LoadInPendingRoute': instance.loadInPendingRoute,
      'LoadInCompleted': instance.loadInCompleted,
      'LoadInCompletedRoute': instance.loadInCompletedRoute,
      'LoadInCancelled': instance.loadInCancelled,
      'LoadInCancelledRoute': instance.loadInCancelledRoute,
    };
