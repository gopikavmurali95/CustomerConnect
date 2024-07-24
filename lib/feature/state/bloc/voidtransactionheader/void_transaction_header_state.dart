part of 'void_transaction_header_bloc.dart';

@freezed
class VoidTransactionHeaderState with _$VoidTransactionHeaderState {
  const factory VoidTransactionHeaderState.getvoidTransactionHeaderState(
          {required List<VoidTransactionHeaderModel>? headers}) =
      GetVoidTransactionHeaderState;

  const factory VoidTransactionHeaderState.voidTransactionHeaderFailure() =
      VoidTransactionHeaderFailure;

  factory VoidTransactionHeaderState.initial() =>
      const VoidTransactionHeaderState.getvoidTransactionHeaderState(
          headers: null);
}
