part of 'f_ield_service_detail_bloc.dart';

@freezed
class FIeldServiceDetailEvent with _$FIeldServiceDetailEvent {
  const factory FIeldServiceDetailEvent.getAllFieldServiceDetailEvent(
      {required String reqId}) = GetAllFieldServiceDetailEvent;

  const factory FIeldServiceDetailEvent.clearFieldServiceDetailEvent() =
      ClearFieldServiceDetailEvent;
}
