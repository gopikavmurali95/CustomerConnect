import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/target_header_list_model/target_header_list_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'targer_header_list_event.dart';
part 'targer_header_list_state.dart';
part 'targer_header_list_bloc.freezed.dart';

@injectable
class TargerHeaderListBloc
    extends Bloc<TargerHeaderListEvent, TargerHeaderListState> {
  final ITargetRepo headerData;
  TargerHeaderListBloc(this.headerData)
      : super(TargerHeaderListState.initial()) {
    on<GetTargetHeaderItemsEvent>((event, emit) async {
      List<TargetHeaderListModel> searchlistitems = [];

      Either<MainFailures, List<TargetHeaderListModel>> data =
          await headerData.getTargetHeaderItems(event.fromDate);
      emit(data.fold((l) => const TargetHeaderItemsFailed(), (r) {
        searchlistitems = r
            .where((element) =>
                (element.rotCode ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.rotName ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        return GetTargetHeaderItemsState(
            header: event.searchQuery.isEmpty ? r : searchlistitems);
      }));
    });

    on<ClearTargetHeaderItems>((event, emit) {
      emit(const GetTargetHeaderItemsState(header: null));
    });
  }
}
