part of 'edit_cus_profile_bloc.dart';

@freezed
class EditCusProfileEvent with _$EditCusProfileEvent {
  const factory EditCusProfileEvent.editProfileEvent(
      {required EditProfileInModel profile}) = EditProfileEvent;
  const factory EditCusProfileEvent.clearEditStateEvent() = ClearEditStateEvent;
  const factory EditCusProfileEvent.editLoadingEvent() = EditLoadingEvent;
}
