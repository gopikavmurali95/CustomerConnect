import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/van_to_van_details_model/van_to_van_details_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'van_to_van_details_event.dart';
part 'van_to_van_details_state.dart';
part 'van_to_van_details_bloc.freezed.dart';

@injectable
class VanToVanDetailsBloc
    extends Bloc<VanToVanDetailsEvent, VanToVanDetailsState> {
  final IVanToVanApprovalRepo vantovandetails;
  VanToVanDetailsBloc(this.vantovandetails)
      : super(VanToVanDetailsState.initial()) {
    on<GetVanToVanDetailEvent>((event, emit) async {
      Either<MainFailures, List<VanToVanDetailsModel>> details =
          await vantovandetails.getVanToVanApprovalDetails(event.reqID);

      emit(details.fold((l) => const vanToVanDetailFailedState(),
          (r) => getVanToVanDetailsState(details: r)));
    });
    on<clearVanToVanDetailEvent>((event, emit) {
      emit(const getVanToVanDetailsState(details: null));
    });
  }
}
