part of 'cus_ins_customers_count_bloc.dart';

@freezed
class CusInsCustomersCountEvent with _$CusInsCustomersCountEvent {
  const factory CusInsCustomersCountEvent.getCustomersCountEvent({required String userId,
      required String area,
      required String subarea,
      required String route,
      required String searchString,
      required String pagenum}) = GetCustomersCountEvent;

      const factory CusInsCustomersCountEvent.clearCustomerCount() = ClearCustomerCount;
      
  
}