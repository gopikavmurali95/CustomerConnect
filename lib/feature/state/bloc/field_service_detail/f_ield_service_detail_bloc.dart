import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/field_service_detail_model/field_service_detail_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'f_ield_service_detail_event.dart';
part 'f_ield_service_detail_state.dart';
part 'f_ield_service_detail_bloc.freezed.dart';

@injectable
class FIeldServiceDetailBloc
    extends Bloc<FIeldServiceDetailEvent, FIeldServiceDetailState> {
  final IFieldServiceInvoiceApprovalRepo fieldServiceInvoiceApprovalRepo;
  FIeldServiceDetailBloc(this.fieldServiceInvoiceApprovalRepo)
      : super(FIeldServiceDetailState.initial()) {
    on<GetAllFieldServiceDetailEvent>((event, emit) async {
      Either<MainFailures, List<FieldServiceDetailModel>> details =
          await fieldServiceInvoiceApprovalRepo
              .getFieldServiceApprovalDetails(event.reqId);

      emit(
        details.fold(
          (l) => const FieldServiceDetailFailedState(),
          (r) => GetFieldServiceDetailState(details: r),
        ),
      );
    });
    on<ClearFieldServiceDetailEvent>((event, emit) {
      emit(const GetFieldServiceDetailState(details: null));
    });
  }
}
