import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/special_price_details_model/special_price_details_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'special_price_details_event.dart';
part 'special_price_details_state.dart';
part 'special_price_details_bloc.freezed.dart';

@injectable
class SpecialPriceDetailsBloc
    extends Bloc<SpecialPriceDetailsEvent, SpecialPriceDetailsState> {
  final ISpecialPriceRepo spdetails;
  SpecialPriceDetailsBloc(this.spdetails)
      : super(SpecialPriceDetailsState.initial()) {
    on<GetSpecialPriceDetailsEvent>((event, emit) async {
      Either<MainFailures, List<SpecialPriceDetailsModel>> details =
          await spdetails.getPriceDetail(event.prhID);
      emit(details.fold((l) => const specialPriceDetailsFailedState(),
          (r) => GetSpecialPriceDetailsState(spdetails: r)));
    });
    on<ClearSpecialriceDetailsEvent>((event, emit) {
      emit(const GetSpecialPriceDetailsState(spdetails: null));
    });
  }
}
