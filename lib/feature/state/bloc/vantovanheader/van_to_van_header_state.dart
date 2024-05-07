part of 'van_to_van_header_bloc.dart';

@freezed
class VanToVanHeaderState with _$VanToVanHeaderState {
  const factory VanToVanHeaderState.getVanToVanHeaderState(
      {required List<VanToVanHeaderModel>? headers}) = GettVanToVanHeaderState;

  const factory VanToVanHeaderState.vanToVanHeaderFailedstate() =
      VanToVanHeaderFailedstate;

  factory VanToVanHeaderState.initial() =>
      const VanToVanHeaderState.getVanToVanHeaderState(headers: null);
}
