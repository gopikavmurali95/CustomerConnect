import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/models/approval_count_model/approval_count_model.dart';
import 'package:customer_connect/feature/data/models/approval_reson_model/approval_reson_model.dart';
import 'package:customer_connect/feature/data/models/approve_price_change_model/approve_price_change_model.dart';
import 'package:customer_connect/feature/data/models/approve_price_changein_model/approve_price_changein_model.dart';
import 'package:customer_connect/feature/data/models/ar_detail_model/ar_detail_model.dart';
import 'package:customer_connect/feature/data/models/ar_header_model/ar_header_model.dart';
import 'package:customer_connect/feature/data/models/ar_total_collection_model/ar_total_collection_model.dart';
import 'package:customer_connect/feature/data/models/ar_total_in_model/ar_total_in_model.dart';
import 'package:customer_connect/feature/data/models/asset_add_approval_in_model/asset_add_approval_in_model.dart';
import 'package:customer_connect/feature/data/models/asset_add_request_header_model/asset_add_request_header_model.dart';
import 'package:customer_connect/feature/data/models/asset_add_resp_out_model/asset_add_resp_out_model.dart';
import 'package:customer_connect/feature/data/models/asset_removal_approval_in_model/asset_removal_approval_in_model.dart';
import 'package:customer_connect/feature/data/models/asset_removal_approve_out_model/asset_removal_approve_out_model.dart';
import 'package:customer_connect/feature/data/models/asset_removal_request_header_model/asset_removal_request_header_model.dart';
import 'package:customer_connect/feature/data/models/confirm_geo_code_in_model/confirm_geo_code_in_model.dart';
import 'package:customer_connect/feature/data/models/confirm_geo_locations_model/confirm_geo_locations_model.dart';
import 'package:customer_connect/feature/data/models/credit_note_detail_model/credit_note_detail_model.dart';
import 'package:customer_connect/feature/data/models/credit_note_header_model/credit_note_header_model.dart';
import 'package:customer_connect/feature/data/models/cu_s_ins_rot_list/cu_s_ins_rot_list.dart';
import 'package:customer_connect/feature/data/models/cu_s_profile_model/cu_s_profile_model.dart';
import 'package:customer_connect/feature/data/models/cus_documents_model/cus_documents_model.dart';
import 'package:customer_connect/feature/data/models/cus_geo_loc_in_model/cus_geo_loc_in_model.dart';
import 'package:customer_connect/feature/data/models/cus_geo_location_model/cus_geo_location_model.dart';
import 'package:customer_connect/feature/data/models/cus_ins_ar_h_eader_model/cus_ins_ar_h_eader_model.dart';
import 'package:customer_connect/feature/data/models/cus_ins_ar_header_in_model/cus_ins_ar_header_in_model.dart';
import 'package:customer_connect/feature/data/models/cus_ins_customers_model/cus_ins_customers_model.dart';
import 'package:customer_connect/feature/data/models/cus_ins_inv_type_model/cus_ins_inv_type_model.dart';
import 'package:customer_connect/feature/data/models/cus_ins_invoice_header_in_model/cus_ins_invoice_header_in_model.dart';
import 'package:customer_connect/feature/data/models/cus_ins_invoice_model/cus_ins_invoice_model.dart';
import 'package:customer_connect/feature/data/models/cus_ins_onv_detail_model/cus_ins_onv_detail_model.dart';
import 'package:customer_connect/feature/data/models/cus_ins_outstanding_header_model/cus_ins_outstanding_header_model.dart';
import 'package:customer_connect/feature/data/models/cus_ins_tr_n_counts/cus_ins_tr_n_counts.dart';
import 'package:customer_connect/feature/data/models/cus_items_model/cus_items_model.dart';
import 'package:customer_connect/feature/data/models/cus_out_standing_in_model/cus_out_standing_in_model.dart';
import 'package:customer_connect/feature/data/models/cus_outstanding_count_model/cus_outstanding_count_model.dart';
import 'package:customer_connect/feature/data/models/cus_promo_in_model/cus_promo_in_model.dart';
import 'package:customer_connect/feature/data/models/cus_promotion_detail_model/cus_promotion_detail_model.dart';
import 'package:customer_connect/feature/data/models/cus_promotion_header/cus_promotion_header.dart';
import 'package:customer_connect/feature/data/models/cus_sp_price_in_model/cus_sp_price_in_model.dart';
import 'package:customer_connect/feature/data/models/cus_sp_price_model/cus_sp_price_model.dart';
import 'package:customer_connect/feature/data/models/customer_insight_group_model/customer_insight_group_model.dart';
import 'package:customer_connect/feature/data/models/customer_transaction_model/customer_transaction_model.dart';
import 'package:customer_connect/feature/data/models/dispute_approval_resp_model/dispute_approval_resp_model.dart';
import 'package:customer_connect/feature/data/models/dispute_approval_status_model/dispute_approval_status_model.dart';
import 'package:customer_connect/feature/data/models/dispute_invoice_approve_in_model/dispute_invoice_approve_in_model.dart';
import 'package:customer_connect/feature/data/models/dispute_note_detail_model/dispute_note_detail_model.dart';
import 'package:customer_connect/feature/data/models/dispute_note_header_model/dispute_note_header_model.dart';
import 'package:customer_connect/feature/data/models/edit_profile_in_model/edit_profile_in_model.dart';
import 'package:customer_connect/feature/data/models/edit_profile_resp_model/edit_profile_resp_model.dart';
import 'package:customer_connect/feature/data/models/field_service_detail_model/field_service_detail_model.dart';
import 'package:customer_connect/feature/data/models/field_service_invoice_approval_model/field_service_invoice_approval_model.dart';
import 'package:customer_connect/feature/data/models/field_service_invoice_header_model/field_service_invoice_header_model.dart';
import 'package:customer_connect/feature/data/models/get_out_of_stock_count_model/get_out_of_stock_count_model.dart';
import 'package:customer_connect/feature/data/models/inventory_reconfirm_approval_resp_model/inventory_reconfirm_approval_resp_model.dart';
import 'package:customer_connect/feature/data/models/inventory_reconfirm_approve_in_model/inventory_reconfirm_approve_in_model.dart';
import 'package:customer_connect/feature/data/models/inventory_reconfirm_detail_model/inventory_reconfirm_detail_model.dart';
import 'package:customer_connect/feature/data/models/inventory_reconfirm_header_model/inventory_reconfirm_header_model.dart';
import 'package:customer_connect/feature/data/models/inventory_reconfirm_reason_model/inventory_reconfirm_reason_model.dart';
import 'package:customer_connect/feature/data/models/invoice_details_footer_model/invoice_details_footer_model.dart';
import 'package:customer_connect/feature/data/models/invoice_details_model/invoice_details_model.dart';
import 'package:customer_connect/feature/data/models/invoice_header_inparas/invoice_header_inparas.dart';
import 'package:customer_connect/feature/data/models/invoice_header_model/invoice_header_model.dart';
import 'package:customer_connect/feature/data/models/journey_plan_approval_in_model/journey_plan_approval_in_model.dart';
import 'package:customer_connect/feature/data/models/journey_plan_header_model/journey_plan_header_model.dart';
import 'package:customer_connect/feature/data/models/joutney_plan_approval_out_model/joutney_plan_approval_out_model.dart';
import 'package:customer_connect/feature/data/models/load_request_approval/LoadReqInApprovalModel.dart';
import 'package:customer_connect/feature/data/models/load_request_approval_out_model/LoadRequestApprovalOutModel.dart';
import 'package:customer_connect/feature/data/models/load_transfer_approval_header_model/load_transfer_approval_header_model.dart';
import 'package:customer_connect/feature/data/models/load_transfer_approval_in_model/load_transfer_approval_in_model.dart';
import 'package:customer_connect/feature/data/models/load_transfer_approval_out_model/load_transfer_approval_out_model.dart';
import 'package:customer_connect/feature/data/models/load_transfer_detail_model/load_transfer_detail_model.dart';
import 'package:customer_connect/feature/data/models/loading_detail_model/loading_detail_model.dart';
import 'package:customer_connect/feature/data/models/loading_header_in_model/loading_header_in_model.dart';
import 'package:customer_connect/feature/data/models/loading_headermodel/loading_headermodel.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/material_req_approval_in_model/MaterialReqApprvalInModel.dart';
import 'package:customer_connect/feature/data/models/material_req_approval_out_model/MaterialReqApprovalOutModel.dart';
import 'package:customer_connect/feature/data/models/material_req_detail_model/MaterialReqDetailModel.dart';
import 'package:customer_connect/feature/data/models/material_req_header_model/MaterialReqHeaderModel.dart';
import 'package:customer_connect/feature/data/models/material_req_rejection_in_model/MaterialReqRejectionInModel.dart';
import 'package:customer_connect/feature/data/models/material_req_rejection_out_model/MaterialReqrejectionOutModel.dart';
import 'package:customer_connect/feature/data/models/merchanding_survey_model/merchanding_survey_model.dart';
import 'package:customer_connect/feature/data/models/must_sell_approve_in_model/must_sell_approve_in_model.dart';
import 'package:customer_connect/feature/data/models/must_sell_approve_resp_model/must_sell_approve_resp_model.dart';
import 'package:customer_connect/feature/data/models/must_sell_detail_model/must_sell_detail_model.dart';
import 'package:customer_connect/feature/data/models/must_sell_header_model/must_sell_header_model.dart';
import 'package:customer_connect/feature/data/models/notification_replay_in_model/notification_replay_in_model.dart';
import 'package:customer_connect/feature/data/models/notification_replay_out_model/notification_replay_out_model.dart';
import 'package:customer_connect/feature/data/models/out_standing_header/OutStandOutModel.dart';
import 'package:customer_connect/feature/data/models/out_standing_header/OutStandingHeaderModel.dart';
import 'package:customer_connect/feature/data/models/outstanding_count_model/outstanding_count_model.dart';
import 'package:customer_connect/feature/data/models/partial_delivery_approval_model/partial_delivery_approval_model.dart';
import 'package:customer_connect/feature/data/models/partial_delivery_approval_outparas_model/partial_delivery_approval_outparas_model.dart';
import 'package:customer_connect/feature/data/models/partial_delivery_details_model/partial_delivery_details_model.dart';
import 'package:customer_connect/feature/data/models/partial_delivery_header_model/partial_delivery_header_model.dart';
import 'package:customer_connect/feature/data/models/partial_delivery_reason_model/partial_delivery_reason_model.dart';
import 'package:customer_connect/feature/data/models/picking_and_loadin_counts_model/picking_and_loadin_counts_model.dart';
import 'package:customer_connect/feature/data/models/picking_header_model/PickingInModel.dart';
import 'package:customer_connect/feature/data/models/picking_header_model/PickingOutModel.dart';
import 'package:customer_connect/feature/data/models/pickingdetailmodel/PickingDetailModel.dart';
import 'package:customer_connect/feature/data/models/post_settlement_approval/post_settlement_approval.dart';
import 'package:customer_connect/feature/data/models/price_change_details_model/price_change_details_model.dart';
import 'package:customer_connect/feature/data/models/price_change_header_model/price_change_header_model.dart';
import 'package:customer_connect/feature/data/models/price_change_reason_model/price_change_reason_model.dart';
import 'package:customer_connect/feature/data/models/promotion_customer_model/promotion_customer_model.dart';
import 'package:customer_connect/feature/data/models/promotion_details_model/promotion_details_model.dart';
import 'package:customer_connect/feature/data/models/promotion_header_in_paras/promotion_header_in_paras.dart';
import 'package:customer_connect/feature/data/models/promotion_header_model/promotion_header_model.dart';
import 'package:customer_connect/feature/data/models/qualification_group_model/qualification_group_model.dart';
import 'package:customer_connect/feature/data/models/return_approval_detail_model/return_approval_detail_model.dart';
import 'package:customer_connect/feature/data/models/return_approval_header_model/return_approval_header_model.dart';
import 'package:customer_connect/feature/data/models/return_approve_in_model/return_approve_in_model.dart';
import 'package:customer_connect/feature/data/models/return_approve_out_model/return_approve_out_model.dart';
import 'package:customer_connect/feature/data/models/route_model/route_model.dart';
import 'package:customer_connect/feature/data/models/sales_oder_count_model/sales_oder_count_model.dart';
import 'package:customer_connect/feature/data/models/sales_order_details_inparas_model/sales_order_details_inparas_model.dart';
import 'package:customer_connect/feature/data/models/sales_order_details_model/sales_order_details_model.dart';
import 'package:customer_connect/feature/data/models/scheduled_return_approval_in_model/scheduled_return_approval_in_model.dart';
import 'package:customer_connect/feature/data/models/scheduled_return_approval_out_model/scheduled_return_approval_out_model.dart';
import 'package:customer_connect/feature/data/models/settelemet_approval_reject/settelemet_approval_reject.dart';
import 'package:customer_connect/feature/data/models/settlemenet_approval_pay_mode_detail_model/settlemenet_approval_pay_mode_detail_model.dart';
import 'package:customer_connect/feature/data/models/settlement_approval_header_out_model/settlement_approval_header_out_model.dart';
import 'package:customer_connect/feature/data/models/settlement_payment_detail_model/settlement_payment_detail_model.dart';
import 'package:customer_connect/feature/data/models/settlemet_approvalcash_detail_model/settlemet_approvalcash_detail_model.dart';
import 'package:customer_connect/feature/data/models/sheduled_return_detail_model/sheduled_return_detail_model.dart';
import 'package:customer_connect/feature/data/models/sheduled_return_header_model/sheduled_return_header_model.dart';
import 'package:customer_connect/feature/data/models/special_price_customer_model/special_price_customer_model.dart';
import 'package:customer_connect/feature/data/models/special_price_details_model/special_price_details_model.dart';
import 'package:customer_connect/feature/data/models/special_price_header_model/special_price_header_model.dart';
import 'package:customer_connect/feature/data/models/special_price_header_outparas/special_price_header_outparas.dart';
import 'package:customer_connect/feature/data/models/target_details_count_model/target_details_count_model.dart';
import 'package:customer_connect/feature/data/models/target_details_graph_amt_model/target_details_graph_amt_model.dart';
import 'package:customer_connect/feature/data/models/target_details_graph_qty_model/target_details_graph_qty_model.dart';
import 'package:customer_connect/feature/data/models/target_details_list_model/target_details_list_model.dart';
import 'package:customer_connect/feature/data/models/target_header_count_model/target_header_count_model.dart';
import 'package:customer_connect/feature/data/models/target_header_list_model/target_header_list_model.dart';
import 'package:customer_connect/feature/data/models/target_package_list_model/target_package_list_model.dart';
import 'package:customer_connect/feature/data/models/todays_delivery_details_model/todays_delivery_details_model.dart';
import 'package:customer_connect/feature/data/models/todays_delivery_header_model/todays_delivery_header_model.dart';
import 'package:customer_connect/feature/data/models/todays_delivery_in_paras/todays_delivery_in_paras.dart';
import 'package:customer_connect/feature/data/models/sales_orders_in_model/sales_orders_in_model.dart';
import 'package:customer_connect/feature/data/models/sales_orders_model/sales_orders_model.dart';
import 'package:customer_connect/feature/data/models/total_orders_details_model/total_orders_details_model.dart';
import 'package:customer_connect/feature/data/models/total_orders_inparas/total_orders_inparas.dart';
import 'package:customer_connect/feature/data/models/total_orders_model/total_orders_model.dart';
import 'package:customer_connect/feature/data/models/user_notification_model/user_notification_model.dart';
import 'package:customer_connect/feature/data/models/van_to_van_approval_in_paras/van_to_van_approval_in_paras.dart';
import 'package:customer_connect/feature/data/models/van_to_van_approval_model/van_to_van_approval_model.dart';
import 'package:customer_connect/feature/data/models/van_to_van_details_model/van_to_van_details_model.dart';
import 'package:customer_connect/feature/data/models/van_to_van_header_model/van_to_van_header_model.dart';
import 'package:customer_connect/feature/data/models/void_transacrtion_approval_in_model/void_transacrtion_approval_in_model.dart';
import 'package:customer_connect/feature/data/models/void_transaction_approve_and_reject_model/void_transaction_approve_and_reject_model.dart';
import 'package:customer_connect/feature/data/models/void_transaction_header_model/void_transaction_header_model.dart';
import 'package:dartz/dartz.dart';

