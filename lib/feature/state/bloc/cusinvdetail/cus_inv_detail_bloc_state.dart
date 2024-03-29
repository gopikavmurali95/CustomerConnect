part of 'cus_inv_detail_bloc_bloc.dart';

@freezed
class CusInvDetailBlocState with _$CusInvDetailBlocState {
  const factory CusInvDetailBlocState.getcusInvDetailState(
      {required List<CusInsOnvDetailModel>? details,
      required List<CusInsInvTypeModel>? types}) = GetcusInvDetailState;

  const factory CusInvDetailBlocState.getcusInvFailedState() =
      GetcusInvFailedState;

  factory CusInvDetailBlocState.initial() =>
      const CusInvDetailBlocState.getcusInvDetailState(
          details: null, types: null);
}
