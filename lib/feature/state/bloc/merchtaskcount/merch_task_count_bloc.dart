import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/get_task_count_model/get_task_count_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'merch_task_count_event.dart';
part 'merch_task_count_state.dart';
part 'merch_task_count_bloc.freezed.dart';

@injectable
class MerchTaskCountBloc
    extends Bloc<MerchTaskCountEvent, MerchTaskCountState> {
  final IMerchandisingDashBoardRepo taskcountrepo;
  MerchTaskCountBloc(this.taskcountrepo)
      : super(MerchTaskCountState.initial()) {
    on<GetTaskCountEvent>((event, emit) async {
      Either<MainFailures, GetTaskCountModel> mtaskcount =
          await taskcountrepo.gettaskcount(event.fromDate, event.toDate);

      emit(mtaskcount.fold((l) => const TaskCountFailedState(),
          (r) => GetTaskCountState(taskcount: r)));
    });

    on<TaskCountClearEvent>((event, emit) {
      emit(const GetTaskCountState(taskcount: null));
    });
  }
}