import '../models/load_req_detail_model/LoadReqDetailModel.dart';
import '../models/load_req_header_model/LoadReqHeaderModel.dart';

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

abstract class ITodaysDeliveryRepo {
  Future<Either<MainFailures, List<TodaysDeliveryHeaderModel>>>
      getTodaysDelivery(TodaysDeliveryInParas deliveryIn);

  Future<Either<MainFailures, List<TodaysDeliveryDetailsModel>>>
      getDeliveryDetail(String id);
}

abstract class ISpecialPriceRepo {
  Future<Either<MainFailures, List<SpecialPriceHeaderOutparas>>>
      getSpecialPrice(SpecialPriceHeaderModel specialPriceIn);

  Future<Either<MainFailures, List<SpecialPriceDetailsModel>>> getPriceDetail(
      String prdID);

  Future<Either<MainFailures, List<SpecialPriceCustomerModel>>>
      getPriceCustomer(String userID, String fromDate, String toDate);
}

abstract class ICusInsInvoiceRepo {
  Future<Either<MainFailures, List<CusInsInvoiceModel>>> getInvoiceHeaders(
      CusInsInvoiceHeaderInModel invIn);
  Future<Either<MainFailures, List<CusInsOnvDetailModel>>> getInvoiceDetails(
      String iD);
  Future<Either<MainFailures, List<CusInsInvTypeModel>>> getInvoicetypes(
      String iD);
}

