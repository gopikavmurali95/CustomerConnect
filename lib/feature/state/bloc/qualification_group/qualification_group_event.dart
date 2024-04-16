part of 'qualification_group_bloc.dart';

@freezed
class QualificationGroupEvent with _$QualificationGroupEvent {
  const factory QualificationGroupEvent.getGroupWiseDataEvent(
      {required String id,
      required String mode,
      required String searchQuery}) = GetGroupWiseDataEvent;

  const factory QualificationGroupEvent.clearGroupData() = ClearGroupData;
}
