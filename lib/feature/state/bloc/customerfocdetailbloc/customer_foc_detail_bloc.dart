import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/customer_foc_detail_model/customer_foc_detail_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'customer_foc_detail_event.dart';
part 'customer_foc_detail_state.dart';
part 'customer_foc_detail_bloc.freezed.dart';

@injectable
class CustomerFocDetailBloc
    extends Bloc<CustomerFocDetailEvent, CustomerFocDetailState> {
  final ICustomerFocRepo cusFocDetails;
  CustomerFocDetailBloc(this.cusFocDetails)
      : super(CustomerFocDetailState.initial()) {
    on<GetCustomerFocDetailEvent>((event, emit) async {
      List<CustomerFocDetailModel> searcheditems = [];
      Either<MainFailures, List<CustomerFocDetailModel>> data =
          await cusFocDetails.getDetailList(event.headerId);
      emit(data.fold((l) => const CustomerFocDetailFailedState(), (r) {
        searcheditems = r
            .where((element) =>
                element.cfaPrdId!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                element.prdCode!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                element.prdName!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        return GetCustomerFocDetailsState(
            details: event.searchQuery.isEmpty ? r : searcheditems);
      }));
    });
    on<ClearCustomerFocDetails>((event, emit) {
      emit(const GetCustomerFocDetailsState(details: null));
    });
  }
}
