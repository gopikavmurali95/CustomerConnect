import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/merchandising_display_agreement_mdel/merchandising_display_agreement_mdel.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'merch_display_agreement_event.dart';
part 'merch_display_agreement_state.dart';
part 'merch_display_agreement_bloc.freezed.dart';

@injectable
class MerchDisplayAgreementBloc
    extends Bloc<MerchDisplayAgreementEvent, MerchDisplayAgreementState> {
  final IMerchDisplayAgreement dispAgreementRepo;
  MerchDisplayAgreementBloc(this.dispAgreementRepo)
      : super(MerchDisplayAgreementState.initial()) {
    on<GetMerchDisplayAgreementEvent>((event, emit) async {
      List<MerchandisingDisplayAgreementMdel> searchlistitems = [];

      Either<MainFailures, List<MerchandisingDisplayAgreementMdel>> data =
          await dispAgreementRepo.getAgreementItems(
              event.fromDate, event.toDate, event.status);

      emit(data.fold((l) => const GetMerchDisplayAgreementDataFailed(), (r) {
        searchlistitems = r
            .where((element) =>
                (element.cusCode ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.cusName ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.type ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        return GetMerchDisplayAgreementDataState(
            agreementData: event.searchQuery.isEmpty ? r : searchlistitems);
      }));
    });
    on<ClearMerchDisplayAgreementData>((event, emit) {
      emit(const GetMerchDisplayAgreementDataState(agreementData: null));
    });
  }
}
