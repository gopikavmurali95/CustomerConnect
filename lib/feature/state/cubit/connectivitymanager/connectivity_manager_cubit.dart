import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'connectivity_manager_state.dart';
part 'connectivity_manager_cubit.freezed.dart';

class ConnectivityManagerCubit extends Cubit<ConnectivityManagerState> {
  ConnectivityManagerCubit() : super(const ConnectivityManagerState.initial());
}
