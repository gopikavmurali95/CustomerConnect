import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/field_service_invoice_header_model/field_service_invoice_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'field_service_header_event.dart';
part 'field_service_header_state.dart';
part 'field_service_header_bloc.freezed.dart';

@injectable
class FieldServiceHeaderBloc
    extends Bloc<FieldServiceHeaderEvent, FieldServiceHeaderState> {
  final IFieldServiceInvoiceApprovalRepo fieldServiceInvoiceApprovalRepo;
  FieldServiceHeaderBloc(this.fieldServiceInvoiceApprovalRepo)
      : super(FieldServiceHeaderState.initial()) {
    List<FieldServiceInvoiceHeaderModel> searchlistitems = [];
    on<GetAllFieldServiceHeadersEvent>((event, emit) async {
      Either<MainFailures, List<FieldServiceInvoiceHeaderModel>> headers =
          await fieldServiceInvoiceApprovalRepo
              .getFieldServiceApprovalHeaders(event.userId);

      emit(
        headers.fold(
          (l) => const FieldServiceInvoiceHeaderFailedState(),
          (r) {
            {
              searchlistitems = r.where((element) =>
              element.userID!
                  .toLowerCase().
              toUpperCase().
              contains(event.searchQuery.toUpperCase())||
                  element.rotID!.
                  toLowerCase().
                  toUpperCase().
                  contains(event.searchQuery.toUpperCase())).toList();
              return  GetFieldServiceInvoiceHEadersState(headers: event.searchQuery.isEmpty ? r :searchlistitems);
            }
          },
        ),
      );
    });

    on<ClearFieldServiceHeaderEvent>((event, emit) {
      emit(const GetFieldServiceInvoiceHEadersState(headers: null));
    });
  }
}
