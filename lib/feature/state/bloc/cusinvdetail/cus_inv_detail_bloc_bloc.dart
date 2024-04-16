import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/cus_ins_inv_type_model/cus_ins_inv_type_model.dart';
import 'package:customer_connect/feature/data/models/cus_ins_onv_detail_model/cus_ins_onv_detail_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cus_inv_detail_bloc_event.dart';
part 'cus_inv_detail_bloc_state.dart';
part 'cus_inv_detail_bloc_bloc.freezed.dart';

@injectable
class CusInvDetailBlocBloc
    extends Bloc<CusInvDetailBlocEvent, CusInvDetailBlocState> {
  final ICusInsInvoiceRepo invoiceRepo;
  CusInvDetailBlocBloc(this.invoiceRepo)
      : super(CusInvDetailBlocState.initial()) {
    on<GetCusInvDetailsEvent>((event, emit) async {
      List<CusInsOnvDetailModel> searcheditems = [];
      Either<MainFailures, List<CusInsOnvDetailModel>> details =
          await invoiceRepo.getInvoiceDetails(event.invId);
      Either<MainFailures, List<CusInsInvTypeModel>> types =
          await invoiceRepo.getInvoicetypes(event.invId);
      emit(
        details.fold(
          (l) => const GetcusInvFailedState(),
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
            return GetcusInvDetailState(
              details: event.searchQuery.isEmpty ? r : searcheditems,
              types: types.fold((l) => [], (t) => t),
            );
          },
        ),
      );
    });
    on<ClearinvDetails>((event, emit) {
      emit(const GetcusInvDetailState(details: null, types: null));
    });
  }
}
