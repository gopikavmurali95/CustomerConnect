import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/merch_return_request_model/merch_return_request_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'merch_return_request_event.dart';
part 'merch_return_request_state.dart';
part 'merch_return_request_bloc.freezed.dart';

@injectable
class MerchReturnRequestBloc
    extends Bloc<MerchReturnRequestEvent, MerchReturnRequestState> {
  final IMerchReturnReqRepo returnRequestRepo;
  MerchReturnRequestBloc(this.returnRequestRepo)
      : super(MerchReturnRequestState.initial()) {
    on<GetMErchReturnRequestDataEvent>((event, emit) async {
      List<MerchReturnRequestModel> searchlistitems = [];

      Either<MainFailures, List<MerchReturnRequestModel>> data =
          await returnRequestRepo.getReturnItems(
              event.fromDate, event.toDate, event.status);

      emit(data.fold((l) => const MerchReturnRequestDataFailed(), (r) {
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
                (element.rrhId ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.rrhRequestNumber ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        return GetMerchReturnReqDataState(
            returnData: event.searchQuery.isEmpty ? r : searchlistitems);
      }));
    });
    on<ClearMerchReturnRequestData>((event, emit) {
      emit(const GetMerchReturnReqDataState(returnData: null));
    });
  }
}
