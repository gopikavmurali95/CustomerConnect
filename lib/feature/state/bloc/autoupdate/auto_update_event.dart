part of 'auto_update_bloc.dart';

@freezed
class AutoUpdateEvent with _$AutoUpdateEvent {
  const factory AutoUpdateEvent.checkForUpdatesEvent({required String type}) =
      CheckForUpdatesEvent;
}
