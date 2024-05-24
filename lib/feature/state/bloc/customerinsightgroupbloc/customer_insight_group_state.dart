part of 'customer_insight_group_bloc.dart';

@freezed
class CustomerInsightGroupState with _$CustomerInsightGroupState {
  const factory CustomerInsightGroupState.getCusInsightGroupSatet(
          {required List<CustomerInsightGroupModel>? groupData}) =
      GetCusInsightGroupSatet;

  const factory CustomerInsightGroupState.customerInsightGroupFailedState() =
      CustomerInsightGroupFailedState;

  factory CustomerInsightGroupState.initial() =>
      const CustomerInsightGroupState.getCusInsightGroupSatet(groupData: null);
}
