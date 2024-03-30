part of 'promotion_details_bloc.dart';

@freezed
class PromotionDetailsEvent with _$PromotionDetailsEvent {
  const factory PromotionDetailsEvent.promotionDetailsEvent(
      {required String id}) = GetPromotionDetailsEvent;

  const factory PromotionDetailsEvent.clearPromotionDetails() =
      ClearPromotionDetails;
}
