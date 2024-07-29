import 'package:bloc/bloc.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/settlement_approval_header_out_model/settlement_approval_header_out_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'settlement_approval_header_event.dart';
part 'settlement_approval_header_state.dart';
part 'settlement_approval_header_bloc.freezed.dart';
@injectable
class SettlementApprovalHeaderBloc extends
 Bloc<SettlementApprovalHeaderEvent, SettlementApprovalHeaderState> {

  final ISettlementApprovalHeaderRepo settlmntHeaderrepo;
  
  SettlementApprovalHeaderBloc(this.settlmntHeaderrepo) : super(SettlementApprovalHeaderState.initial()) {
    on<SettlementApprovalHeaderEvent>((event, emit) {
     
    });
  }
}
