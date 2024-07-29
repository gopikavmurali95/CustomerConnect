part of 'inverntory_trans_ex_pand_cubit.dart';

@freezed
class InverntoryTransExPandState with _$InverntoryTransExPandState {
  const factory InverntoryTransExPandState.expandInvtryTransContainerState(
      {required bool isExpanded}) = ExpandInvtryTransContainerState;

  factory InverntoryTransExPandState.initial() =>
      const InverntoryTransExPandState.expandInvtryTransContainerState(
          isExpanded: false);
}
