part of 'convertpdfurl_cubit.dart';

@freezed
class ConvertpdfurlState with _$ConvertpdfurlState {
  const factory ConvertpdfurlState.convertPDFUrl({required String? pdf}) =
      ConvertPDFUrlState;

  factory ConvertpdfurlState.initial() =>
      const ConvertpdfurlState.convertPDFUrl(pdf: null);
}
