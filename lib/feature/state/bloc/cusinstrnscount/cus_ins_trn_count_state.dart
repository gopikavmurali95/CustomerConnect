part of 'cus_ins_trn_count_bloc.dart';

@freezed
class CusInsTrnCountState with _$CusInsTrnCountState {
  const factory CusInsTrnCountState.getTransactionCountState(
      {required CusInsTrNCounts? counts}) = GetTransactionCountState;
  const factory CusInsTrnCountState.getcountFailedState() = GetcountFailedState;

  factory CusInsTrnCountState.initial() =>
      const CusInsTrnCountState.getTransactionCountState(counts: null);
}
