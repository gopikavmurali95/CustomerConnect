part of 'route_for_sc_cubit.dart';

@freezed
class RouteForScState with _$RouteForScState {
  const factory RouteForScState.getAllRoutesForScReturnState(
      {required List<RouteModel>? routes}) = GetAllRoutesForScReturnState;

  const factory RouteForScState.getRoutesFailedState() = GetRoutesFailedState;

  factory RouteForScState.initial() =>
      const RouteForScState.getAllRoutesForScReturnState(routes: null);
}
