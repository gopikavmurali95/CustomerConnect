import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/get_out_of_stock_count_model/get_out_of_stock_count_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'outofstockcount_event.dart';
part 'outofstockcount_state.dart';
part 'outofstockcount_bloc.freezed.dart';

@injectable
class OutofstockcountBloc
    extends Bloc<OutofstockcountEvent, OutofstockcountState> {
  final IMerchandisingDashBoardRepo countrepo;
  OutofstockcountBloc(this.countrepo) : super(OutofstockcountState.initial()) {
    on<GetOutOfStockCountEvent>((event, emit) async {
      Either<MainFailures, GetOutOfStockCountModel> getcount =
          await countrepo.getoutofstockcount(event.fromDate, event.toDate);

      emit(getcount.fold((l) => const OutOfStockFailedState(),
          (r) => GetOutOfStockCountState(count: r)));
    });
    on<ClearOutOfStockCountEvent>((event, emit) {
      emit(const GetOutOfStockCountState(count: null));
    });
  }
}
