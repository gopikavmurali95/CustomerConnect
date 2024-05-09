part of 'load_transfer_header_bloc.dart';

@freezed
class LoadTransferHeaderState with _$LoadTransferHeaderState {
  const factory LoadTransferHeaderState.getAllLoadTransferHeadersState(
          {required List<LoadTransferApprovalHeaderModel>? headers}) =
      GetAllLoadTransferHeadersState;

  const factory LoadTransferHeaderState.loadTransferHeaderFailedState() =
      LoadTransferHeaderFailedState;

  factory LoadTransferHeaderState.initial() =>
      const LoadTransferHeaderState.getAllLoadTransferHeadersState(
          headers: null);
}
