part of 'load_req_header_bloc.dart';

@freezed
class LoadReqHeaderEvent with _$LoadReqHeaderEvent {
  const factory LoadReqHeaderEvent.loadreqSuccessEvent(
      {required String userId,
      required String mode,
      required String searchQuery}) = LoadreqSuccessEvent;
  const factory LoadReqHeaderEvent.loadreqClearEvent() = LoadreqClearEvent;
}
