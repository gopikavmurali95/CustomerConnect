part of 'merch_display_agreement_bloc.dart';

@freezed
class MerchDisplayAgreementEvent with _$MerchDisplayAgreementEvent {
  const factory MerchDisplayAgreementEvent.getMerchDisplayAgreementEvent(
      {required String fromDate,
      required String toDate,
      required String status,
      required String searchQuery}) = GetMerchDisplayAgreementEvent;

  const factory MerchDisplayAgreementEvent.clearMerchDisplayAgreementData() =
      ClearMerchDisplayAgreementData;
}
