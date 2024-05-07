part of 'load_transfer_header_bloc.dart';

@freezed
class LoadTransferHeaderEvent with _$LoadTransferHeaderEvent {
  const factory LoadTransferHeaderEvent.getAllLoadTransferHeadersEvent(
      {required String userID}) = GetAllLoadTransferHeadersEvent;

  const factory LoadTransferHeaderEvent.clearLoadtransferHeaderEvent() =
      ClearLoadtransferHeaderEvent;
}
