part of 'cus_profile_bloc.dart';

@freezed
class CusProfileState with _$CusProfileState {
  const factory CusProfileState.getCusProfileState(
      {required CuSProfileModel? profile}) = GetCusProfileState;
  const factory CusProfileState.getcusprofileFailedState() =
      GetcusprofileFailedState;

  factory CusProfileState.initial() =>
      const CusProfileState.getCusProfileState(profile: null);
}