abstract class IPromotionHeaderRepo {
  Future<Either<MainFailures, List<PromotionHeaderModel>>> getPromotionHeader(
      PromotionHeaderInParas inpromtionIn);
  Future<Either<MainFailures, List<PromotionCustomerModel>>>
      getPromotionCustomer(String iD);
  Future<Either<MainFailures, List<PromotionDetailsModel>>> getPromotionDetails(
      String iD);
}

abstract class ICusProfileRepo {
  Future<Either<MainFailures, CuSProfileModel>> getCusProfile(
      String userId, String cusId);
}

abstract class ISalesOrdersRepo {
  Future<Either<MainFailures, List<SalesOrdersModel>>> getSalesOrders(
      SalesOrdersInModel salesIn);
  Future<Either<MainFailures, List<SalesOrderDetailsModel>>>
      getSalesOrderdetails(SalesOrderDetailsInparasModel salesInparas);
}

abstract class ICusOutstandingRepo {
  Future<Either<MainFailures, CusOutstandingCountModel>> getOutStandingCounts(
      CusOutStandingInModel outIn);
  Future<Either<MainFailures, List<CusInsOutstandingHeaderModel>>>
      getCusOutstanding(CusOutStandingInModel outIn);
}

abstract class ICusItemsRepo {
  Future<Either<MainFailures, List<CusItemsModel>>> getCusItems(
      String cusId, String route);
}

