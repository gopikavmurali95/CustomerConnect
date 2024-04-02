import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/promotion_details_model/promotion_details_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'promotion_details_event.dart';
part 'promotion_details_state.dart';
part 'promotion_details_bloc.freezed.dart';

@injectable
class PromotionDetailsBloc
    extends Bloc<PromotionDetailsEvent, PromotionDetailsState> {
  final IPromotionHeaderRepo promoDetails;
  PromotionDetailsBloc(this.promoDetails)
      : super(PromotionDetailsState.initial()) {
    on<GetPromotionDetailsEvent>((event, emit) async {
      Either<MainFailures, List<PromotionDetailsModel>> promodetailsdata =
          await promoDetails.getPromotionDetails(event.id);
      emit(promodetailsdata.fold((l) => const PromotionDetailsFailed(),
          (r) => GetPromotionDetailsState(promodetails: r)));
    });
    on<ClearPromotionDetails>((event, emit) {
      emit(const GetPromotionDetailsState(promodetails: null));
    });
  }
}
