part of 'assets_tracked_count_bloc.dart';

@freezed
class AssetsTrackedCountEvent with _$AssetsTrackedCountEvent {

  const factory AssetsTrackedCountEvent.assetsTrackedCountSuccessEvent
  ({required String userId}) = AssetsTrackedCountSuccessEvent;
  

  const factory AssetsTrackedCountEvent.assetsTrackedCountClearEvent() = AssetsTrackedCountClearEvent;
  
}