abstract class IPickingHeaderRepo {
  Future<Either<MainFailures, List<PickingOutModel>>> getPickingHeaders(
      PickingInModel pickingInModel);
  Future<Either<MainFailures, List<PickingDetailModel>>> getPickingDetail(
      String iD);
}

abstract class IOutStandingHeaderRepo {
  Future<Either<MainFailures, List<OutStandOutModel>>> getOutStandingHeaders(
      OutStandingHeaderModel outStandIn);
  Future<Either<MainFailures, OutstandingCountModel>> getoutstandingTotal(
      OutStandingHeaderModel outin);
// Future<Either<MainFailures, List<ArHeaderModel>>> getARHeaders(
//     ArTotalInModel loadingIn);
// Future<Either<MainFailures, List<ArDetailModel>>> getARDetails(String arhID);
}

abstract class IProfileEditRepo {
  Future<Either<MainFailures, EditProfileRespModel>> editProfile(
      EditProfileInModel outIn);
}

abstract class IcusDocumentsModel {
  Future<Either<MainFailures, List<CusDocumentsModel>>> getCusDocuments(
      String cusID);
}

abstract class ICusGeoLocationRepo {
  Future<Either<MainFailures, List<CusGeoLocationModel>>> getCusGeoLocations(
      CusGeoLocInModel cusIN);

