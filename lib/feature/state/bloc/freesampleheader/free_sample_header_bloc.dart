import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/free_sample_header_model/free_sample_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'free_sample_header_event.dart';
part 'free_sample_header_state.dart';
part 'free_sample_header_bloc.freezed.dart';

@injectable
class FreeSampleHeaderBloc
    extends Bloc<FreeSampleHeaderEvent, FreeSampleHeaderState> {
  final IFreeSampleApprovalRepo freeSampleApprovalRepo;
  FreeSampleHeaderBloc(this.freeSampleApprovalRepo)
      : super(FreeSampleHeaderState.initial()) {
    on<GetFreeSampleHeadersEvent>((event, emit) async {
      List<FreeSampleHeaderModel> searchlistitems = [];

      Either<MainFailures, List<FreeSampleHeaderModel>> headers =
          await freeSampleApprovalRepo.getFreeSampleHeaders(event.mode);

      emit(headers.fold((l) => const FreesampleHeaderFailedState(), (r) {
        searchlistitems = r
            .where((element) =>
                element.cusName!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                element.rotName!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        return GetFreeSampleHeaderState(
            headers: event.searchQuery.isEmpty ? r : searchlistitems);
      }));
    });

    on<ClearFreeSampleheadersEvent>((event, emit) {
      emit(const GetFreeSampleHeaderState(headers: null));
    });
  }
}
