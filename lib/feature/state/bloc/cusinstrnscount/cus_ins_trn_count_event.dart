part of 'cus_ins_trn_count_bloc.dart';

@freezed
class CusInsTrnCountEvent with _$CusInsTrnCountEvent {
  const factory CusInsTrnCountEvent.gettrnCountsEvent(
      {required String userId,
      required String cusId,
      required String fDate,
      required String toDate}) = GettrnCountsEvent;
}
