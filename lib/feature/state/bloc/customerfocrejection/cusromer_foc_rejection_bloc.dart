// import 'package:bloc/bloc.dart';
// import 'package:customer_connect/core/failures/failures.dart';
// import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
// import 'package:customer_connect/feature/data/models/customer_foc_approval_in_model/customer_foc_approval_in_model.dart';
// import 'package:customer_connect/feature/data/models/customer_foc_approve_and_reject_model/customer_foc_approve_and_reject_model.dart';
// import 'package:dartz/dartz.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:injectable/injectable.dart';

// part 'cusromer_foc_rejection_event.dart';
// part 'cusromer_foc_rejection_state.dart';
// part 'cusromer_foc_rejection_bloc.freezed.dart';

// @injectable
// class CusromerFocRejectionBloc
//     extends Bloc<CusromerFocRejectionEvent, CusromerFocRejectionState> {
//   final ICustomerFocRepo rejectRepo;
//   CusromerFocRejectionBloc(this.rejectRepo)
//       : super(CusromerFocRejectionState.initial()) {
//     on<FocRejectionEvent>((event, emit) async {
//       Either<MainFailures, CustomerFocApproveAndRejectModel> rejectresp =
//           await rejectRepo.customerFocReject(event.rejectionIn);
//       emit(rejectresp.fold((l) => const FocRejectionFailedState(),
//           (r) => FocRejectionState(reject: r)));
//     });

//     on<ClearFocRejection>((event, emit) {
//       emit(const FocRejectionState(reject: null));
//     });
//   }
// }
