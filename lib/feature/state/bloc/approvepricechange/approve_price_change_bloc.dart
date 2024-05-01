import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/approve_price_change_model/approve_price_change_model.dart';
import 'package:customer_connect/feature/data/models/approve_price_changein_model/approve_price_changein_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'approve_price_change_event.dart';
part 'approve_price_change_state.dart';
part 'approve_price_change_bloc.freezed.dart';

@injectable
class ApprovePriceChangeBloc
    extends Bloc<ApprovePriceChangeEvent, ApprovePriceChangeState> {
  final IPriceChangeRepo priceChangeApproval;
  ApprovePriceChangeBloc(this.priceChangeApproval)
      : super(ApprovePriceChangeState.initial()) {
    on<GetPricChangeApprovalEvent>((event, emit) async {
      Either<MainFailures, ApprovePriceChangeModel> pcApproval =
          await priceChangeApproval.approvePriceChange(event.approval);
      emit(pcApproval.fold((l) => const GetPriceChangeApprovalFailed(),
          (r) => GetPriceChangeApprovalState(approval: r)));
    });
    on<AddApprovalLoadinEvent>((event, emit) {
      const ApproveLoadingState();
    });
  }
}
