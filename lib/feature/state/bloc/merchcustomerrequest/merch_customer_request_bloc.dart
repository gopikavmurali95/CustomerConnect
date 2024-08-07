import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/merch_customer_request_header_model/merch_customer_request_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'merch_customer_request_event.dart';
part 'merch_customer_request_state.dart';
part 'merch_customer_request_bloc.freezed.dart';

@injectable
class MerchCustomerRequestBloc
    extends Bloc<MerchCustomerRequestEvent, MerchCustomerRequestState> {
  final IMerchCustomerRequestRepo merchCustomerRequestRepo;
  MerchCustomerRequestBloc(this.merchCustomerRequestRepo)
      : super(MerchCustomerRequestState.initial()) {
    on<GetMerchCustomerRequestEvent>((event, emit) async {
      Either<MainFailures, List<MerchCustomerRequestHeaderModel>> headers =
          await merchCustomerRequestRepo.getCustomerHEaders(
              event.fromDate, event.toDate, event.status);
      List<MerchCustomerRequestHeaderModel> searchlistitems = [];

      emit(headers.fold((l) => const MerchCustomerRequestsFailedState(), (r) {
        searchlistitems = r
            .where((element) =>
                (element.cusCode ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.cusName ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.rotCode ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.rotName ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.reqCode ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        return GetMerchCustomerRequestHeadersState(
            headers: event.searchQuery.isEmpty ? r : searchlistitems);
      }));
    });

    on<ClearMerchCustomerRequestEvent>((event, emit) {
      emit(const GetMerchCustomerRequestHeadersState(headers: null));
    });
  }
}
