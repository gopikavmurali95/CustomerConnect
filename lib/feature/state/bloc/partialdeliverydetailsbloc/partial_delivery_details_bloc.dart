import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/partial_delivery_details_model/partial_delivery_details_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'partial_delivery_details_event.dart';
part 'partial_delivery_details_state.dart';
part 'partial_delivery_details_bloc.freezed.dart';

@injectable
class PartialDeliveryDetailsBloc
    extends Bloc<PartialDeliveryDetailsEvent, PartialDeliveryDetailsState> {
  final IPartialDeliveryRepo details;
  PartialDeliveryDetailsBloc(this.details)
      : super(PartialDeliveryDetailsState.initial()) {
    on<GetPartialDeliveryDetailsEvent>((event, emit) async {
      Either<MainFailures, List<PartialDeliveryDetailsModel>> deliverydetails =
          await details.partialDeliveryDetails(event.reqID);
      List<PartialDeliveryDetailsModel> searcheditems = [];
      emit(
        deliverydetails.fold(
          (l) => const PartialDeliveryDetailsFailedState(),
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
            return GetAllPartialDetliveryState(
                details: event.searchQuery.isEmpty ? r : searcheditems);
          },
        ),
      );
    });
    on<ClearPartialDeliveryDetails>((event, emit) {
      emit(const GetAllPartialDetliveryState(details: null));
    });
  }
}
