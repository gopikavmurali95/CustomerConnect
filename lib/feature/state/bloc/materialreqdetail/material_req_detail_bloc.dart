import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../data/abstractrepo/abstractrepo.dart';
import '../../../data/models/material_req_detail_model/MaterialReqDetailModel.dart';
part 'material_req_detail_event.dart';
part 'material_req_detail_state.dart';
part 'material_req_detail_bloc.freezed.dart';

@injectable
class MaterialReqDetailBloc
    extends Bloc<MaterialReqDetailEvent, MaterialReqDetailState> {
  final IMaterialReqHeaderRepo materialdetailrepo;
  MaterialReqDetailBloc(this.materialdetailrepo)
      : super(MaterialReqDetailState.initial()) {
    List<MaterialReqDetailModel> searchlistitems = [];
    on<MaterialReqDetailSuccessEvent>((event, emit) async {
      Either<MainFailures, List<MaterialReqDetailModel>> mdetailList =
          await materialdetailrepo.materialreqdetailList(event.reqId);

      emit(mdetailList.fold((l) => const MaterialreqdetailFailed(), (r) {
        searchlistitems = r
            .where((element) =>
                (element.mrdID ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.prdName ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.prdID ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.prdCode ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        return Materialreqdetailsuccess(
          materialdetail: event.searchQuery.isEmpty ? r : searchlistitems,
        );
      }));
    });
    on<MaterialDetailClearEvent>((event, emit) {
      emit(const Materialreqdetailsuccess(materialdetail: null));
    });
  }
}
