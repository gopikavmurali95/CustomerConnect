import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/un_scheduled_approval_header_model/un_scheduled_approval_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'un_scheduled_visit_header_event.dart';
part 'un_scheduled_visit_header_state.dart';
part 'un_scheduled_visit_header_bloc.freezed.dart';

@injectable
class UnScheduledVisitHeaderBloc
    extends Bloc<UnScheduledVisitHeaderEvent, UnScheduledVisitHeaderState> {
  final IUnScheduledVisitApprovalRepo unScheduledVisitApprovalRepo;
  UnScheduledVisitHeaderBloc(this.unScheduledVisitApprovalRepo)
      : super(UnScheduledVisitHeaderState.initial()) {
    on<GetUnScheduledHeadersEvent>((event, emit) async {
      List<UnScheduledApprovalHeaderModel> searcheditems = [];

      Either<MainFailures, List<UnScheduledApprovalHeaderModel>> headers =
          await unScheduledVisitApprovalRepo
              .getUnScheduledApprovalHeaders(event.mode);

      emit(headers.fold((l) => const UnScheduledVisitFailedState(), (r) {
        searcheditems = r
            .where((element) =>
                element.cusCode!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                element.cusName!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                element.rotCode!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        return GetUnScheduledVistHeadersState(
            headers: event.searchQuery.isEmpty ? r : searcheditems);
      }));
    });

    on<ClearUnScheduledVisitEvent>((event, emit) {
      emit(const GetUnScheduledVistHeadersState(headers: null));
    });
  }
}
