part of 'select_language_locale_cubit.dart';

@freezed
class SelectLanguageLocaleState with _$SelectLanguageLocaleState {
  const factory SelectLanguageLocaleState.selectLanguageState(
      {required Locale? locale}) = SelectLanguageState;

  factory SelectLanguageLocaleState.initial() =>
      const SelectLanguageLocaleState.selectLanguageState(locale: null);
}
