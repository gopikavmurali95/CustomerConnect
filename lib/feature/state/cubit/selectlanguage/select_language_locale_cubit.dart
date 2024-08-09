import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'select_language_locale_state.dart';
part 'select_language_locale_cubit.freezed.dart';

class SelectLanguageLocaleCubit extends Cubit<SelectLanguageLocaleState> {
  SelectLanguageLocaleCubit() : super(SelectLanguageLocaleState.initial());

  void changeLanguage(Locale? locale) {
    emit(SelectLanguageState(locale: locale ?? const Locale('en')));
  }
}
