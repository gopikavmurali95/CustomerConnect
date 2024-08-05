import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/target_details_count_model/target_details_count_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'target_details_count_event.dart';
part 'target_details_count_state.dart';
part 'target_details_count_bloc.freezed.dart';

@injectable
class TargetDetailsCountBloc
    extends Bloc<TargetDetailsCountEvent, TargetDetailsCountState> {
  final ITargetRepo detailCount;
  TargetDetailsCountBloc(this.detailCount)
      : super(TargetDetailsCountState.initial()) {
    on<GetTargetDetailsCountEvent>((event, emit) async {
      Either<MainFailures, TargetDetailsCountModel> count =
          await detailCount.targetDetailCount(event.fromDate, event.rotID);
      emit(count.fold((l) => const TargetDetailCountFailed(),
          (r) => GetTargetDetailCountState(detailscount: r)));
    });
    on<ClearTargetDetailsCount>((event, emit) {
      emit(const GetTargetDetailCountState(detailscount: null));
    });
  }
}
