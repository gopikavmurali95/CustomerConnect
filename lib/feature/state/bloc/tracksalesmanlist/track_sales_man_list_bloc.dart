import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/customer_live_location_model/customer_live_location_model.dart';
import 'package:customer_connect/feature/data/models/tracking_sales_man_model/tracking_sales_man_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'track_sales_man_list_event.dart';
part 'track_sales_man_list_state.dart';
part 'track_sales_man_list_bloc.freezed.dart';

@injectable
class TrackSalesManListBloc
    extends Bloc<TrackSalesManListEvent, TrackSalesManListState> {
  final ITrackSalesManRepo trackSalesManRepo;
  TrackSalesManListBloc(this.trackSalesManRepo)
      : super(TrackSalesManListState.initial()) {
    on<GetSalesmanLocationEvent>((event, emit) async {
      Either<MainFailures, List<TrackingSalesManModel>> salesman =
          await trackSalesManRepo.getSalesManDetails(event.date, event.rotID);

      emit(salesman.fold((l) => const TrackSalesManFailedState(),
          (r) => GettrackSalesManDataState(salesman: r)));
    });

    on<ClearsalessmansEvent>((event, emit) {
      emit(const GettrackSalesManDataState(salesman: null));
    });

    on<GetAllCustomersLocationEvent>((event, emit) async {
      Either<MainFailures, List<CustomerLiveLocationModel>> salesman =
          await trackSalesManRepo.getCustomerLocations(event.date);

      emit(salesman.fold((l) => const TrackSalesManFailedState(),
          (r) => TrackAllCustomersState(customers: r)));
    });
  }
}
