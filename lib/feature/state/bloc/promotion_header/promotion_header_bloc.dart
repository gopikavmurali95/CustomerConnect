import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/promotion_header_in_paras/promotion_header_in_paras.dart';
import 'package:customer_connect/feature/data/models/promotion_header_model/promotion_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'promotion_header_event.dart';
part 'promotion_header_state.dart';
part 'promotion_header_bloc.freezed.dart';

@injectable
class PromotionHeaderBloc
    extends Bloc<PromotionHeaderEvent, PromotionHeaderState> {
  final IPromotionHeaderRepo promotionRepo;
  PromotionHeaderBloc(this.promotionRepo)
      : super(PromotionHeaderState.initial()) {
    on<GetPromotionHeaderEvent>((event, emit) async {
      Either<MainFailures, List<PromotionHeaderModel>> promotions =
          await promotionRepo.getPromotionHeader(event.promotionInparas);
      emit(promotions.fold((l) => const PromotionHeaderFailed(),
          (r) => GetPromotionsHeaderState(promotion: r)));
    });
    on<ClearPromotionHeader>((event, emit) {
      emit(const PromotionHeaderState.getPromotionsHeader(promotion: null));
    });
  }
}
