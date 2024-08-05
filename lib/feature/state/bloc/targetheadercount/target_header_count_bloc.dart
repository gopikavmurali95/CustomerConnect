import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/target_header_count_model/target_header_count_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'target_header_count_event.dart';
part 'target_header_count_state.dart';
part 'target_header_count_bloc.freezed.dart';

@injectable
class TargetHeaderCountBloc
    extends Bloc<TargetHeaderCountEvent, TargetHeaderCountState> {
  final ITargetRepo targetcount;
  TargetHeaderCountBloc(this.targetcount)
      : super(TargetHeaderCountState.initial()) {
    on<GetTargetHeaderCountEvent>((event, emit) async {
      Either<MainFailures, TargetHeaderCountModel> count =
          await targetcount.targetHeaderCount(event.fromDate);
      emit(count.fold((l) => const TtargetHeaderCountFailed(),
          (r) => GetTargetHeaderCountState(headerCount: r)));
    });

    on<ClearTargetHeaderCount>((event, emit) {
      emit(const GetTargetHeaderCountState(headerCount: null));
    });
  }
}
