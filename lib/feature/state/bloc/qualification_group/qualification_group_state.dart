part of 'qualification_group_bloc.dart';

@freezed
class QualificationGroupState with _$QualificationGroupState {
  const factory QualificationGroupState.getGroupwiseData(
          {required List<QualificationGroupModel>? groupdata}) =
      GetGroupwiseDataState;

  const factory QualificationGroupState.groupWiseDataFailed() =
      GroupWiseDataFailed;

  factory QualificationGroupState.initial() =>
      const QualificationGroupState.getGroupwiseData(groupdata: null);
}
