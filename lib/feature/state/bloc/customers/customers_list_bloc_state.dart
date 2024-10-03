part of 'customers_list_bloc_bloc.dart';

@freezed
class CustomersListBlocState with _$CustomersListBlocState {
  const factory CustomersListBlocState.getCustomersSstate(
      {required List<CusInsCustomersModel>? customers,
      required bool isLoading}) = GetCustomersSstate;

  factory CustomersListBlocState.initial() =>
      const CustomersListBlocState.getCustomersSstate(customers: null, isLoading: false);
}
