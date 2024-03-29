import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/cu_s_profile_model/cu_s_profile_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cus_profile_event.dart';
part 'cus_profile_state.dart';
part 'cus_profile_bloc.freezed.dart';

@injectable
class CusProfileBloc extends Bloc<CusProfileEvent, CusProfileState> {
  final ICusProfileRepo cusProfileRepo;
  CusProfileBloc(this.cusProfileRepo) : super(CusProfileState.initial()) {
    on<GetCusProfileEvent>((event, emit) async {
      Either<MainFailures, CuSProfileModel> profile =
          await cusProfileRepo.getCusProfile(event.userID, event.cusID);
      emit(profile.fold((l) => const GetcusprofileFailedState(),
          (r) => GetCusProfileState(profile: r)));
    });
    on<ClearProfileEvent>((event, emit) {
      emit(const GetCusProfileState(profile: null));
    });
  }
}
