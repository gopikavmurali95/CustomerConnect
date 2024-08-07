import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/get_cus_actcount_model/get_cus_actcount_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'merch_cus_act_count_event.dart';
part 'merch_cus_act_count_state.dart';
part 'merch_cus_act_count_bloc.freezed.dart';

@injectable
class MerchCusActCountBloc
    extends Bloc<MerchCusActCountEvent, MerchCusActCountState> {
  final IMerchandisingDashBoardRepo cucountrepo;
  MerchCusActCountBloc(this.cucountrepo)
      : super(MerchCusActCountState.initial()) {
    on<GetCusActCountEvent>((event, emit) async {
      Either<MainFailures, GetCusActcountModel> cusactcount =
          await cucountrepo.getCusActCount(event.fromDate, event.toDate);

      emit(cusactcount.fold((l) => const CusActCountFailedState(),
          (r) => GetCusActCountState(cuscount: r)));
    });

    on<CusActCountClearEvent>((event, emit) {
      emit(const GetCusActCountState(cuscount: null));
    });
  }
}
