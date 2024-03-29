import 'package:advance_pdf_viewer_fork/advance_pdf_viewer_fork.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'convertpdfurl_state.dart';
part 'convertpdfurl_cubit.freezed.dart';

class ConvertpdfurlCubit extends Cubit<ConvertpdfurlState> {
  ConvertpdfurlCubit() : super(ConvertpdfurlState.initial());

  void convertpdf(String url) async {
    PDFDocument doc = await PDFDocument.fromURL(url);
    emit(ConvertPDFUrlState(pdf: doc));
  }

  void clearpdfUrl() {
    emit(const ConvertPDFUrlState(pdf: null));
  }
}