  Future<Either<MainFailures, ConfirmGeoLocationsModel>> confirmGeolocation(
      ConfirmGeoCodeInModel confirmmodel);
}

abstract class ICusSpPriceRepo {
  Future<Either<MainFailures, List<CusSpPriceModel>>> getCusSpPriceHeaders(
      CusSpPriceInModel cusIN);
}

abstract class ICusProtionRepo {
  Future<Either<MainFailures, List<CusPromotionHeader>>> getCusPromotionHeaders(
      CusPromoInModel cusIN);
  Future<Either<MainFailures, List<CusPromotionDetailModel>>>
      getCusPromotionDetails(String iD);
}

abstract class IQualificationGroupRepo {
  Future<Either<MainFailures, List<QualificationGroupModel>>> getGroupItems(
      String iD, String mode);
}

abstract class ICusInsightGroupRepo {
  Future<Either<MainFailures, List<CustomerInsightGroupModel>>> getGroupItems(
      String iD, String mode);
}

abstract class INotificationRepo {
  Future<Either<MainFailures, List<UserNotificationModel>>>
      getUserNotifications(String userID);
  Future<Either<MainFailures, NotificationReplayOutModel>> sendNotiReplay(
      NotificationReplayInModel replay);
  Future<Either<MainFailures, NotificationReplayOutModel>> updateNotiReadFlag(
      String rntID);
}

