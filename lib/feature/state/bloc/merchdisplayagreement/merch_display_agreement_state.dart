part of 'merch_display_agreement_bloc.dart';

@freezed
class MerchDisplayAgreementState with _$MerchDisplayAgreementState {
  const factory MerchDisplayAgreementState.getMerchDisplayAgreementDataState(
          {required List<MerchandisingDisplayAgreementMdel>? agreementData}) =
      GetMerchDisplayAgreementDataState;

  const factory MerchDisplayAgreementState.getMerchDisplayAgreementDataFailed() =
      GetMerchDisplayAgreementDataFailed;

  factory MerchDisplayAgreementState.initial() =>
      const MerchDisplayAgreementState.getMerchDisplayAgreementDataState(
          agreementData: null);
}
