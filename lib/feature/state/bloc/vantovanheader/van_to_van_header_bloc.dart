import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/van_to_van_header_model/van_to_van_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'van_to_van_header_event.dart';
part 'van_to_van_header_state.dart';
part 'van_to_van_header_bloc.freezed.dart';

@injectable
class VanToVanHeaderBloc
    extends Bloc<VanToVanHeaderEvent, VanToVanHeaderState> {
  final IVanToVanApprovalRepo vantovanheader;
  VanToVanHeaderBloc(this.vantovanheader)
      : super(VanToVanHeaderState.initial()) {
    on<getVanToVanHeaderEvent>((event, emit) async {
      Either<MainFailures, List<VanToVanHeaderModel>> headers =
          await vantovanheader.getVanToVanApprovalHeader(event.userID);

      emit(
        headers.fold(
          (l) => const VanToVanHeaderFailedstate(),
          (r) => GettVanToVanHeaderState(
            headers: r,
          ),
        ),
      );
    });
    on<ClearVanToVanHeaderEvent>((event, emit) {
      emit(const GettVanToVanHeaderState(headers: null));
    });
  }
}