abstract class IPriceChangeRepo {
  Future<Either<MainFailures, List<PriceChangeHeaderModel>>> priceChangeList(
      String rotID, String mode);
  Future<Either<MainFailures, List<PriceChangeDetailsModel>>>
      priceChangeDetails(String pchID);
  Future<Either<MainFailures, List<PriceChangeReasonModel>>>
      getPricChangeReasons(
    String rsnType,
  );
  Future<Either<MainFailures, ApprovePriceChangeModel>> approvePriceChange(
      ApprovePriceChangeinModel approveIn);
}

abstract class IReturnApprovalRepo {
  Future<Either<MainFailures, List<ReturnApprovalHeaderModel>>>
      getReturnApprovalHeaders(String rotID, String mode);
  Future<Either<MainFailures, List<ReturnApprovalDetailModel>>>
      getReturnApprovalDetails(String reqID, String mode);
  Future<Either<MainFailures, List<ApprovalResonModel>>>
      getReturnApprovalResons(
    String rsnType,
  );

  Future<Either<MainFailures, ReturnApproveOutModel>> approveReturnProduct(
    ReturnApproveInModel approveIn,
  );
}

abstract class IDisputeNoteApprovalRepo {
  Future<Either<MainFailures, List<DisputeNoteHeaderModel>>>
      getDisputeNoteApprovalHeaders(String userID, String mode);

  Future<Either<MainFailures, List<DisputeNoteDetailModel>>>
      getDisputeApprovalDetails(String reqID);

  Future<Either<MainFailures, DisputeApprovalStatusModel>>
      getDisputeApprovalStatus(String userID);

  Future<Either<MainFailures, DisputeApprovalRespModel>> disputeApproval(
      DisputeInvoiceApproveInModel approve);
  Future<Either<MainFailures, DisputeApprovalRespModel>> disputeReject(
      DisputeInvoiceApproveInModel reject);
}

abstract class ICreditNoteApprovalRepo {
  Future<Either<MainFailures, List<CreditNoteHeaderModel>>>
      getCreditNoteApprovalHeaders(String userID, String mode);

  Future<Either<MainFailures, List<CreditNoteDetailModel>>>
      getCreditApprovalDetails(String reqID);

  Future<Either<MainFailures, DisputeApprovalStatusModel>>
      getcreditNoteApprovalStatus(String userID);

  Future<Either<MainFailures, DisputeApprovalRespModel>> creditNoteApproval(
      DisputeInvoiceApproveInModel approve);
  Future<Either<MainFailures, DisputeApprovalRespModel>> creditNoteReject(
      DisputeInvoiceApproveInModel reject);
}

abstract class IScheduledReturnApprovalRepo {
  Future<Either<MainFailures, List<SheduledReturnHeaderModel>>>
      getScheduledReturnApprovalHeaders(String userID, String mode);

  Future<Either<MainFailures, List<SheduledReturnDetailModel>>>
      getScheduledReturnApprovalDetails(String reqID);
  Future<Either<MainFailures, List<RouteModel>>> getAllRoutes();
  Future<Either<MainFailures, ScheduledReturnApprovalOutModel>>
      scheduledReturnApproval(ScheduledReturnApprovalInModel approve);
}

abstract class IFieldServiceInvoiceApprovalRepo {
  Future<Either<MainFailures, List<FieldServiceInvoiceHeaderModel>>>
      getFieldServiceApprovalHeaders(String userID);

