part of 'load_transfer_header_bloc.dart';

@freezed
class LoadTransferHeaderEvent with _$LoadTransferHeaderEvent {
  const factory LoadTransferHeaderEvent.getAllLoadTransferHeadersEvent(
      {required String userID,
      required String mode,
      required String searchQuery}) = GetAllLoadTransferHeadersEvent;

  const factory LoadTransferHeaderEvent.clearLoadtransferHeaderEvent() =
      ClearLoadtransferHeaderEvent;
}
