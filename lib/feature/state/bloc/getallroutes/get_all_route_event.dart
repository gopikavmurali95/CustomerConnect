part of 'get_all_route_bloc.dart';

@freezed
class GetAllRouteEvent with _$GetAllRouteEvent {
  const factory GetAllRouteEvent.getAllRouteForCusEvent() =
      GetAllRouteForCusEvent;

  const factory GetAllRouteEvent.clearAllRouteEvent() = ClearAllRouteEvent;
}
