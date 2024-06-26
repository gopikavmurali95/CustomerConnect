import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/sheduled_return_detail_model/sheduled_return_detail_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'scheduled_return_details_event.dart';
part 'scheduled_return_details_state.dart';
part 'scheduled_return_details_bloc.freezed.dart';

@injectable
class ScheduledReturnDetailsBloc
    extends Bloc<ScheduledReturnDetailsEvent, ScheduledReturnDetailsState> {
  final IScheduledReturnApprovalRepo scheduledReturnApprovalRepo;
  ScheduledReturnDetailsBloc(this.scheduledReturnApprovalRepo)
      : super(ScheduledReturnDetailsState.initial()) {
    on<GetAllScheduledReturnDetailsEvent>((event, emit) async {
      Either<MainFailures, List<SheduledReturnDetailModel>> details =
          await scheduledReturnApprovalRepo
              .getScheduledReturnApprovalDetails(event.reqID);

      List<SheduledReturnDetailModel> searcheditems = [];
      emit(
        details.fold(
          (l) => const ScheduledReturnDetailFailedState(),
          (r) {
            searcheditems = r
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
            return GetScheduledReturnDetailState(
                details: event.searchQuery.isEmpty ? r : searcheditems);
          },
        ),
      );
    });
    on<ClearScheduledReturnDetailsEvent>((event, emit) {
      emit(const GetScheduledReturnDetailState(details: null));
    });
  }
}
