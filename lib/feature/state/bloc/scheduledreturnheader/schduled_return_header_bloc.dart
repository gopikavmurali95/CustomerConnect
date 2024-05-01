import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/sheduled_return_header_model/sheduled_return_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'schduled_return_header_event.dart';
part 'schduled_return_header_state.dart';
part 'schduled_return_header_bloc.freezed.dart';

@injectable
class SchduledReturnHeaderBloc
    extends Bloc<SchduledReturnHeaderEvent, SchduledReturnHeaderState> {
  final IScheduledReturnApprovalRepo scheduledReturnApprovalRepo;
  SchduledReturnHeaderBloc(this.scheduledReturnApprovalRepo)
      : super(SchduledReturnHeaderState.initial()) {
    on<GetAllScheduledReturnHeadersEvent>((event, emit) async {
      Either<MainFailures, List<SheduledReturnHeaderModel>> headers =
          await scheduledReturnApprovalRepo
              .getScheduledReturnApprovalHeaders(event.userID);

      emit(
        headers.fold(
          (l) => const ScheduledRetunrHEadersFailedState(),
          (r) => GetScheduledReturnHeadersState(headers: r),
        ),
      );
    });

    on<ClearScheduledReturnHeadersEvent>((event, emit) {
      emit(const GetScheduledReturnHeadersState(headers: null));
    });
  }
}