  Future<Either<MainFailures, List<FieldServiceDetailModel>>>
      getFieldServiceApprovalDetails(String reqID);

  Future<Either<MainFailures, FieldServiceInvoiceApprovalModel>>
      invoiceApprovalRepo(String reqID, String userID);

  Future<Either<MainFailures, FieldServiceInvoiceApprovalModel>> invoiceReject(
      String reqID, String userID);
}

abstract class IPartialDeliveryRepo {
  Future<Either<MainFailures, List<PartialDeliveryHeaderModel>>>
      partialDeliveryList(String userID, String mode);
  Future<Either<MainFailures, List<PartialDeliveryDetailsModel>>>
      partialDeliveryDetails(String reqID);
  Future<Either<MainFailures, List<PartialDeliveryReasonModel>>>
      getPartialDeliveryReasons(
    String rsnType,
  );
  Future<Either<MainFailures, PartialDeliveryApprovalOutparasModel>>
      approvePartialDelivery(PartialDeliveryApprovalModel approveIn);
}

abstract class IVanToVanApprovalRepo {
  Future<Either<MainFailures, List<VanToVanHeaderModel>>>
      getVanToVanApprovalHeader(String userID, String mode);

  Future<Either<MainFailures, List<VanToVanDetailsModel>>>
      getVanToVanApprovalDetails(String reqID);

  Future<Either<MainFailures, VanToVanApprovalModel>> approveVanToVan(
    VanToVanApprovalInParas approveIn,
  );
}

abstract class IAssetAddApprovalRepo {
  Future<Either<MainFailures, List<AssetAddRequestHeaderModel>>>
      getAssetAddApprovalHeaders(String userID);

  Future<Either<MainFailures, AssetAddRespOutModel>> assetAddApproval(
      AssetAddApprovalInModel approve);
  Future<Either<MainFailures, AssetAddRespOutModel>> assetAddReject(
      AssetAddApprovalInModel approve);
}

abstract class IAssetRemovalRequestRepo {
  Future<Either<MainFailures, List<AssetRemovalRequestHeaderModel>>>
      getAssetRemovalApprovalHeaders(String userID);

  Future<Either<MainFailures, AssetRemovalApproveOutModel>>
      assetRemovalApproval(AssetRemovalApprovalInModel approve);
  Future<Either<MainFailures, AssetRemovalApproveOutModel>> assetRemovalReject(
      AssetRemovalApprovalInModel reject);
}

abstract class ILoadTransferApprovalRepo {
  Future<Either<MainFailures, List<LoadTransferApprovalHeaderModel>>>
      getLoadTransferHeaders(String userID, String mode);
  Future<Either<MainFailures, List<LoadTransferDetailModel>>>
      getLoadTransferDetails(String reqID);
  Future<Either<MainFailures, LoadTransferApprovalOutModel>>
      loadTransferApproval(LoadTransferApprovalInModel approve);
}

abstract class IJourneyPlanApprovalRepo {
  Future<Either<MainFailures, List<JourneyPlanHeaderModel>>>
      getJourneyPlanHeaders(String userID, String mode);

  Future<Either<MainFailures, JoutneyPlanApprovalOutModel>> journeyPlanApproval(
      JourneyPlanApprovalInModel approve);

  Future<Either<MainFailures, JoutneyPlanApprovalOutModel>> journeyPlanReject(
      JourneyPlanApprovalInModel approve);
}

abstract class IMaterialReqHeaderRepo {
  Future<Either<MainFailures, List<MaterialReqHeaderModel>>>
      materialreqheaderList(String userId, String mode);

  Future<Either<MainFailures, List<MaterialReqDetailModel>>>
      materialreqdetailList(String reqId);

  Future<Either<MainFailures, MaterialReqApprovalOutModel>> materialApproval(
      MaterialReqApprovalInModel approval);
  Future<Either<MainFailures, MaterialReqrejectionOutModel>> materialRejection(
      MaterialReqRejectionInModel approval);
}

abstract class IGetAllAvailableRoutesRepo {
  Future<Either<MainFailures, List<CuSInsRotList>>> getallRoutes();
}

