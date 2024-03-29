import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/models/ar_detail_model/ar_detail_model.dart';
import 'package:customer_connect/feature/data/models/ar_header_model/ar_header_model.dart';
import 'package:customer_connect/feature/data/models/ar_total_collection_model/ar_total_collection_model.dart';
import 'package:customer_connect/feature/data/models/ar_total_in_model/ar_total_in_model.dart';
import 'package:customer_connect/feature/data/models/cu_s_profile_model/cu_s_profile_model.dart';
import 'package:customer_connect/feature/data/models/cus_ins_ar_h_eader_model/cus_ins_ar_h_eader_model.dart';
import 'package:customer_connect/feature/data/models/cus_ins_ar_header_in_model/cus_ins_ar_header_in_model.dart';
import 'package:customer_connect/feature/data/models/cus_ins_customers_model/cus_ins_customers_model.dart';
import 'package:customer_connect/feature/data/models/cus_ins_inv_type_model/cus_ins_inv_type_model.dart';
import 'package:customer_connect/feature/data/models/cus_ins_invoice_header_in_model/cus_ins_invoice_header_in_model.dart';
import 'package:customer_connect/feature/data/models/cus_ins_invoice_model/cus_ins_invoice_model.dart';
import 'package:customer_connect/feature/data/models/cus_ins_onv_detail_model/cus_ins_onv_detail_model.dart';
import 'package:customer_connect/feature/data/models/cus_ins_tr_n_counts/cus_ins_tr_n_counts.dart';
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
import 'package:customer_connect/feature/data/models/sales_orders_in_model/sales_orders_in_model.dart';
import 'package:customer_connect/feature/data/models/sales_orders_model/sales_orders_model.dart';
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

abstract class IArCollectionRepo {
  Future<Either<MainFailures, ArTotalCollectionModel>> getArTotal(
      ArTotalInModel totalIn);

  Future<Either<MainFailures, List<ArHeaderModel>>> getARHeaders(
      ArTotalInModel loadingIn);
  Future<Either<MainFailures, List<ArDetailModel>>> getARDetails(String arhID);
}

abstract class ICusInsightsCustomersRepo {
  Future<Either<MainFailures, List<CusInsCustomersModel>>> getCustomers(
      String userId, String area, String subarea, String route);
}

abstract class IcusInsCountsRepo {
  Future<Either<MainFailures, CusInsTrNCounts>> getCusInsCounts(
      String userId, String cusId, String fDate, String toDate);
}

abstract class ICusInsArRepo {
  Future<Either<MainFailures, ArTotalCollectionModel>> getArTotal(
      CusInsArHeaderInModel totalIn);
  Future<Either<MainFailures, List<CusInsArHEaderModel>>> getARHeaders(
      CusInsArHeaderInModel arin);
}

abstract class ICusInsInvoiceRepo {
  Future<Either<MainFailures, List<CusInsInvoiceModel>>> getInvoiceHeaders(
      CusInsInvoiceHeaderInModel invIn);
  Future<Either<MainFailures, List<CusInsOnvDetailModel>>> getInvoiceDetails(
      String iD);
  Future<Either<MainFailures, List<CusInsInvTypeModel>>> getInvoicetypes(
      String iD);
}

abstract class ICusProfileRepo {
  Future<Either<MainFailures, CuSProfileModel>> getCusProfile(
      String userId, String cusId);
}

abstract class ISalesOrdersRepo {
  Future<Either<MainFailures, List<SalesOrdersModel>>> getSalesOrders(
      SalesOrdersInModel salesIn);
}
