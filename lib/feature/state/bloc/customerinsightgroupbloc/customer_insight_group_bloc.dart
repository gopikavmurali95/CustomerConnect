import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/customer_insight_group_model/customer_insight_group_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'customer_insight_group_event.dart';
part 'customer_insight_group_state.dart';
part 'customer_insight_group_bloc.freezed.dart';

@injectable
class CustomerInsightGroupBloc
    extends Bloc<CustomerInsightGroupEvent, CustomerInsightGroupState> {
  final ICusInsightGroupRepo cusGroupRepo;
  CustomerInsightGroupBloc(this.cusGroupRepo)
      : super(CustomerInsightGroupState.initial()) {
    on<GetGroupWiseDataEvent>((event, emit) async {
      List<CustomerInsightGroupModel> searcheditems = [];
      Either<MainFailures, List<CustomerInsightGroupModel>> groupmodel =
          await cusGroupRepo.getGroupItems(event.id, event.mode);

      emit(groupmodel.fold((l) => const CustomerInsightGroupFailedState(), (r) {
        searcheditems = r
            .where((element) =>
                element.prdCode!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                element.prdName!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        return GetCusInsightGroupSatet(
            groupData: event.searchQuery.isEmpty ? r : searcheditems);
      }));
    });
    on<ClearGroupData>((event, emit) {
      emit(const GetCusInsightGroupSatet(groupData: null));
    });
  }
}
