part of 'customer_settings_bloc.dart';

@freezed
class CustomerSettingsEvent with _$CustomerSettingsEvent {
  const factory CustomerSettingsEvent.getCustomerSettingsEvent(
      {required String usrID}) = GetCustomerSettingsEvent;

  const factory CustomerSettingsEvent.clearSettingsEvent() = ClearSettingsEvent;
}
