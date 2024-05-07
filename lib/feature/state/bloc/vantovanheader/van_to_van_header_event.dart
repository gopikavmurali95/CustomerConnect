part of 'van_to_van_header_bloc.dart';

@freezed
class VanToVanHeaderEvent with _$VanToVanHeaderEvent {
  const factory VanToVanHeaderEvent.getVanToVanHeaderEvent(
      {required String userID}) = getVanToVanHeaderEvent;
  const factory VanToVanHeaderEvent.clearVanToVanHeaderEvent() =
      ClearVanToVanHeaderEvent;
}
