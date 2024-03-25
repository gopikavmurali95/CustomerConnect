import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/ar_detail_model/ar_detail_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'ar_details_event.dart';
part 'ar_details_state.dart';
part 'ar_details_bloc.freezed.dart';

@injectable
class ArDetailsBloc extends Bloc<ArDetailsEvent, ArDetailsState> {
  final IArCollectionRepo arCollectionRepo;
  ArDetailsBloc(this.arCollectionRepo) : super(ArDetailsState.initial()) {
    on<GetArDetailsEvent>((event, emit) async {
      Either<MainFailures, List<ArDetailModel>> ardetails =
          await arCollectionRepo.getARDetails(event.arhID);

      emit(ardetails.fold((l) => const ArdetailsfailedState(),
          (r) => GetArDetailsState(ardetails: r)));
    });
    on<ClearArDetailEvent>((event, emit) {
      emit(const GetArDetailsState(ardetails: null));
    });
  }
}
