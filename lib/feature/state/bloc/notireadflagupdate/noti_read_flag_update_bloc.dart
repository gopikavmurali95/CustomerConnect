import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/notification_replay_out_model/notification_replay_out_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'noti_read_flag_update_event.dart';
part 'noti_read_flag_update_state.dart';
part 'noti_read_flag_update_bloc.freezed.dart';

@injectable
class NotiReadFlagUpdateBloc
    extends Bloc<NotiReadFlagUpdateEvent, NotiReadFlagUpdateState> {
  final INotificationRepo notificationRepo;
  NotiReadFlagUpdateBloc(this.notificationRepo)
      : super(NotiReadFlagUpdateState.initial()) {
    on<UpdateNotiReadFLagEvent>((event, emit) async {
      Either<MainFailures, NotificationReplayOutModel> update =
          await notificationRepo.updateNotiReadFlag(event.rntId);

      emit(update.fold((l) => const NotiReadUpdateFailedState(),
          (r) => UpdateNotiReadFlagUpdateState(update: r)));
    });
    on<ClearreadFlagState>((event, emit) {
      emit(const UpdateNotiReadFlagUpdateState(update: null));
    });
  }
}
