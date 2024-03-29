import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../data/abstractrepo/abstractrepo.dart';
import '../../../data/models/pickingdetailmodel/PickingDetailModel.dart';

part 'pickingdetail_event.dart';
part 'pickingdetail_state.dart';
part 'pickingdetail_bloc.freezed.dart';
@injectable
class PickingdetailBloc extends Bloc<PickingdetailEvent, PickingdetailState> {
  final IPickingHeaderRepo pDetail;

  PickingdetailBloc(this.pDetail) : super(PickingdetailState.initial())
  {
    on<PickingDetailSuccess>((event, emit) async{
      Either<MainFailures,List<PickingDetailModel>> pickdetailList =
      await pDetail.getPickingDetail(event.PickingID);
      emit(pickdetailList.fold(
              (l) => const PickingFailedState(),
              (r) => PickingSuccessState(pdetailList: r)));
      // TODO: implement event handler
    });

    on<ClearPickingDetailevent>((event, emit) {
      emit(const PickingSuccessState(pdetailList: null));
    });
  }
}
