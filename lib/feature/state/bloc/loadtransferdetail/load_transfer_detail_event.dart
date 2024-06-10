part of 'load_transfer_detail_bloc.dart';

@freezed
class LoadTransferDetailEvent with _$LoadTransferDetailEvent {
  const factory LoadTransferDetailEvent.getAllLoadTransferDetailEvent(
      {required String reqID,
      required String searchQuery}) = GetAllLoadTransferDetailEvent;

  const factory LoadTransferDetailEvent.clearLoadTransferDetailEvent() =
      ClearLoadTransferDetailEvent;
}
