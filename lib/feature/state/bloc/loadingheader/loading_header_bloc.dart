import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/loading_header_in_model/loading_header_in_model.dart';
import 'package:customer_connect/feature/data/models/loading_headermodel/loading_headermodel.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'loading_header_event.dart';
part 'loading_header_state.dart';
part 'loading_header_bloc.freezed.dart';

@injectable
class LoadingHeaderBloc extends Bloc<LoadingHeaderEvent, LoadingHeaderState> {
  final ILoadingRepo loadingRepo;
  LoadingHeaderBloc(this.loadingRepo) : super(LoadingHeaderState.initial()) {
    on<GetLoadingHeaderEvent>((event, emit) async {
      Either<MainFailures, List<LoadingHeadermodel>> loadingheaders =
          await loadingRepo.getLoadingHeaders(event.loadingin);
      List<LoadingHeadermodel> searcheditems = [];

      emit(
        loadingheaders.fold(
          (l) => const LoadingHeaderFailedState(),
          (r) {
            searcheditems = r
                .where((element) =>
                    element.transactionCode!
                        .toLowerCase()
                        .toUpperCase()
                        .contains(event.searchQuery.toUpperCase()) ||
                    element.rotName!
                        .toLowerCase()
                        .toUpperCase()
                        .contains(event.searchQuery.toUpperCase()))
                .toList();
            return GetloadingHeaderState(
                loadingheaders: event.searchQuery.isEmpty ? r : searcheditems);
          },
        ),
      );
    });
    on<ClearLoadingHeadderEvent>((event, emit) {
      emit(const GetloadingHeaderState(loadingheaders: null));
    });
  }
}
