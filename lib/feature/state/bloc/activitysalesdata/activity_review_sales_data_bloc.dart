import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/activity_review_sales_model/activity_review_sales_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'activity_review_sales_data_event.dart';
part 'activity_review_sales_data_state.dart';
part 'activity_review_sales_data_bloc.freezed.dart';

@injectable
class ActivityReviewSalesDataBloc
    extends Bloc<ActivityReviewSalesDataEvent, ActivityReviewSalesDataState> {
  final IActivityReviewRepo activityReviewRepo;
  ActivityReviewSalesDataBloc(this.activityReviewRepo)
      : super(ActivityReviewSalesDataState.initial()) {
    on<GetActivitySalesEvent>((event, emit) async {
      Either<MainFailures, ActivityReviewSalesModel> sales =
          await activityReviewRepo.getActvitySalesData(event.udpID);

      emit(sales.fold((l) => const ActivitySalesFailedState(),
          (r) => GetActivityReviewSalesData(sales: r)));
    });

    on<ClearActivitySalesEvent>((event, emit) {
      emit(const GetActivityReviewSalesData(sales: null));
    });
  }
}
