part of 'void_transaction_selection_cubit.dart';

@freezed
class VoidTransactionSelectionState with _$VoidTransactionSelectionState {
  const factory VoidTransactionSelectionState.voidTransactionSelectedState(
          {required List<VoidTransactionJsonModel> selected}) =
      VoidTransactionSelectedState;

  factory VoidTransactionSelectionState.initial() =>
      const VoidTransactionSelectionState.voidTransactionSelectedState(
          selected: []);
}
