import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/void_transaction_header_model/void_transaction_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'void_transaction_header_event.dart';
part 'void_transaction_header_state.dart';
part 'void_transaction_header_bloc.freezed.dart';

@injectable
class VoidTransactionHeaderBloc
    extends Bloc<VoidTransactionHeaderEvent, VoidTransactionHeaderState> {
  final IVoidTransactionRepo voidHeaderRepo;
  VoidTransactionHeaderBloc(this.voidHeaderRepo)
      : super(VoidTransactionHeaderState.initial()) {
    on<GetVoidTransactionHeaderEvent>((event, emit) async {
      List<VoidTransactionHeaderModel> searchlistitems = [];

      Either<MainFailures, List<VoidTransactionHeaderModel>> headers =
          await voidHeaderRepo.getVoidTransactionHeader(event.statusValue);

      emit(headers.fold((l) => const VoidTransactionHeaderFailure(), (r) {
        searchlistitems = r
            .where((element) =>
                (element.rotName ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.rotCode ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.cusCode ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.cusName ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        return GetVoidTransactionHeaderState(
            headers: event.searchQuery.isEmpty ? r : searchlistitems);
      }));
    });
    on<ClearVoidTransactionHeader>((event, emit) {
      emit(const GetVoidTransactionHeaderState(headers: null));
    });
  }
}
