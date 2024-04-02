import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/cus_promotion_detail_model/cus_promotion_detail_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cus_promo_detail_event.dart';
part 'cus_promo_detail_state.dart';
part 'cus_promo_detail_bloc.freezed.dart';

@injectable
class CusPromoDetailBloc
    extends Bloc<CusPromoDetailEvent, CusPromoDetailState> {
  final ICusProtionRepo cusPromotionsRepo;
  CusPromoDetailBloc(this.cusPromotionsRepo)
      : super(CusPromoDetailState.initial()) {
    on<GetCusPromoDetailEvent>((event, emit) async {
      Either<MainFailures, List<CusPromotionDetailModel>> details =
          await cusPromotionsRepo.getCusPromotionDetails(event.iD);
      emit(details.fold((l) => const GetCusPromodetailFailedState(),
          (r) => GetCusPromoDetailState(details: r)));
    });
    on<ClearCusPromoDetailEvent>((event, emit) {
      emit(const GetCusPromoDetailState(details: null));
    });
  }
}
