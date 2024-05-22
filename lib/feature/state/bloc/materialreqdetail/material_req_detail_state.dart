part of 'material_req_detail_bloc.dart';

@freezed
class MaterialReqDetailState with _$MaterialReqDetailState {
  const factory MaterialReqDetailState.materialreqdetailsuccess(
          {required List<MaterialReqDetailModel>? materialdetail}) =
      Materialreqdetailsuccess;

  const factory MaterialReqDetailState.materialreqdetailFailed() =
      MaterialreqdetailFailed;
  factory MaterialReqDetailState.initial() =>
      const MaterialReqDetailState.materialreqdetailsuccess(
          materialdetail: null);
}
