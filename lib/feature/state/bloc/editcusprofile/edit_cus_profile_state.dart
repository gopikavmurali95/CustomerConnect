part of 'edit_cus_profile_bloc.dart';

@freezed
class EditCusProfileState with _$EditCusProfileState {
  const factory EditCusProfileState.editProfileState(
      {required EditProfileRespModel? editrep}) = EditProfileState;
  const factory EditCusProfileState.editFailedState() = EditFailedState;
  const factory EditCusProfileState.editLoadingState() = EditLoadingState;

  factory EditCusProfileState.initial() =>
      const EditCusProfileState.editProfileState(editrep: null);
}
