part of 'customer_transaction_bloc.dart';

@freezed
class CustomerTransactionState with _$CustomerTransactionState {
  const factory CustomerTransactionState.cusTransactionSuccessState(
          {required CustomerTransactionModel? customertrans}) =
      CusTransactionSuccessState;

  const factory CustomerTransactionState.cusTransactionFailedState() =
      CusTransactionFailedState;

  factory CustomerTransactionState.initial() =>
      const CustomerTransactionState.cusTransactionSuccessState(
          customertrans: null);
}
