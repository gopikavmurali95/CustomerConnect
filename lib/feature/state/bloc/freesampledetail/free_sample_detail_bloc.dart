import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/free_sample_approval_detail_model/free_sample_approval_detail_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'free_sample_detail_event.dart';
part 'free_sample_detail_state.dart';
part 'free_sample_detail_bloc.freezed.dart';

@injectable
class FreeSampleDetailBloc
    extends Bloc<FreeSampleDetailEvent, FreeSampleDetailState> {
  final IFreeSampleApprovalRepo freeSampleApprovalRepo;
  FreeSampleDetailBloc(this.freeSampleApprovalRepo)
      : super(FreeSampleDetailState.initial()) {
    on<GetFreeSampleDetailsEvent>((event, emit) async {
      List<FreeSampleApprovalDetailModel> searchlistitems = [];

      Either<MainFailures, List<FreeSampleApprovalDetailModel>> details =
          await freeSampleApprovalRepo.getFreeSampleDetails(event.headerID);

      emit(details.fold((l) => const FreesampleDetailFailedState(), (r) {
        searchlistitems = r
            .where((element) =>
                element.prdCode!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                element.prdName!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        return GetFreeSampleDetailState(
            details: event.searchQuery.isEmpty ? r : searchlistitems);
      }));
    });
    on<ClearFreeSampleDetailEvent>((event, emit) {
      emit(const GetFreeSampleDetailState(details: null));
    });
  }
}
