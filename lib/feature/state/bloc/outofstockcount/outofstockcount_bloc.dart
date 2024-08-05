import 'package:bloc/bloc.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/get_out_of_stock_count_model/get_out_of_stock_count_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'outofstockcount_event.dart';
part 'outofstockcount_state.dart';
part 'outofstockcount_bloc.freezed.dart';

@injectable
class OutofstockcountBloc
    extends Bloc<OutofstockcountEvent, OutofstockcountState> {
  final IMerchandisingDashBoardRepo countrepo;
  OutofstockcountBloc(this.countrepo) : super(OutofstockcountState.initial()) {
    on<OutofstockcountEvent>((event, emit) {});
  }
}
