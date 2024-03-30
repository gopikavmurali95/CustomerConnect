import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/confirm_geo_code_in_model/confirm_geo_code_in_model.dart';
import 'package:customer_connect/feature/data/models/confirm_geo_locations_model/confirm_geo_locations_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'update_geo_location_state.dart';
part 'update_geo_location_cubit.freezed.dart';

@injectable
class UpdateGeoLocationCubit extends Cubit<UpdateGeoLocationState> {
  final ICusGeoLocationRepo geoLocationRepo;
  UpdateGeoLocationCubit(this.geoLocationRepo)
      : super(UpdateGeoLocationState.initial());

  void addUpdateLoading() {
    emit(const UpdateGeoLocationLoadingSTate());
  }

  void updateGeoLocation(ConfirmGeoCodeInModel confirmmodel) async {
    Either<MainFailures, ConfirmGeoLocationsModel> result =
        await geoLocationRepo.confirmGeolocation(confirmmodel);

    emit(result.fold((l) => const UpdateGeoLocationFailedState(),
        (r) => UpdateGeoLocationSuccessState(result: r)));
  }
}
