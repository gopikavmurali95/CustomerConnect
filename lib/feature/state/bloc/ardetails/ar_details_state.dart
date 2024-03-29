part of 'ar_details_bloc.dart';

@freezed
class ArDetailsState with _$ArDetailsState {
  const factory ArDetailsState.getArDetailsState(
      {required List<ArDetailModel>? ardetails}) = GetArDetailsState;
  const factory ArDetailsState.ardetailsfailedState() = ArdetailsfailedState;

  factory ArDetailsState.initial() =>
      const ArDetailsState.getArDetailsState(ardetails: null);
}
