import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/partial_delivery_header_model/partial_delivery_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'partial_delivery_header_event.dart';
part 'partial_delivery_header_state.dart';
part 'partial_delivery_header_bloc.freezed.dart';

@injectable
class PartialDeliveryHeaderBloc
    extends Bloc<PartialDeliveryHeaderEvent, PartialDeliveryHeaderState> {
  final IPartialDeliveryRepo partialDelivery;
  PartialDeliveryHeaderBloc(this.partialDelivery)
      : super(PartialDeliveryHeaderState.initial()) {
    on<GetPartialDeliveryHeaderEvent>((event, emit) async {
      Either<MainFailures, List<PartialDeliveryHeaderModel>> headerData =
          await partialDelivery.partialDeliveryList(event.userID, event.mode);
      List<PartialDeliveryHeaderModel> searcheditems = [];
      emit(
        headerData.fold(
          (l) => const GetPartialDeliveryFailed(),
          (r) {
            searcheditems = r
                .where((element) =>
                    element.orderId!
                        .toLowerCase()
                        .toUpperCase()
                        .contains(event.searchQuery.toUpperCase()) ||
                    element.cusCode!
                        .toLowerCase()
                        .toUpperCase()
                        .contains(event.searchQuery.toUpperCase()) ||
                    element.cusName!
                        .toLowerCase()
                        .toUpperCase()
                        .contains(event.searchQuery.toUpperCase()))
                .toList();
            return GetPartialDeliveryState(
                pDelivey: event.searchQuery.isEmpty ? r : searcheditems);
          },
        ),
      );
    });
    on<ClearPartialDeliveryHeaderEvent>((event, emit) {
      emit(const GetPartialDeliveryState(pDelivey: null));
    });
  }
}
