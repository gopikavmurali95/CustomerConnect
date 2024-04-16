part of 'ar_header_bloc.dart';

@freezed
class ArHeaderEvent with _$ArHeaderEvent {
  const factory ArHeaderEvent.getArHeaderData(
      {required ArTotalInModel arIn,
      required String searchQuery}) = GetArHeaderData;

  const factory ArHeaderEvent.clearArHeaderEvent() = ClearArHeaderEvent;
}
