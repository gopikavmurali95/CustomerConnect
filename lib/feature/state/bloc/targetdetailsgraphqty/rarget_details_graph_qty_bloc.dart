import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/target_details_graph_qty_model/target_details_graph_qty_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'rarget_details_graph_qty_event.dart';
part 'rarget_details_graph_qty_state.dart';
part 'rarget_details_graph_qty_bloc.freezed.dart';

@injectable
class RargetDetailsGraphQtyBloc
    extends Bloc<RargetDetailsGraphQtyEvent, RargetDetailsGraphQtyState> {
  final ITargetRepo qtyRepo;
  RargetDetailsGraphQtyBloc(this.qtyRepo)
      : super(RargetDetailsGraphQtyState.initial()) {
    on<GetTargetGraphQtyEvent>((event, emit) async {
      Either<MainFailures, TargetDetailsGraphQtyModel> qty =
          await qtyRepo.targetDetailQty(event.fromDate, event.rotID);
      emit(qty.fold((l) => const GetTargetGraphQtyFailed(),
          (r) => GetTargetGraphQtyState(quantity: r)));
    });
    on<ClearTargetGraphQuantity>((event, emit) {
      emit(const GetTargetGraphQtyState(quantity: null));
    });
  }
}
