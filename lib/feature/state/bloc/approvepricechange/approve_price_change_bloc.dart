import 'package:bloc/bloc.dart';
import 'package:customer_connect/feature/data/models/approve_price_change_model/approve_price_change_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'approve_price_change_event.dart';
part 'approve_price_change_state.dart';
part 'approve_price_change_bloc.freezed.dart';

class ApprovePriceChangeBloc
    extends Bloc<ApprovePriceChangeEvent, ApprovePriceChangeState> {
  ApprovePriceChangeBloc() : super(ApprovePriceChangeState.initial()) {
    on<ApprovePriceChangeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
