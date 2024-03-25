import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/models/customer_transaction_model/customer_transaction_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/picking_and_loadin_counts_model/picking_and_loadin_counts_model.dart';
import 'package:customer_connect/feature/data/models/sales_oder_count_model/sales_oder_count_model.dart';
import 'package:dartz/dartz.dart';

abstract class ILoginRepo {
  Future<Either<MainFailures, LoginUserModel>> userLogin(
      String username, String password);
}

abstract class IPickingAndLoadinCountRepo {
  Future<Either<MainFailures, PickingAndLoadinCountsModel>> plCount(
      String userID);
}

abstract class ICustomerTransactionRepo {
  Future<Either<MainFailures, CustomerTransactionModel>> ctCount(String userID);
}

abstract class ISalesOrderRepo {
  Future<Either<MainFailures, SalesOderCountModel>> soCount(String userID);
}