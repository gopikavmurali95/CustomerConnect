part of 'auto_update_bloc.dart';

@freezed
class AutoUpdateState with _$AutoUpdateState {
  const factory AutoUpdateState.autoUpdateStatusState(
      {required AutoUpdateRespModel? status}) = AutoUpdateStatusState;

  factory AutoUpdateState.initial() =>
      const AutoUpdateState.autoUpdateStatusState(status: null);
}
