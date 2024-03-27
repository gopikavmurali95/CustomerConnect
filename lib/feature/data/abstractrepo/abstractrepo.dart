import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/models/customer_transaction_model/customer_transaction_model.dart';
import 'package:customer_connect/feature/data/models/invoice_details_footer_model/invoice_details_footer_model.dart';
import 'package:customer_connect/feature/data/models/invoice_details_model/invoice_details_model.dart';
import 'package:customer_connect/feature/data/models/invoice_header_inparas/invoice_header_inparas.dart';
import 'package:customer_connect/feature/data/models/invoice_header_model/invoice_header_model.dart';
import 'package:customer_connect/feature/data/models/loading_detail_model/loading_detail_model.dart';
import 'package:customer_connect/feature/data/models/loading_header_in_model/loading_header_in_model.dart';
import 'package:customer_connect/feature/data/models/loading_headermodel/loading_headermodel.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/picking_and_loadin_counts_model/picking_and_loadin_counts_model.dart';
import 'package:customer_connect/feature/data/models/sales_oder_count_model/sales_oder_count_model.dart';
import 'package:customer_connect/feature/data/models/total_orders_details_model/total_orders_details_model.dart';
import 'package:customer_connect/feature/data/models/total_orders_inparas/total_orders_inparas.dart';
import 'package:customer_connect/feature/data/models/total_orders_model/total_orders_model.dart';
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

abstract class ILoadingRepo {
  Future<Either<MainFailures, List<LoadingHeadermodel>>> getLoadingHeaders(
      LoadingHeaderInModel loadingIn);

  Future<Either<MainFailures, List<LoadingDetailModel>>> getLoadingDetail(
      String iD);
}

abstract class IInvoiceRepo {
  Future<Either<MainFailures, List<InvoiceHeaderModel>>> getInvoiceHeaders(
      InvoiceHeaderInparas invoiceIn);

  Future<Either<MainFailures, List<InvoiceDetailsModel>>> getInvoiceDetail(
      String iD);

  Future<Either<MainFailures, List<InvoiceDetailsFooterModel>>>
      getInvoiceDetailFooter(String iD);
}

abstract class ITotalOrdersRepo {
  Future<Either<MainFailures, List<TotalOrdersModel>>> getTotalOrders(
      TotalOrdersInparas ordersIn);

  Future<Either<MainFailures, List<TotalOrdersDetailsModel>>> getOrderDetail(
      String ordID);
}
