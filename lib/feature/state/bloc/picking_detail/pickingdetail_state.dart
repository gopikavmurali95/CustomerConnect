part of 'pickingdetail_bloc.dart';

@freezed
class PickingdetailState with _$PickingdetailState {

  const factory PickingdetailState.pickingSuccessState({required List<PickingDetailModel>? pdetailList}) =
  PickingSuccessState;
  const factory PickingdetailState.pickingFailedState() = PickingFailedState;

   factory PickingdetailState.initial() => const PickingdetailState.pickingSuccessState(pdetailList: null);
}
