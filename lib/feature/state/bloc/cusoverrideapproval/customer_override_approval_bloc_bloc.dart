import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/cus_override_approval_model/cus_override_approval_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'customer_override_approval_bloc_event.dart';
part 'customer_override_approval_bloc_state.dart';
part 'customer_override_approval_bloc_bloc.freezed.dart';

@injectable
class CustomerOverrideApprovalBlocBloc extends Bloc<
    CustomerOverrideApprovalBlocEvent, CustomerOverrideApprovalBlocState> {
  final ICustomerOverrideApprovalRepo overrideRepo;
  CustomerOverrideApprovalBlocBloc(this.overrideRepo)
      : super(CustomerOverrideApprovalBlocState.initial()) {
    on<GetCusOverrideEvent>((event, emit) async {
      List<CusOverrideApprovalModel> searchItems = [];

      Either<MainFailures, List<CusOverrideApprovalModel>> overridecus =
          await overrideRepo.approveOverrideCustomer(event.statusvalue);

      emit(overridecus.fold((l) => const CusOverrideApprovalFailedState(), (r) {
        searchItems = r
            .where((element) =>
                element.ooaApprovalStatus!
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
                    .contains(event.searchQuery.toUpperCase()) ||
                element.ooaType!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        return GetCusOverrideApprovalState(
            cusoverride: event.searchQuery.isEmpty ? r : searchItems);
      }));
    });
    on<ClearCusOverrideEvent>((event, emit) {
      emit(const GetCusOverrideApprovalState(cusoverride: null));
    });
  }
}
