part of 'promotion_header_bloc.dart';

@freezed
class PromotionHeaderEvent with _$PromotionHeaderEvent {
  const factory PromotionHeaderEvent.getpromotionHeaderEvent(
      {required PromotionHeaderInParas promotionInparas,
      required String searchQuery}) = GetPromotionHeaderEvent;

  const factory PromotionHeaderEvent.clearPromotionHeader() =
      ClearPromotionHeader;
}
