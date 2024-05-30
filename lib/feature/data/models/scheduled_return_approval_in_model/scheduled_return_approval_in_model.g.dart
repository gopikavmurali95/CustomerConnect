// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_return_approval_in_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScheduledReturnApprovalInModel _$ScheduledReturnApprovalInModelFromJson(
        Map<String, dynamic> json) =>
    ScheduledReturnApprovalInModel(
      userId: json['UserId'] as String?,
      returnId: json['ReturnID'] as String?,
      routeId: json['RouteId'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) =>
              ScheduledReturnPrdModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ScheduledReturnApprovalInModelToJson(
        ScheduledReturnApprovalInModel instance) =>
    <String, dynamic>{
      'UserId': instance.userId,
      'ReturnID': instance.returnId,
      'RouteId': instance.routeId,
      'products': instance.products,
    };
