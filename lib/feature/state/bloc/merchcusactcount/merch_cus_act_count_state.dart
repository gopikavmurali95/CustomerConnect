part of 'merch_cus_act_count_bloc.dart';

@freezed
class MerchCusActCountState with _$MerchCusActCountState {
  const factory MerchCusActCountState.getCusActCountState(
      {required GetCusActcountModel? cuscount}) = GetCusActCountState;

  const factory MerchCusActCountState.cusActCountFailedState() =
      CusActCountFailedState;
  factory MerchCusActCountState.initial() =>
      const MerchCusActCountState.getCusActCountState(cuscount: null);
}
