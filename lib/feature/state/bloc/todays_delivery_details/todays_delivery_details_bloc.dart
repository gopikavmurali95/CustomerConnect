import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/todays_delivery_details_model/todays_delivery_details_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'todays_delivery_details_event.dart';
part 'todays_delivery_details_state.dart';
part 'todays_delivery_details_bloc.freezed.dart';

@injectable
class TodaysDeliveryDetailsBloc
    extends Bloc<TodaysDeliveryDetailsEvent, TodaysDeliveryDetailsState> {
  final ITodaysDeliveryRepo deliverydetails;
  TodaysDeliveryDetailsBloc(this.deliverydetails)
      : super(TodaysDeliveryDetailsState.initial()) {
    on<GetTodaysDeliveryDetailsEvent>((event, emit) async {
      Either<MainFailures, List<TodaysDeliveryDetailsModel>> details =
          await deliverydetails.getDeliveryDetail(event.id);
      List<TodaysDeliveryDetailsModel> searcheditems = [];
      emit(details.fold((l) => const TodaysDeliveryFailedState(), (r) {
        searcheditems = r
            .where((element) =>
                element.prhId!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                element.prhName!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        return GetTodaysDeliveryDetailsState(
            deliverydet: event.searchQuery.isEmpty ? r : searcheditems);
      }));
    });
    on<ClearTodasDeliveryDetails>((event, emit) {
      emit(const GetTodaysDeliveryDetailsState(deliverydet: null));
    });
  }
}
