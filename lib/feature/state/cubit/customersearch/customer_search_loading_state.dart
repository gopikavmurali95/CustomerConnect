part of 'customer_search_loading_cubit.dart';

@freezed
class CustomerSearchLoadingState with _$CustomerSearchLoadingState {
  const factory CustomerSearchLoadingState.searchLoadingState() =
      SearchLoadingState;
  const factory CustomerSearchLoadingState.removeSearchLloading() =
      RemoveSearchLloading;

  factory CustomerSearchLoadingState.initial() =>
      const CustomerSearchLoadingState.removeSearchLloading();
}
