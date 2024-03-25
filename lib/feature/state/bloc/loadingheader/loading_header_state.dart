part of 'loading_header_bloc.dart';

@freezed
class LoadingHeaderState with _$LoadingHeaderState {
  const factory LoadingHeaderState.getloadingHeaderState(
          {required List<LoadingHeadermodel>? loadingheaders}) =
      GetloadingHeaderState;

  const factory LoadingHeaderState.loadingHeaderFailedState() =
      LoadingHeaderFailedState;

  factory LoadingHeaderState.initial() =>
      const LoadingHeaderState.getloadingHeaderState(loadingheaders: null);
}
