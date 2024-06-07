import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/return_approval_header_model/return_approval_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'return_approval_header_event.dart';
part 'return_approval_header_state.dart';
part 'return_approval_header_bloc.freezed.dart';

@injectable
class ReturnApprovalHeaderBloc
    extends Bloc<ReturnApprovalHeaderEvent, ReturnApprovalHeaderState> {
  final IReturnApprovalRepo returnrepo;
  ReturnApprovalHeaderBloc(this.returnrepo)
      : super(ReturnApprovalHeaderState.initial()) {
    on<GetReturnApprovalHeaders>(
      (event, emit) async {
        Either<MainFailures, List<ReturnApprovalHeaderModel>> headers =
            await returnrepo.getReturnApprovalHeaders(event.rotID, event.mode);

        List<ReturnApprovalHeaderModel> searcheditems = [];
        emit(
          headers.fold(
            (l) => const ReturnApprovalHeaderState.returnHeaderFailedstate(),
            (r) {
              searcheditems = r
                  .where((element) =>
                      element.rahId!
                          .toLowerCase()
                          .toUpperCase()
                          .contains(event.searchQuery.toUpperCase()) ||
                      element.cusCode!
                          .toLowerCase()
                          .toUpperCase()
                          .contains(event.searchQuery.toUpperCase()) ||
                      element.cusName!
                          .toLowerCase()
                          .toUpperCase()
                          .contains(event.searchQuery.toUpperCase()))
                  .toList();
              return GetReturnApprovalHeadersState(
                  headers: event.searchQuery.isEmpty ? r : searcheditems);
            },
          ),
        );
      },
    );

    on<ClearReturnHeaderState>((event, emit) {
      emit(const GetReturnApprovalHeadersState(headers: null));
    });
  }
}
