import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/cus_ins_outstanding_header_model/cus_ins_outstanding_header_model.dart';
import 'package:customer_connect/feature/data/models/cus_out_standing_in_model/cus_out_standing_in_model.dart';
import 'package:customer_connect/feature/data/models/cus_outstanding_count_model/cus_outstanding_count_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cus_out_standing_event.dart';
part 'cus_out_standing_state.dart';
part 'cus_out_standing_bloc.freezed.dart';

@injectable
class CusOutStandingBloc
    extends Bloc<CusOutStandingEvent, CusOutStandingState> {
  final ICusOutstandingRepo cusOutstandingRepo;
  CusOutStandingBloc(this.cusOutstandingRepo)
      : super(CusOutStandingState.initial()) {
    on<GetCusOutstandingEvent>(
      (event, emit) async {
        List<CusInsOutstandingHeaderModel> searcheditems = [];
        Either<MainFailures, CusOutstandingCountModel> counts =
            await cusOutstandingRepo.getOutStandingCounts(event.outIn);
        Either<MainFailures, List<CusInsOutstandingHeaderModel>> headers =
            await cusOutstandingRepo.getCusOutstanding(event.outIn);

        emit(
          headers.fold(
            (l) => const GetOutStandingFailedState(),
            (r) {
              searcheditems = r
                  .where((element) =>
                      element.cusName!
                          .toLowerCase()
                          .toUpperCase()
                          .contains(event.searchQuery.toUpperCase()) ||
                      element.invoiceId!
                          .toLowerCase()
                          .toUpperCase()
                          .contains(event.searchQuery.toUpperCase()))
                  .toList();
              return GetCusOutStandingState(
                  counts: counts.fold((l) => null, (r) => r),
                  headers: event.searchQuery.isEmpty ? r : searcheditems);
            },
          ),
        );
      },
    );
    on<ClearCusOutStandingEvent>((event, emit) {
      emit(const GetCusOutStandingState(counts: null, headers: null));
    });
  }
}
