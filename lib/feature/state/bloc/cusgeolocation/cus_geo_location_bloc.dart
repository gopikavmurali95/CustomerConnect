import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/cus_geo_loc_in_model/cus_geo_loc_in_model.dart';
import 'package:customer_connect/feature/data/models/cus_geo_location_model/cus_geo_location_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cus_geo_location_event.dart';
part 'cus_geo_location_state.dart';
part 'cus_geo_location_bloc.freezed.dart';

@injectable
class CusGeoLocationBloc
    extends Bloc<CusGeoLocationEvent, CusGeoLocationState> {
  final ICusGeoLocationRepo geoLocationRepo;
  CusGeoLocationBloc(this.geoLocationRepo)
      : super(CusGeoLocationState.initial()) {
    on<GetCusGeoLocationEvent>(
      (event, emit) async {
        log('in geo bloc');
        Either<MainFailures, List<CusGeoLocationModel>> locations =
            await geoLocationRepo.getCusGeoLocations(event.cusGeoLocInModel);

        emit(
          locations.fold(
            (l) => const GetgeolocationFailedState(),
            (r) => getCusGeoLocationState(geolocations: r),
          ),
        );
      },
    );
    on<ClearCusgeoLocationEvent>((event, emit) {
      emit(const getCusGeoLocationState(geolocations: null));
    });
  }
}
