part of 'load_transfer_detail_bloc.dart';

@freezed
class LoadTransferDetailState with _$LoadTransferDetailState {
  const factory LoadTransferDetailState.getLoadTransferDetailState(
          {required List<LoadTransferDetailModel>? details}) =
      GetLoadTransferDetailState;

  const factory LoadTransferDetailState.loadTransferDetailFailedState() =
      LoadTransferDetailFailedState;

  factory LoadTransferDetailState.initial() =>
      const LoadTransferDetailState.getLoadTransferDetailState(details: null);
}
