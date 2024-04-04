import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/user_notification_model/user_notification_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'notification_listing_event.dart';
part 'notification_listing_state.dart';
part 'notification_listing_bloc.freezed.dart';

@injectable
class NotificationListingBloc
    extends Bloc<NotificationListingEvent, NotificationListingState> {
  final INotificationRepo notificationRepo;
  NotificationListingBloc(this.notificationRepo)
      : super(NotificationListingState.initial()) {
    on<GetUserNotificationsEvent>((event, emit) async {
      Either<MainFailures, List<UserNotificationModel>> noti =
          await notificationRepo.getUserNotifications(event.userID);
      emit(noti.fold((l) => const GetNotificationFailedState(),
          (r) => GetUserNotificationsState(notifications: r)));
    });
    on<ClearNotifcationsEvent>((event, emit) {
      emit(const GetUserNotificationsState(notifications: null));
    });
  }
}
