import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/cus_items_model/cus_items_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cus_items_event.dart';
part 'cus_items_state.dart';
part 'cus_items_bloc.freezed.dart';

@injectable
class CusItemsBloc extends Bloc<CusItemsEvent, CusItemsState> {
  final ICusItemsRepo itemsRepo;
  CusItemsBloc(this.itemsRepo) : super(CusItemsState.initial()) {
    on<GetItemsEvent>((event, emit) async {
      List<CusItemsModel> searcheditems = [];
      Either<MainFailures, List<CusItemsModel>> items =
          await itemsRepo.getCusItems(event.route);

      emit(
        items.fold(
          (l) => const GetitemsFailedState(),
          (r) {
            searcheditems = r
                .where((element) =>
                    element.prdCode!
                        .toLowerCase()
                        .toUpperCase()
                        .contains(event.searchQuery.toUpperCase()) ||
                    element.prdName!
                        .toLowerCase()
                        .toUpperCase()
                        .contains(event.searchQuery.toUpperCase()))
                .toList();
            return GetCusItemsState(
                items: event.searchQuery.isEmpty ? r : searcheditems);
          },
        ),
      );
    });
    on<ClearItemsEvent>((event, emit) {
      const GetCusItemsState(items: null);
    });
  }
}
