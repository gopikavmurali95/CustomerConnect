import 'package:bloc/bloc.dart';
import 'package:customer_connect/feature/view/HomeScreen/homegraphmodel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_graph_switch_state.dart';
part 'home_graph_switch_cubit.freezed.dart';

class HomeGraphSwitchCubit extends Cubit<HomeGraphSwitchState> {
  HomeGraphSwitchCubit() : super(HomeGraphSwitchState.initial());

  void chnageGraph(HomeGraphModel graph) {
    emit(SwitchGraphState(graph: graph));
  }
}
