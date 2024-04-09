part of 'cus_inv_detail_bloc_bloc.dart';

@freezed
class CusInvDetailBlocEvent with _$CusInvDetailBlocEvent {
  const factory CusInvDetailBlocEvent.getCusInvDetailsEvent(
      {required String invId,
      required String searchQuery}) = GetCusInvDetailsEvent;

  const factory CusInvDetailBlocEvent.clearinvDetails() = ClearinvDetails;
}
