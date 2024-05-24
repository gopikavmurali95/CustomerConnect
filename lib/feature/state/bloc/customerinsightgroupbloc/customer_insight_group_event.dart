part of 'customer_insight_group_bloc.dart';

@freezed
class CustomerInsightGroupEvent with _$CustomerInsightGroupEvent {
  const factory CustomerInsightGroupEvent.getGroupWiseDataEvent(
      {required String id,
      required String mode,
      required String searchQuery}) = GetGroupWiseDataEvent;

  const factory CustomerInsightGroupEvent.clearGroupData() = ClearGroupData;
}
