part of 'loading_header_bloc.dart';

@freezed
class LoadingHeaderEvent with _$LoadingHeaderEvent {
  const factory LoadingHeaderEvent.getLoadingHeaderEvent(
      {required LoadingHeaderInModel loadingin}) = GetLoadingHeaderEvent;

  const factory LoadingHeaderEvent.clearLoadingHeadderEvent() =
      ClearLoadingHeadderEvent;
}
