part of 'field_service_header_bloc.dart';

@freezed
class FieldServiceHeaderEvent with _$FieldServiceHeaderEvent {
  const factory FieldServiceHeaderEvent.getAllFieldServiceHeadersEvent(
      {required String userId}) = GetAllFieldServiceHeadersEvent;

  const factory FieldServiceHeaderEvent.clearFieldServiceHeaderEvent() =
      ClearFieldServiceHeaderEvent;
}
