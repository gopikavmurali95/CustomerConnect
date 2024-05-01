part of 'approve_price_change_bloc.dart';

@freezed
class ApprovePriceChangeEvent with _$ApprovePriceChangeEvent {
  const factory ApprovePriceChangeEvent.getPricChangeApprovalEvent(
          {required ApprovePriceChangeinModel approval}) =
      GetPricChangeApprovalEvent;

  const factory ApprovePriceChangeEvent.addApprovalLoadinEvent() =
      AddApprovalLoadinEvent;
}
