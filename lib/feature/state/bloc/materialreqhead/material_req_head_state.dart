part of 'material_req_head_bloc.dart';

@freezed
class MaterialReqHeadState with _$MaterialReqHeadState {
  const factory MaterialReqHeadState.materialreqheadsuccess(
          {required List<MaterialReqHeaderModel>? materialheader}) =
      Materialreqheadsuccess;

  const factory MaterialReqHeadState.materialreqheadFailed() =
      MaterialreqheadFailed;

  factory MaterialReqHeadState.initial() =>
      const MaterialReqHeadState.materialreqheadsuccess(materialheader: null);
}
