import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/merch_customer_activities_model/merch_customer_activities_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'merch_customer_activities_event.dart';
part 'merch_customer_activities_state.dart';
part 'merch_customer_activities_bloc.freezed.dart';

@injectable
class MerchCustomerActivitiesBloc
    extends Bloc<MerchCustomerActivitiesEvent, MerchCustomerActivitiesState> {
  final IMerchCustomerActivitiesRepo cusActivitiesRepo;
  MerchCustomerActivitiesBloc(this.cusActivitiesRepo)
      : super(MerchCustomerActivitiesState.initial()) {
    on<GetMerchCustomerActivitiesData>((event, emit) async {
      List<MerchCustomerActivitiesModel> searchlistitems = [];

      Either<MainFailures, List<MerchCustomerActivitiesModel>> data =
          await cusActivitiesRepo.getActivityItems(
              event.fromDate, event.toDate, event.status);

      emit(data.fold((l) => const GetMerchCustomerActivitiesDataFailed(), (r) {
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
                (element.actName ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        return GetMerchCustomerActivitiesDataState(
            cusActivitiesData: event.searchQuery.isEmpty ? r : searchlistitems);
      }));
    });
    on<ClearMerchCustomerActivitiesData>((event, emit) {
      emit(const GetMerchCustomerActivitiesDataState(cusActivitiesData: null));
    });
  }
}
