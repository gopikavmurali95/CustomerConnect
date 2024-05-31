import 'package:bloc/bloc.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/partial_delivery_detail/partial_delivery_detail.dart';
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
    on<PartialDeliveryDetailEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
