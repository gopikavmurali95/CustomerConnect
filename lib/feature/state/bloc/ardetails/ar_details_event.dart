part of 'ar_details_bloc.dart';

@freezed
class ArDetailsEvent with _$ArDetailsEvent {
  const factory ArDetailsEvent.getArDetailsEvent({required String arhID}) =
      GetArDetailsEvent;
  const factory ArDetailsEvent.clearArDetailEvent() = ClearArDetailEvent;
}
