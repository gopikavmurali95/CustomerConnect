import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/cus_ins_tr_n_counts/cus_ins_tr_n_counts.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cus_ins_trn_count_event.dart';
part 'cus_ins_trn_count_state.dart';
part 'cus_ins_trn_count_bloc.freezed.dart';

@injectable
class CusInsTrnCountBloc
    extends Bloc<CusInsTrnCountEvent, CusInsTrnCountState> {
  final IcusInsCountsRepo countsRepo;
  CusInsTrnCountBloc(this.countsRepo) : super(CusInsTrnCountState.initial()) {
    on<GettrnCountsEvent>((event, emit) async {
      Either<MainFailures, CusInsTrNCounts> counts =
          await countsRepo.getCusInsCounts(
              event.userId, event.cusId, event.fDate, event.toDate);

      emit(counts.fold((l) => const GetcountFailedState(),
          (r) => GetTransactionCountState(counts: r)));
    });
  }
}
