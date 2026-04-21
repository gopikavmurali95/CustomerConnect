part of 'customer_transaction_target_count_bloc.dart';

@freezed
class CustomerTransactionTargetCountEvent
    with _$CustomerTransactionTargetCountEvent {
  const factory CustomerTransactionTargetCountEvent.targetCountSuccessEvent(
      {required String userId}) = TargetCountSuccessEvent;
}
