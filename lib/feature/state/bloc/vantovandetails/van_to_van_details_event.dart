part of 'van_to_van_details_bloc.dart';

@freezed
class VanToVanDetailsEvent with _$VanToVanDetailsEvent {
  const factory VanToVanDetailsEvent.getVanToVanDetailEvent(
      {required String reqID}) = GetVanToVanDetailEvent;

  const factory VanToVanDetailsEvent.clearVanToVanDetailEvent() =
      clearVanToVanDetailEvent;
}
