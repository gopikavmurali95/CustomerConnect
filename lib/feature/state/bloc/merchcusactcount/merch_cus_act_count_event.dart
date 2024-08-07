part of 'merch_cus_act_count_bloc.dart';

@freezed
class MerchCusActCountEvent with _$MerchCusActCountEvent {
  const factory MerchCusActCountEvent.getCusActCountEvent(
      {required String fromDate, required String toDate}) = GetCusActCountEvent;
  const factory MerchCusActCountEvent.cusActCountClearEvent() =
      CusActCountClearEvent;
}