abstract class ILoadRequestHeaderRepo {
  Future<Either<MainFailures, List<LoadReqHeaderModel>>> loadreqHeaderList(
      String userId, String mode);
  Future<Either<MainFailures, List<LoadReqDetailModel>>> loadreqdetailList(
      String reqId);
}

abstract class ILoadRequestApprovalRepo {
  Future<Either<MainFailures, LoadRequestApprovalOutModel>> loadApproval(
      LoadReqInApprovalModel loadapprove);
  Future<Either<MainFailures, LoadRequestApprovalOutModel>> loadReject(
      LoadReqInApprovalModel loadapprove);
}

abstract class IApprovalCountsRepo {
  Future<Either<MainFailures, ApprovalCountModel>> approvalsCount(
      String userID);
}

abstract class IinvetoryReconfirmationApprovalRepo {
  Future<Either<MainFailures, List<InventoryReconfirmHeaderModel>>>
      getInventoryReconfirmHeaders(String mode);
  Future<Either<MainFailures, List<InventoryReconfirmDetailModel>>>
      getinventoryReconfirmDetail(String reqId);

  Future<Either<MainFailures, InventoryReconfirmApprovalRespModel>>
      inventoryReconfromApprove(InventoryReconfirmApproveInModel approve);
  Future<Either<MainFailures, List<InventoryReconfirmReasonModel>>>
      getinventoryReconfirmReasons();
}

abstract class IMustSellRepo {
  Future<Either<MainFailures, List<MustSellHeaderModel>>> getMustSellHeaders(
      String mode);

  Future<Either<MainFailures, List<MustSellDetailModel>>> getMustSellDetail(
      String reqId);

  Future<Either<MainFailures, MustSellApproveRespModel>> mustSellApprove(
      MustSellApproveInModel approve);
}

abstract class ISettlementApprovalHeaderRepo {
  Future<Either<MainFailures, List<SettlementApprovalHeaderOutModel>>>
      getSettlementApprovalHeaders(String statusvalue);

  Future<Either<MainFailures, SettlemetApprovalcashDetailModel>>
      getSttlAppCashDetails(String udpID);

  Future<Either<MainFailures, List<SettlemenetApprovalPayModeDetailModel>>>
      getPayModeDetails(String udpID);

  Future<Either<MainFailures, List<SettlementPaymentDetailModel>>>
      getPaymentDetails(String udpID);

  Future<Either<MainFailures, PostSettlementApprovalModel>> postApprovaldetails(
      String udpID);

  Future<Either<MainFailures, SettelemetApprovalReject>> rejectApprovaldetails(
      String udpID);
}

abstract class IVoidTransactionRepo {
  Future<Either<MainFailures, List<VoidTransactionHeaderModel>>>
      getVoidTransactionHeader(String mode);

  Future<Either<MainFailures, VoidTransactionApproveAndRejectModel>>
      voidTransactionApprove(VoidTransacrtionApprovalInModel approve);

  Future<Either<MainFailures, VoidTransactionApproveAndRejectModel>>
      voidTransactionReject(VoidTransacrtionApprovalInModel reject);
}

abstract class IMerchandisingDashBoardRepo {
  Future<Either<MainFailures, GetOutOfStockCountModel>> getoutofstockcount();
}

abstract class ITargetRepo {
  Future<Either<MainFailures, TargetHeaderCountModel>> targetHeaderCount(
      String fromDate);

  Future<Either<MainFailures, List<TargetHeaderListModel>>>
      getTargetHeaderItems(String fromDate);

  Future<Either<MainFailures, TargetDetailsCountModel>> targetDetailCount(
      String fromDate, String rotID);

  Future<Either<MainFailures, List<TargetDetailsListModel>>>
      getTargetDetailItems(String fromDate, String rotID);

  Future<Either<MainFailures, TargetDetailsGraphAmtModel>> targetDetailAmt(
      String fromDate, String rotID);

  Future<Either<MainFailures, TargetDetailsGraphQtyModel>> targetDetailQty(
      String fromDate, String rotID);

  Future<Either<MainFailures, List<TargetPackageListModel>>>
      getTargetPackageItems(String fromDate, String rotID, String pkgID);
}

abstract class IMerchandinsingSurveyRepo {
  Future<Either<MainFailures, List<MerchandingSurveyModel>>> getSurveyItems(
      String fromDate, String toDate, String status);
}
