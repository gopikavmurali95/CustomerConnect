import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/target_details_graph_amt_model/target_details_graph_amt_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'target_details_graph_amt_event.dart';
part 'target_details_graph_amt_state.dart';
part 'target_details_graph_amt_bloc.freezed.dart';

@injectable
class TargetDetailsGraphAmtBloc
    extends Bloc<TargetDetailsGraphAmtEvent, TargetDetailsGraphAmtState> {
  final ITargetRepo amountRepo;
  TargetDetailsGraphAmtBloc(this.amountRepo)
      : super(TargetDetailsGraphAmtState.initial()) {
    on<GetTargetGraphAmtEvent>((event, emit) async {
      Either<MainFailures, TargetDetailsGraphAmtModel> amount =
          await amountRepo.targetDetailAmt(event.fromDate, event.rotID);
      emit(amount.fold((l) => const GetTargetGraphAmtFailed(),
          (r) => GetTargetGraphAmt(amount: r)));
    });
    on<ClearGraphAmount>((event, emit) {
      emit(const GetTargetGraphAmt(amount: null));
    });
  }
}
