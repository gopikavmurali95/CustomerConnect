part of 'load_req_detail_bloc.dart';

@freezed
class LoadReqDetailState with _$LoadReqDetailState {

  const factory LoadReqDetailState.loadreqDetailSuccessState(
  {required List<LoadReqDetailModel>? details}) = LoadreqDetailSuccessState;

  const factory LoadReqDetailState.loadreqDetailFailedState() = LoadreqDetailFailedState;

   factory LoadReqDetailState.initial() =>
       const  LoadReqDetailState.loadreqDetailSuccessState(details: null);
}
