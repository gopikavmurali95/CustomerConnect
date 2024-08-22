import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/cu_s_ins_rot_list/cu_s_ins_rot_list.dart';
import 'package:customer_connect/main.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_all_route_event.dart';
part 'get_all_route_state.dart';
part 'get_all_route_bloc.freezed.dart';

@injectable
class GetAllRouteBloc extends Bloc<GetAllRouteEvent, GetAllRouteState> {
  final IGetAllAvailableRoutesRepo routesRepo;
  GetAllRouteBloc(this.routesRepo) : super(GetAllRouteState.initial()) {
    on<GetAllRouteForCusEvent>((event, emit) async {
      Either<MainFailures, List<CuSInsRotList>> routes =
          await routesRepo.getallRoutes();
      List<CuSInsRotList> availableroutes = [];
      emit(routes.fold((l) => const GetAllRoutesFailedState(), (r) {
        availableroutes.clear();
        availableroutes
            .add(CuSInsRotList(rotId: '-1', rotName: selectedLocale?.languageCode == 'en'?'Select Route':'حدد الطريق'));

        availableroutes.addAll(r);
        return GetAllRoutesSuccessState(routes: availableroutes);
      }));
    });
    on<ClearAllRouteEvent>((event, emit) {
      emit(const GetAllRoutesSuccessState(routes: null));
    });
  }
}
