part of 'cus_documents_bloc.dart';

@freezed
class CusDocumentsState with _$CusDocumentsState {
  const factory CusDocumentsState.getCusDocsState(
      {required List<CusDocumentsModel>? docs}) = GetCusDocsState;
  const factory CusDocumentsState.getCusDOcsFailedState() =
      GetCusDOcsFailedState;

  factory CusDocumentsState.initial() =>
      const CusDocumentsState.getCusDocsState(docs: null);
}
