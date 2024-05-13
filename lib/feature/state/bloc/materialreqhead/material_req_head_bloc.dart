import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../data/abstractrepo/abstractrepo.dart';
import '../../../data/models/material_req_header_model/MaterialReqHeaderModel.dart';

part 'material_req_head_event.dart';
part 'material_req_head_state.dart';
part 'material_req_head_bloc.freezed.dart';

@injectable
class MaterialReqHeadBloc extends Bloc<MaterialReqHeadEvent, MaterialReqHeadState> {
  final IMaterialReqHeaderRepo materialheadrepo;

  MaterialReqHeadBloc(this.materialheadrepo) : super(MaterialReqHeadState.initial()) {
    on<MaterialHeadSuccessEvent>((event, emit) async{

      Either<MainFailures, List<MaterialReqHeaderModel>> mheadlist =
      await materialheadrepo.materialreqheaderList(event.userId);
      emit(mheadlist.fold((l) => const  MaterialreqheadFailed(),
              (r) => Materialreqheadsuccess(materialheader: r)));

    });

    on<MaterialReqHeadClearEvent>((event, emit) {
      emit( const Materialreqheadsuccess(materialheader: null
      ));
    });
  }
}
