import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/ar_header_model/ar_header_model.dart';
import 'package:customer_connect/feature/data/models/ar_total_collection_model/ar_total_collection_model.dart';
import 'package:customer_connect/feature/data/models/ar_total_in_model/ar_total_in_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'ar_header_event.dart';
part 'ar_header_state.dart';
part 'ar_header_bloc.freezed.dart';

@injectable
class ArHeaderBloc extends Bloc<ArHeaderEvent, ArHeaderState> {
  final IArCollectionRepo arCollectionRepo;
  ArHeaderBloc(this.arCollectionRepo) : super(ArHeaderState.initial()) {
    on<GetArHeaderData>((event, emit) async {
      Either<MainFailures, ArTotalCollectionModel> totalcollection =
          await arCollectionRepo.getArTotal(event.arIn);

      Either<MainFailures, List<ArHeaderModel>> arheader =
          await arCollectionRepo.getARHeaders(event.arIn);

      List<ArHeaderModel> searcheditems = [];

      emit(arheader.fold((l) => const ArHeaderFailedState(), (hr) {
        searcheditems = hr
            .where((element) =>
                element.arhArNumber!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                element.cshCode!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                element.cusCode!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        return ArHeaderSuccessState(
            artotal: totalcollection.fold((l) => null, (r) => r),
            arHeaders: event.searchQuery.isEmpty ? hr : searcheditems);
      }));
    });

    on<ClearArHeaderEvent>((event, emit) {
      emit(const ArHeaderSuccessState(artotal: null, arHeaders: null));
    });
  }
}
