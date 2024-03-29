part of 'ar_header_bloc.dart';

@freezed
class ArHeaderState with _$ArHeaderState {
  const factory ArHeaderState.arHeaderSuccessState(
      {required ArTotalCollectionModel? artotal,
      required List<ArHeaderModel>? arHeaders}) = ArHeaderSuccessState;

  const factory ArHeaderState.arHeaderFailedState() = ArHeaderFailedState;

  factory ArHeaderState.initial() =>
      const ArHeaderState.arHeaderSuccessState(artotal: null, arHeaders: null);
}
