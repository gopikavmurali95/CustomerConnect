import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/ar_total_collection_model/ar_total_collection_model.dart';
import 'package:customer_connect/feature/data/models/cus_ins_ar_h_eader_model/cus_ins_ar_h_eader_model.dart';
import 'package:customer_connect/feature/data/models/cus_ins_ar_header_in_model/cus_ins_ar_header_in_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cus_ins_ar_header_event.dart';
part 'cus_ins_ar_header_state.dart';
part 'cus_ins_ar_header_bloc.freezed.dart';

@injectable
class CusInsArHeaderBloc
    extends Bloc<CusInsArHeaderEvent, CusInsArHeaderState> {
  final ICusInsArRepo arRepo;
  CusInsArHeaderBloc(this.arRepo) : super(CusInsArHeaderState.initial()) {
    on<GetCusInsArHeaderEvent>((event, emit) async {
      Either<MainFailures, List<CusInsArHEaderModel>> headers =
          await arRepo.getARHeaders(event.arIn);
      Either<MainFailures, ArTotalCollectionModel> totals =
          await arRepo.getArTotal(event.arIn);

      emit(headers.fold(
          (l) => const GetArHeadersFailedState(),
          (r) => GetArHeadersState(
              headers: r, artotals: totals.fold((l) => null, (r) => r))));
    });
    on<ClearCusInsArHeader>((event, emit) {
      emit(const GetArHeadersState(headers: null, artotals: null));
    });
  }
}
