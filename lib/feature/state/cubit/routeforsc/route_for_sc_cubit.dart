import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/route_model/route_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'route_for_sc_state.dart';
part 'route_for_sc_cubit.freezed.dart';

@injectable
class RouteForScCubit extends Cubit<RouteForScState> {
  final IScheduledReturnApprovalRepo scheduledReturnApprovalRepo;
  RouteForScCubit(this.scheduledReturnApprovalRepo)
      : super(RouteForScState.initial());

  void getavailableroutes() async {
    Either<MainFailures, List<RouteModel>> routes =
        await scheduledReturnApprovalRepo.getAllRoutes();

    emit(routes.fold((l) => const GetRoutesFailedState(),
        (r) => GetAllRoutesForScReturnState(routes: r)));
  }
}
