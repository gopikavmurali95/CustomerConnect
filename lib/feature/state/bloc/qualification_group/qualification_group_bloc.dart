import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/qualification_group_model/qualification_group_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'qualification_group_event.dart';
part 'qualification_group_state.dart';
part 'qualification_group_bloc.freezed.dart';

@injectable
class QualificationGroupBloc
    extends Bloc<QualificationGroupEvent, QualificationGroupState> {
  final IQualificationGroupRepo qualificationgroup;
  QualificationGroupBloc(this.qualificationgroup)
      : super(QualificationGroupState.initial()) {
    on<GetGroupWiseDataEvent>((event, emit) async {
      Either<MainFailures, List<QualificationGroupModel>> groupmodel =
          await qualificationgroup.getGroupItems(event.id, event.mode);

      emit(groupmodel.fold((l) => const GroupWiseDataFailed(),
          (r) => GetGroupwiseDataState(groupdata: r)));
    });

    on<ClearGroupData>((event, emit) {
      emit(const GetGroupwiseDataState(groupdata: null));
    });
  }
}
