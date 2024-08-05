part of 'customer_settings_bloc.dart';

@freezed
class CustomerSettingsState with _$CustomerSettingsState {
  const factory CustomerSettingsState.getCustomerSettingsState(
      {required CustomerSettingsModel? settings}) = GetCustomerSettingsState;

  const factory CustomerSettingsState.customerSettingsFailedState() =
      CustomerSettingsFailedState;

  factory CustomerSettingsState.initial() =>
      const CustomerSettingsState.getCustomerSettingsState(settings: null);
}
