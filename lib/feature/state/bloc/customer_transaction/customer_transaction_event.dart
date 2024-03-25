part of 'customer_transaction_bloc.dart';

@freezed
class CustomerTransactionEvent with _$CustomerTransactionEvent {
  const factory CustomerTransactionEvent.cusTransactionSuccessEvent(
      {required String userID}) = CusTransactionSuccessEvent;
  const factory CustomerTransactionEvent.cusTransactionFailedEvent() =
      CusTransactionFailedEvent;
}
