import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/models/material_req_rejection_in_model/MaterialReqRejectionInModel.dart';
import 'package:customer_connect/feature/data/models/material_req_rejection_out_model/MaterialReqrejectionOutModel.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../data/abstractrepo/abstractrepo.dart';

part 'material_req_rejection_event.dart';
part 'material_req_rejection_state.dart';
part 'material_req_rejection_bloc.freezed.dart';

@injectable
class MaterialReqRejectionBloc
    extends Bloc<MaterialReqRejectionEvent, MaterialReqRejectionState> {
  final IMaterialReqHeaderRepo materialreqrejectRepo;

  MaterialReqRejectionBloc(this.materialreqrejectRepo)
      : super(MaterialReqRejectionState.initial()) {
    on<MaterialreqrejectionSuccessevent>((event, emit) async {
      Either<MainFailures, MaterialReqrejectionOutModel> reject =
          await materialreqrejectRepo.materialRejection(event.approvalInModel);
      emit(reject.fold((l) => const MaterialReqRejectFailedState(),
          (r) => MaterialReqRejectSuccessState(response: r)));

      on<MaterialreqRejectionLoadingevent>((event, emit) {
        emit(const MaterialReqLoadingState());
      });
      on<MaterialReqRejecetionClearevent>((event, emit) {
        emit(const MaterialReqRejectSuccessState(response: null));
      });
    });
  }
}
