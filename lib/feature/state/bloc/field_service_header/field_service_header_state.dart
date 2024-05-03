part of 'field_service_header_bloc.dart';

@freezed
class FieldServiceHeaderState with _$FieldServiceHeaderState {
  const factory FieldServiceHeaderState.getFieldServiceInvoiceHEadersState(
          {required List<FieldServiceInvoiceHeaderModel>? headers}) =
      GetFieldServiceInvoiceHEadersState;
  const factory FieldServiceHeaderState.fieldServiceInvoiceHeaderFailedState() =
      FieldServiceInvoiceHeaderFailedState;

  factory FieldServiceHeaderState.initial() =>
      const FieldServiceHeaderState.getFieldServiceInvoiceHEadersState(
          headers: null);
}
