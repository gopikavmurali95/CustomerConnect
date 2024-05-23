part of 'load_req_header_bloc.dart';

@freezed
class LoadReqHeaderEvent with _$LoadReqHeaderEvent {
  const factory LoadReqHeaderEvent.loadreqSuccessEvent({required String userId}) = LoadreqSuccessEvent;
  const factory LoadReqHeaderEvent.loadreqClearEvent() = LoadreqClearEvent;

}
