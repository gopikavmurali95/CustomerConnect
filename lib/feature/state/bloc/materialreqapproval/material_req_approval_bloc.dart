import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/models/material_req_approval_in_model/MaterialReqApprvalInModel.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../data/abstractrepo/abstractrepo.dart';
import '../../../data/models/material_req_approval_out_model/MaterialReqApprovalOutModel.dart';

part 'material_req_approval_event.dart';
part 'material_req_approval_state.dart';
part 'material_req_approval_bloc.freezed.dart';
@injectable
class MaterialReqApprovalBloc extends Bloc<MaterialReqApprovalEvent, MaterialReqApprovalState> {

  final IMaterialReqHeaderRepo materialReqApprovalRepo;
  MaterialReqApprovalBloc(this.materialReqApprovalRepo) :
        super(MaterialReqApprovalState.initial()) {
    on<MaterialReqApprovalSuccessEvent>((event, emit) async {
      Either<MainFailures,MaterialReqApprovalOutModel> approve =
      await materialReqApprovalRepo.materialApproval(event.approvalInModel);
      emit(approve.fold((l) => const MaterialReqApprovalFailedState(),
              (r) => const MaterialReqApprovalSuccessState(response: null)));
    });

    on<MaterialReqApprovalLoadingEvent>((event, emit) {
      emit(const MaterialReqApprovalLoadingState());
    });
    on<MaterialReqApprovalClearEvent>((event, emit) {
      emit(const MaterialReqApprovalSuccessState(response: null));

    });
  }
}
