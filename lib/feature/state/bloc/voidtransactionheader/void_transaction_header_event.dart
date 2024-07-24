part of 'void_transaction_header_bloc.dart';

@freezed
class VoidTransactionHeaderEvent with _$VoidTransactionHeaderEvent {
  const factory VoidTransactionHeaderEvent.getvoidTransactionHeaderEvent(
      {required String statusValue,
      required String searchQuery}) = GetVoidTransactionHeaderEvent;

  const factory VoidTransactionHeaderEvent.clearVoidTransactionHeader() =
      ClearVoidTransactionHeader;
}
