import 'package:bloc/bloc.dart';
import 'package:customer_connect/feature/data/models/settlement_approval_header_out_model/settlement_approval_header_out_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settlement_approval_header_bloc_event.dart';
part 'settlement_approval_header_bloc_state.dart';
part 'settlement_approval_header_bloc_bloc.freezed.dart';

class SettlementApprovalHeaderBlocBloc extends Bloc<SettlementApprovalHeaderBlocEvent, SettlementApprovalHeaderBlocState> {
  SettlementApprovalHeaderBlocBloc() : super(_Initial()) {
    on<SettlementApprovalHeaderBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
