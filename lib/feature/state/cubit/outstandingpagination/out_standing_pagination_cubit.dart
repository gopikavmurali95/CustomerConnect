import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/out_standing_header/OutStandOutModel.dart';
import 'package:customer_connect/feature/data/models/out_standing_header/OutStandingHeaderModel.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'out_standing_pagination_state.dart';
part 'out_standing_pagination_cubit.freezed.dart';

@injectable
class OutStandingPaginationCubit extends Cubit<OutStandingPaginationState> {
  final IOutStandingHeaderRepo outStandingHeaderRepo;
  OutStandingPaginationCubit(this.outStandingHeaderRepo)
      : super(OutStandingPaginationState.initial());
  void getOutStatndingHeaders(
      OutStandingHeaderModel outIn, String searchQuery) async {
    Either<MainFailures, List<OutStandOutModel>> headers =
        await outStandingHeaderRepo.getOutStandingHeaders(outIn);

    List<OutStandOutModel>? oldproductslist = [];
    oldproductslist.addAll(state.headers ?? []);

    emit(headers.fold((l) => state.copyWith(headers: oldproductslist), (r) {
      if (outIn.searchQuery != null && outIn.searchQuery!.isNotEmpty) {
        oldproductslist.clear();
      }
      oldproductslist.addAll(r);
      /* searcheditems = oldproductslist
          .where((element) =>
              element.invoiceID!
                  .toLowerCase()
                  .toUpperCase()
                  .contains(searchQuery.toUpperCase()) ||
              element.cusCode!
                  .toLowerCase()
                  .toUpperCase()
                  .contains(searchQuery.toUpperCase()))
          .toList(); */
      return GetOutStandingHeadersPageState(
          headers: /*  outIn.searchQuery == null ||
                  outIn.searchQuery!.isEmpty && oldproductslist.isNotEmpty
              ? oldproductslist.isEmpty
                  ? r
                  : oldproductslist
              : oldproductslist.isEmpty
                  ? r
                  : */
              oldproductslist);
    }));
  }

  void clearOutStanding() {
    emit(const GetOutStandingHeadersPageState(headers: null));
  }
}
