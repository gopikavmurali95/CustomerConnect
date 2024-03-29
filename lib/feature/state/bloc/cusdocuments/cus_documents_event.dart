part of 'cus_documents_bloc.dart';

@freezed
class CusDocumentsEvent with _$CusDocumentsEvent {
  const factory CusDocumentsEvent.getCusDOcsEvevnt({required String cusID}) =
      GetCusDOcsEvevnt;

  const factory CusDocumentsEvent.clearCusDocsEvent() = ClearCusDocsEvent;
}
