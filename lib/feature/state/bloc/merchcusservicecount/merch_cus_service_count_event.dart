part of 'merch_cus_service_count_bloc.dart';

@freezed
class MerchCusServiceCountEvent with _$MerchCusServiceCountEvent {

  const factory MerchCusServiceCountEvent.getCusserviceCountEvent
  ({required String fromdate,required String toDate}) = GetCusserviceCountEvent;

  const factory MerchCusServiceCountEvent.cusServiceCountClearevent() = CusServiceCountClearevent;
  

}