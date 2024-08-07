part of 'merchdisplaycount_bloc.dart';

@freezed
class MerchdisplaycountState with _$MerchdisplaycountState {
  const factory MerchdisplaycountState.getDisplayCountState(
      {required GetDisplayCountModel? discount}) = GetDisplayCountState;

  const factory MerchdisplaycountState.dispalyCountFailedState() =
      DispalyCountFailedState;

  factory MerchdisplaycountState.initial() =>
      const MerchdisplaycountState.getDisplayCountState(discount: null);
}
