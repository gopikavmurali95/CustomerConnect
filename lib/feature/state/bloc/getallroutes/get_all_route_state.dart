part of 'get_all_route_bloc.dart';

@freezed
class GetAllRouteState with _$GetAllRouteState {
  const factory GetAllRouteState.getAllRoutesSuccessState(
      {required List<CuSInsRotList>? routes}) = GetAllRoutesSuccessState;

  const factory GetAllRouteState.getAllRoutesFailedState() =
      GetAllRoutesFailedState;

  factory GetAllRouteState.initial() =>
      const GetAllRouteState.getAllRoutesSuccessState(routes: null);
}
