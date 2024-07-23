part of 'load_req_detail_bloc.dart';

@freezed
class LoadReqDetailEvent with _$LoadReqDetailEvent {
  const factory LoadReqDetailEvent.getloadreqdetailEvent(
      {required String reqId,
      required String searchQuery}) = GetloadreqdetailEvent;

  const factory LoadReqDetailEvent.clearLodReqDetailEvent() =
      ClearLodReqDetailEvent;
  // const factory LoadReqDetailEvent.started() = _Started;
}
