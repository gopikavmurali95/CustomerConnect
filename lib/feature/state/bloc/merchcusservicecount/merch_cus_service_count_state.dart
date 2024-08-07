part of 'merch_cus_service_count_bloc.dart';

@freezed
class MerchCusServiceCountState with _$MerchCusServiceCountState {
  const factory MerchCusServiceCountState.getCusServiceCountState(
          {required MerchCuServiceCountModel? cusServicecount}) =
      GetCusServiceCountState;

  const factory MerchCusServiceCountState.cusServiceCountFailedstate() =
      CusServiceCountFailedstate;

  factory MerchCusServiceCountState.initial() =>
      const MerchCusServiceCountState.getCusServiceCountState(
          cusServicecount: null);
}
