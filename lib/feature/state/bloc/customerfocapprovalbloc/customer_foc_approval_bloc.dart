import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/customer_foc_approval_in_model/customer_foc_approval_in_model.dart';
//import 'package:customer_connect/feature/data/models/customer_foc_approval_in_model/customer_foc_approval_in_model.dart';
import 'package:customer_connect/feature/data/models/customer_foc_approve_and_reject_model/customer_foc_approve_and_reject_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'customer_foc_approval_event.dart';
part 'customer_foc_approval_state.dart';
part 'customer_foc_approval_bloc.freezed.dart';

@injectable
class CustomerFocApprovalBloc
    extends Bloc<CustomerFocApprovalEvent, CustomerFocApprovalState> {
  final ICustomerFocRepo approve;
  CustomerFocApprovalBloc(this.approve)
      : super((CustomerFocApprovalState.initial())) {
    on<CustomerFocApprovingEvent>((event, emit) async {
      Either<MainFailures, CustomerFocApproveAndRejectModel> approval =
          await approve.customerFocApprove(event.approveInpara);
      emit(approval.fold((l) => const CustomerFocApprovalFailed(),
          (r) => CustomerFocApproval(approve: r)));
    });

    on<CustomerFocLoadingEvent>((event, emit) {
      emit(const CustomerFocApprovalLoadingState());
    });

    on<ClearCustomerFocApproval>((event, emit) {
      emit(const CustomerFocApproval(approve: null));
    });
  }
}
