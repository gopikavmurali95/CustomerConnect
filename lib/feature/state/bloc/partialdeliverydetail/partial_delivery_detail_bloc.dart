import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/partial_delivery_details_model/partial_delivery_details_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'partial_delivery_detail_event.dart';
part 'partial_delivery_detail_state.dart';
part 'partial_delivery_detail_bloc.freezed.dart';

@injectable
class PartialDeliveryDetailBloc
    extends Bloc<PartialDeliveryDetailEvent, PartialDeliveryDetailState> {
  final IPartialDeliveryRepo partialDeliveryRepo;
  PartialDeliveryDetailBloc(this.partialDeliveryRepo)
      : super(PartialDeliveryDetailState.initial()) {
    on<GetPartialDeliveryDetailEvent>((event, emit) async {
      Either<MainFailures, List<PartialDeliveryDetailsModel>> details =
          await partialDeliveryRepo.partialDeliveryDetails(event.reqID);
      List<PartialDeliveryDetailsModel> searcheditems = [];
      emit(
        details.fold(
          (l) => const GetPartialDeliveryFailedState(),
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
            return GetAllPartialDeliveryDetailsState(
                details: event.searchQuery.isEmpty ? r : searcheditems);
          },
        ),
      );
    });
  }
}
