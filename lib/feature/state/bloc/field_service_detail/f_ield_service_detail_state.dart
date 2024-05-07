part of 'f_ield_service_detail_bloc.dart';

@freezed
class FIeldServiceDetailState with _$FIeldServiceDetailState {
  const factory FIeldServiceDetailState.getFieldServiceDetailState(
          {required List<FieldServiceDetailModel>? details}) =
      GetFieldServiceDetailState;
  const factory FIeldServiceDetailState.fieldServiceDetailFailedState() =
      FieldServiceDetailFailedState;

  factory FIeldServiceDetailState.initial() =>
      const FIeldServiceDetailState.getFieldServiceDetailState(details: null);
}
