import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/settlement_approval_header_out_model/settlement_approval_header_out_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'settlement_approval_header_event.dart';
part 'settlement_approval_header_state.dart';
part 'settlement_approval_header_bloc.freezed.dart';

@injectable
class SettlementApprovalHeaderBloc
    extends Bloc<SettlementApprovalHeaderEvent, SettlementApprovalHeaderState> {
  final ISettlementApprovalHeaderRepo settlementheaderRepo;

  SettlementApprovalHeaderBloc(this.settlementheaderRepo)
      : super(SettlementApprovalHeaderState.initial()) {
    on<GetSettlementApprovalHeaderEvent>((event, emit) async {
      List<SettlementApprovalHeaderOutModel> searchlistitems = [];
      Either<MainFailures, List<SettlementApprovalHeaderOutModel>> headers =
          await settlementheaderRepo
              .getSettlementApprovalHeaders(event.statusvalue);
      emit(
          headers.fold((l) => const SettlementApprovalHeaderFailedState(), (r) {
        searchlistitems = r
            .where((element) =>
                (element.rotName ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.rotCode ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.cusCode ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.cusName ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.staId ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        return GetSettlementApprovalHeader(
            headers: event.searchQuery.isEmpty ? r : searchlistitems);
      }));
    });

    on<ClearSettlementApprovalHeaderEvent>((event, emit) {
      emit(const GetSettlementApprovalHeader(headers: null));
    });
  }
}
