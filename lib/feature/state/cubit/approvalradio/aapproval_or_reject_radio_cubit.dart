import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'aapproval_or_reject_radio_state.dart';
part 'aapproval_or_reject_radio_cubit.freezed.dart';

class AapprovalOrRejectRadioCubit extends Cubit<AapprovalOrRejectRadioState> {
  AapprovalOrRejectRadioCubit() : super(AapprovalOrRejectRadioState.initial());

  void changeApprovalStatus(bool isApproved) {
    emit(ApprovalStatusState(isApproved: isApproved));
  }
}
