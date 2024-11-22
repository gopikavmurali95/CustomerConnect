import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/stamped_copy_model/stamped_copy_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'stamped_copy_event.dart';
part 'stamped_copy_state.dart';
part 'stamped_copy_bloc.freezed.dart';

@injectable
class StampedCopyBloc extends Bloc<StampedCopyEvent, StampedCopyState> {
  final IStampedCopyRepo stampedRepo;
  StampedCopyBloc(this.stampedRepo) : super(StampedCopyState.initial()) {
    on<GenerateStampedCopyEvent>((event, emit) async {
      Either<MainFailures, StampedCopyModel> data =
          await stampedRepo.getCopy(event.invId);
      emit(data.fold((l) => const StampedCopyFailed(),
          (r) => GenerateStampedCopy(copy: r)));
    });
    on<StampedCopyLoadingEvent>((event, emit) {
      emit(const StampedCopyLoading());
    });
    on<ClearStampedCopy>((event, emit) {
      emit(const GenerateStampedCopy(copy: null));
    });
  }
}
