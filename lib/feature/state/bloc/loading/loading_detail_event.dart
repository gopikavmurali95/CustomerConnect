part of 'loading_detail_bloc.dart';

@freezed
class LoadingDetailEvent with _$LoadingDetailEvent {
  const factory LoadingDetailEvent.getloadingDetailEvent({required String iD}) =
      GetloadingDetailEvent;

  const factory LoadingDetailEvent.clearLoadingDetailEvent() =
      ClearLoadingDetailEvent;
}

