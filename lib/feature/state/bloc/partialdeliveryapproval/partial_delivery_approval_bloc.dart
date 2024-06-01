import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/partial_delivery_approval_model/partial_delivery_approval_model.dart';
import 'package:customer_connect/feature/data/models/partial_delivery_approval_outparas_model/partial_delivery_approval_outparas_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'partial_delivery_approval_event.dart';
part 'partial_delivery_approval_state.dart';
part 'partial_delivery_approval_bloc.freezed.dart';

@injectable
class PartialDeliveryApprovalBloc
    extends Bloc<PartialDeliveryApprovalEvent, PartialDeliveryApprovalState> {
  final IPartialDeliveryRepo approvalsout;
  PartialDeliveryApprovalBloc(this.approvalsout)
      : super(PartialDeliveryApprovalState.initial()) {
    on<GetPartialDeliveryApprovalEvent>((event, emit) async {
      Either<MainFailures, PartialDeliveryApprovalOutparasModel> approvallist =
          await approvalsout.approvePartialDelivery(event.approvalin);
      emit(approvallist.fold((l) => const PartialDeliveryApprovslFailed(),
          (r) => GetPartialDeliveryApprovalState(approvals: r)));
    });
    on<PartialDeliveryLoadingEvent>((event, emit) {
      emit(const PartialDeliveryApprovalLoading());
    });
  }
}
