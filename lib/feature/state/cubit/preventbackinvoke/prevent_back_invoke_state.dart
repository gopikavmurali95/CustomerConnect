part of 'prevent_back_invoke_cubit.dart';

@freezed
class PreventBackInvokeState with _$PreventBackInvokeState {
  const factory PreventBackInvokeState.preventBackInvokeWithReasonState(
      {required String? reson,
      required bool? isApproved}) = PreventBackInvokeWithReasonState;

  factory PreventBackInvokeState.initial() =>
      const PreventBackInvokeState.preventBackInvokeWithReasonState(
          reson: null, isApproved: null);
}
