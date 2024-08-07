import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/merch_cu_service_count_model/merch_cu_service_count_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'merch_cus_service_count_event.dart';
part 'merch_cus_service_count_state.dart';
part 'merch_cus_service_count_bloc.freezed.dart';

@injectable
class MerchCusServiceCountBloc
    extends Bloc<MerchCusServiceCountEvent, MerchCusServiceCountState> {
  final IMerchandisingDashBoardRepo cusServicerepo;
  MerchCusServiceCountBloc(this.cusServicerepo)
      : super(MerchCusServiceCountState.initial()) {
    on<GetCusserviceCountEvent>((event, emit) async {
      Either<MainFailures, MerchCuServiceCountModel> servicecount =
          await cusServicerepo.getCusServiceCount(event.fromdate, event.toDate);

      emit(servicecount.fold((l) => const CusServiceCountFailedstate(),
          (r) => GetCusServiceCountState(cusServicecount: r)));
    });
    on<CusServiceCountClearevent>((event, emit) {
      emit(const GetCusServiceCountState(cusServicecount: null));
    });
  }
}
