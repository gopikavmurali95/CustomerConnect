part of 'cus_profile_bloc.dart';

@freezed
class CusProfileEvent with _$CusProfileEvent {
  const factory CusProfileEvent.getCusProfileEvent(
      {required String userID, required String cusID}) = GetCusProfileEvent;
  const factory CusProfileEvent.clearProfileEvent() = ClearProfileEvent;
}
