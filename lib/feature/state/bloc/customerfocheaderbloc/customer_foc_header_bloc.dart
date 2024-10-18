import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/customer_foc_header_model/customer_foc_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'customer_foc_header_event.dart';
part 'customer_foc_header_state.dart';
part 'customer_foc_header_bloc.freezed.dart';

@injectable
class CustomerFocHeaderBloc
    extends Bloc<CustomerFocHeaderEvent, CustomerFocHeaderState> {
  final ICustomerFocRepo headerRepo;
  CustomerFocHeaderBloc(this.headerRepo)
      : super(CustomerFocHeaderState.initial()) {
    on<GetCustomerFocHeaderEvent>((event, emit) async {
      List<CustomerFocHeaderModel> searcheditems = [];
      Either<MainFailures, List<CustomerFocHeaderModel>> data =
          await headerRepo.getHeaderList(event.statusValue);
      emit(data.fold((l) => const CustomerFocHeaderFailedState(), (r) {
        searcheditems = r
            .where((element) =>
                element.cfhRtnId!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                element.rotCode!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                element.rotName!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                element.cusCode!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                element.cusName!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        return GetCustomerFocHeaderState(
            header: event.searchQuery.isEmpty ? r : searcheditems);
      }));
    });
    on<ClearCustomerFocHeader>((event, emit) {
      emit(const GetCustomerFocHeaderState(header: null));
    });
  }
}
