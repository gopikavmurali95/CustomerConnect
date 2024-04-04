import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/notification_replay_in_model/notification_replay_in_model.dart';
import 'package:customer_connect/feature/data/models/notification_replay_out_model/notification_replay_out_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'notification_replay_bloc_event.dart';
part 'notification_replay_bloc_state.dart';
part 'notification_replay_bloc_bloc.freezed.dart';

@injectable
class NotificationReplayBlocBloc
    extends Bloc<NotificationReplayBlocEvent, NotificationReplayBlocState> {
  final INotificationRepo notificationRepo;
  NotificationReplayBlocBloc(this.notificationRepo)
      : super(NotificationReplayBlocState.initial()) {
    on<SendNotiReplayEvent>((event, emit) async {
      Either<MainFailures, NotificationReplayOutModel> replay =
          await notificationRepo.sendNotiReplay(event.replay);
      emit(replay.fold((l) => const NotiReplayFailedState(),
          (r) => SendNotiReplayState(replay: r)));
    });
    on<ClearNotiReplayState>((event, emit) {
      emit(const SendNotiReplayState(replay: null));
    });
  }
}
