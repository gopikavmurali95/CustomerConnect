part of 'customer_transaction_target_count_bloc.dart';

@freezed
class CustomerTransactionTargetCountState
    with _$CustomerTransactionTargetCountState {
  const factory CustomerTransactionTargetCountState.targetCountSuccessState(
          {required CustomerTransactionTargetCount? count}) =
      TargetCountSuccessState;

  const factory CustomerTransactionTargetCountState.targetCountFailureState() =
      TargetCountFailureState;

  factory CustomerTransactionTargetCountState.initial() =>
      const CustomerTransactionTargetCountState.targetCountSuccessState(
          count: null);
}
