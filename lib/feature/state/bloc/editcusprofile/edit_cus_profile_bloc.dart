import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/edit_profile_in_model/edit_profile_in_model.dart';
import 'package:customer_connect/feature/data/models/edit_profile_resp_model/edit_profile_resp_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'edit_cus_profile_event.dart';
part 'edit_cus_profile_state.dart';
part 'edit_cus_profile_bloc.freezed.dart';

@injectable
class EditCusProfileBloc
    extends Bloc<EditCusProfileEvent, EditCusProfileState> {
  final IProfileEditRepo profileEditRepo;
  EditCusProfileBloc(this.profileEditRepo)
      : super(EditCusProfileState.initial()) {
    on<EditProfileEvent>(
      (event, emit) async {
        Either<MainFailures, EditProfileRespModel> edit =
            await profileEditRepo.editProfile(event.profile);

        emit(
          edit.fold(
            (l) => const EditFailedState(),
            (r) => EditProfileState(editrep: r),
          ),
        );
      },
    );
    on<ClearEditStateEvent>(
      (event, emit) {
        emit(const EditProfileState(editrep: null));
      },
    );
    on<EditLoadingEvent>((event, emit) {
      emit(const EditLoadingState());
    });
  }
}
