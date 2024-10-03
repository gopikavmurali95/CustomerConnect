import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/cus_ins_customers_model/cus_ins_customers_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cus_insight_customers_pagination_state.dart';
part 'cus_insight_customers_pagination_cubit.freezed.dart';

@injectable
class CusInsightCustomersPaginationCubit extends Cubit<CusInsightCustomersPaginationState> {
  final ICusInsightsCustomersRepo cusInsightsCustomersRepo;
  CusInsightCustomersPaginationCubit(this.cusInsightsCustomersRepo) : super(CusInsightCustomersPaginationState.initial());

  void getCustomersHeader ({required String userId,
      required String area,
      required String subarea,
      required String route,
      required String searchQuery,
      required String pagenum}) async{
        emit(state.copyWith(isLoading: true));
        Either<MainFailures, List<CusInsCustomersModel>> header = await cusInsightsCustomersRepo.getCustomers(userId, area, subarea, route, searchQuery, pagenum);
        List<CusInsCustomersModel> oldcustomerlist = [];
        oldcustomerlist.addAll(state.headers??[]);

        emit(header.fold((l) => state.copyWith(headers: oldcustomerlist), (r) {
          if (searchQuery.isNotEmpty) {
            oldcustomerlist.clear();
          }
          oldcustomerlist.addAll(r);
          return GetCustomersHeaderPageState(headers: oldcustomerlist, isLoading: false);
        }));
      }

      void clearCustomers(){
        emit(const GetCustomersHeaderPageState(headers: null, isLoading: false));
      }
}
