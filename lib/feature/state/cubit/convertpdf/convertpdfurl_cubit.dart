import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'convertpdfurl_state.dart';
part 'convertpdfurl_cubit.freezed.dart';

class ConvertpdfurlCubit extends Cubit<ConvertpdfurlState> {
  ConvertpdfurlCubit() : super(ConvertpdfurlState.initial());

  void convertpdf(String url) async {
    emit(ConvertPDFUrlState(pdf: url));
  }

  void clearpdfUrl() {
    emit(const ConvertPDFUrlState(pdf: null));
  }
}
