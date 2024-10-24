import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/item_listing_count/item_listing_count.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'item_listing_count_event.dart';
part 'item_listing_count_state.dart';
part 'item_listing_count_bloc.freezed.dart';

@injectable
class ItemListingCountBloc
    extends Bloc<ItemListingCountEvent, ItemListingCountState> {
  final ICusItemsRepo itemcount;
  ItemListingCountBloc(this.itemcount)
      : super(ItemListingCountState.initial()) {
    on<GetItmesCountEvent>((event, emit) async {
      Either<MainFailures, ItemListingCount> data =
          await itemcount.getCusItemsCount(event.cusId, event.route,
              event.fromDate, event.toDate, event.pagenum, event.searchString);
      emit(data.fold((l) => const ItemCountFailedState(),
          (r) => GetItemListCountState(count: r)));
    });

    on<ClearItemListingCount>((event, emit) {
      emit(const ItemListingCountState.getItemListCountState(count: null));
    });
  }
}
