part of 'partial_delivery_approval_bloc.dart';

@freezed
class PartialDeliveryApprovalState with _$PartialDeliveryApprovalState {
  const factory PartialDeliveryApprovalState.getPartialDeliveryApprovalState(
          {required PartialDeliveryApprovalOutparasModel? approvals}) =
      GetPartialDeliveryApprovalState;

  const factory PartialDeliveryApprovalState.partialDeliveryApprovalLoading() =
      PartialDeliveryApprovalLoading;

  const factory PartialDeliveryApprovalState.partialDeliveryApprovslFailed() =
      PartialDeliveryApprovslFailed;

  factory PartialDeliveryApprovalState.initial() =>
      const PartialDeliveryApprovalState.getPartialDeliveryApprovalState(
          approvals: null);
}
