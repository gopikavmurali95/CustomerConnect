import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/cus_promo_in_model/cus_promo_in_model.dart';
import 'package:customer_connect/feature/data/models/cus_promotion_header/cus_promotion_header.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cus_promotions_header_event.dart';
part 'cus_promotions_header_state.dart';
part 'cus_promotions_header_bloc.freezed.dart';

@injectable
class CusPromotionsHeaderBloc
    extends Bloc<CusPromotionsHeaderEvent, CusPromotionsHeaderState> {
  final ICusProtionRepo protionRepo;
  CusPromotionsHeaderBloc(this.protionRepo)
      : super(CusPromotionsHeaderState.initial()) {
    on<GetCusPromoHeaderEvent>((event, emit) async {
      List<CusPromotionHeader> searcheditems = [];
      Either<MainFailures, List<CusPromotionHeader>> headers =
          await protionRepo.getCusPromotionHeaders(event.cusIn);

      emit(
        headers.fold(
          (l) => const CusPromotionHeaderFailedState(),
          (r) {
            searcheditems = r
                .where((element) =>
                    element.pCode!
                        .toLowerCase()
                        .toUpperCase()
                        .contains(event.searchQuery.toUpperCase()) ||
                    element.pName!
                        .toLowerCase()
                        .toUpperCase()
                        .contains(event.searchQuery.toUpperCase()))
                .toList();
            return GetCusPromotionsHeaderState(
                headers: event.searchQuery.isEmpty ? r : searcheditems);
          },
        ),
      );
    });
    on<ClearCusPromoEvent>((event, emit) {
      emit(const GetCusPromotionsHeaderState(headers: null));
    });
  }
}
