import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/todays_delivery_header_model/todays_delivery_header_model.dart';
import 'package:customer_connect/feature/data/models/todays_delivery_in_paras/todays_delivery_in_paras.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'todays_delivery_header_event.dart';
part 'todays_delivery_header_state.dart';
part 'todays_delivery_header_bloc.freezed.dart';

@injectable
class TodaysDeliveryHeaderBloc
    extends Bloc<TodaysDeliveryHeaderEvent, TodaysDeliveryHeaderState> {
  final ITodaysDeliveryRepo todaysDelivery;
  TodaysDeliveryHeaderBloc(this.todaysDelivery)
      : super(TodaysDeliveryHeaderState.initial()) {
    on<GetTodaysDeliveryEvent>((event, emit) async {
      Either<MainFailures, List<TodaysDeliveryHeaderModel>> deliverydata =
          await todaysDelivery.getTodaysDelivery(event.todaysdelivery);
      List<TodaysDeliveryHeaderModel> searcheditems = [];
      emit(deliverydata.fold((l) => const TodaysDeliveryFailedState(), (r) {
        searcheditems = r
            .where((element) =>
                element.orderId!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                element.rotName!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        return GetTodaysDeliveryState(
            todaysdelivery: event.searchQuery.isEmpty ? r : searcheditems);
      }));
    });
    on<ClearTodaysDelivery>((event, emit) =>
        emit(const GetTodaysDeliveryState(todaysdelivery: null)));
  }
}
