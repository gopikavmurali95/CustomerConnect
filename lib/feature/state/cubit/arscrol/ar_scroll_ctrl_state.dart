part of 'ar_scroll_ctrl_cubit.dart';

@freezed
class ArScrollCtrlState with _$ArScrollCtrlState {
  const factory ArScrollCtrlState.scrollPositionState({required bool isOnTop}) =
      ScrollPositionState;

  factory ArScrollCtrlState.initial() =>
      const ArScrollCtrlState.scrollPositionState(isOnTop: true);
}
