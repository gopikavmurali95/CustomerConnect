part of 'loading_header_bloc.dart';

@freezed
class LoadingHeaderEvent with _$LoadingHeaderEvent {
  const factory LoadingHeaderEvent.getLoadingHeaderEvent(
      {required LoadingHeaderInModel loadingin,
      required String searchQuery}) = GetLoadingHeaderEvent;

  const factory LoadingHeaderEvent.clearLoadingHeadderEvent() =
      ClearLoadingHeadderEvent;
}
