import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/cus_documents_model/cus_documents_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cus_documents_event.dart';
part 'cus_documents_state.dart';
part 'cus_documents_bloc.freezed.dart';

@injectable
class CusDocumentsBloc extends Bloc<CusDocumentsEvent, CusDocumentsState> {
  final IcusDocumentsModel cusdocs;
  CusDocumentsBloc(this.cusdocs) : super(CusDocumentsState.initial()) {
    on<GetCusDOcsEvevnt>((event, emit) async {
      Either<MainFailures, List<CusDocumentsModel>> docs =
          await cusdocs.getCusDocuments(event.cusID);

      emit(docs.fold((l) => const GetCusDOcsFailedState(),
          (r) => GetCusDocsState(docs: r)));
    });
    on<ClearCusDocsEvent>((event, emit) {
      emit(const GetCusDocsState(docs: null));
    });
  }
}
