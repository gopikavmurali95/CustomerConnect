part of 'customers_list_bloc_bloc.dart';

@freezed
class CustomersListBlocState with _$CustomersListBlocState {
  const factory CustomersListBlocState.getCustomersSstate(
      {required List<CusInsCustomersModel>? customers}) = GetCustomersSstate;

  const factory CustomersListBlocState.getcustomersFailedState() =
      GetcustomersFailedState;

  const factory CustomersListBlocState.customersResetState() =
      CustomersResetState;

  factory CustomersListBlocState.initial() =>
      const CustomersListBlocState.getCustomersSstate(customers: null);
}
