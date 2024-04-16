import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_search_loading_state.dart';
part 'customer_search_loading_cubit.freezed.dart';

class CustomerSearchLoadingCubit extends Cubit<CustomerSearchLoadingState> {
  CustomerSearchLoadingCubit() : super(CustomerSearchLoadingState.initial());

  addSearchLoadingEvent() {
    emit(const SearchLoadingState());
  }

  removeLoadingEvent() {
    emit(const RemoveSearchLloading());
  }
}
