import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'inverntory_trans_ex_pand_state.dart';
part 'inverntory_trans_ex_pand_cubit.freezed.dart';

class InverntoryTransExPandCubit extends Cubit<InverntoryTransExPandState> {
  InverntoryTransExPandCubit() : super(InverntoryTransExPandState.initial());
  void expandedContainer(bool isExpanded) {
    emit(ExpandInvtryTransContainerState(isExpanded: !isExpanded));
  }
}
