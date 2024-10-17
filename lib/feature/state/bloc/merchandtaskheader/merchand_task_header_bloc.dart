import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/get_task_header_in_model/get_task_header_in_model.dart';
import 'package:customer_connect/feature/data/models/get_task_headers_out_model/get_task_headers_out_model.dart';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'merchand_task_header_event.dart';
part 'merchand_task_header_state.dart';
part 'merchand_task_header_bloc.freezed.dart';

@injectable
class MerchandTaskHeaderBloc
    extends Bloc<MerchandTaskHeaderEvent, MerchandTaskHeaderState> {
  final IMerchandiseTaskHeaderRepo taskheaderrepo;
  MerchandTaskHeaderBloc(this.taskheaderrepo)
      : super(MerchandTaskHeaderState.initial()) {
    on<TaskHeaderGetEvent>((event, emit) async {
      Either<MainFailures, List<GetTaskHeadersOutModel>> taskhead =
          await taskheaderrepo.getTaskHeader(event.tasks);

      List<GetTaskHeadersOutModel> searchitems = [];

      emit(taskhead.fold((l) => const TaskHeaderFailedState(), (r) {
        searchitems = r
            .where((element) =>
                element.taskCode!
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                element.taskName!
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                element.cusCode!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                element.cusName!
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        return GetTaskHeaderSuccessState(
            tasksheader: event.searchQuery.isEmpty ? r : searchitems);
      }));
    });

    on<TaskHeaderClearEvent>((event, emit) {
      emit(const GetTaskHeaderSuccessState(tasksheader: null));
    });
  }
}
