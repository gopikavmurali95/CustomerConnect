part of 'cus_ins_customers_count_bloc.dart';

@freezed
class CusInsCustomersCountState with _$CusInsCustomersCountState {

  const factory CusInsCustomersCountState.getCustomersCountState({required CusInsCustomerCountModel? count}) = GetCustomersCountState;

  const factory CusInsCustomersCountState.getCustomersCountFailedState() = GetCustomersCountFailedState;
  
  
   factory CusInsCustomersCountState.initial() => const CusInsCustomersCountState.getCustomersCountState(count: null);
}
