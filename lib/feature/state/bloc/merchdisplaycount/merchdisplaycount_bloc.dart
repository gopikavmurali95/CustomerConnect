import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/get_display_count_model/get_display_count_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'merchdisplaycount_event.dart';
part 'merchdisplaycount_state.dart';
part 'merchdisplaycount_bloc.freezed.dart';

@injectable
class MerchdisplaycountBloc
    extends Bloc<MerchdisplaycountEvent, MerchdisplaycountState> {
  final IMerchandisingDashBoardRepo dispcountrepo;
  MerchdisplaycountBloc(this.dispcountrepo)
      : super(MerchdisplaycountState.initial()) {
    on<GetDisplayCountEvent>((event, emit) async {
      Either<MainFailures, GetDisplayCountModel> displaycounts =
          await dispcountrepo.getdisplaycount(event.fromDate, event.toDate);

      emit(displaycounts.fold((l) => const DispalyCountFailedState(),
          (r) => GetDisplayCountState(discount: r)));
    });
    on<DisplayCountClearEvent>((event, emit) {
      emit(const GetDisplayCountState(discount: null));
    });
  }
}
