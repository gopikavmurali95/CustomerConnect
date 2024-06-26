part of 'cus_ins_ar_header_bloc.dart';

@freezed
class CusInsArHeaderEvent with _$CusInsArHeaderEvent {
  const factory CusInsArHeaderEvent.getCusInsArHeaderEvent(
      {required CusInsArHeaderInModel arIn,
      required String searchQuery}) = GetCusInsArHeaderEvent;
  const factory CusInsArHeaderEvent.clearCusInsArHeader() = ClearCusInsArHeader;
}
