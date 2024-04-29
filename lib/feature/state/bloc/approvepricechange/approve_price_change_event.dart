part of 'approve_price_change_bloc.dart';

@freezed
class ApprovePriceChangeEvent with _$ApprovePriceChangeEvent {
  const factory ApprovePriceChangeEvent.getPricChangeApprovalEvent(
      {required String prdID,
      required String userID,
      required String jsonString}) = GetPricChangeApprovalEvent;

  const factory ApprovePriceChangeEvent.addApprovalLoadinEvent() =
      AddApprovalLoadinEvent;
}
