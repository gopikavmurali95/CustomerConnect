// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart'
    as _i3;
import 'package:customer_connect/feature/domain/chat/getallusersrepo.dart'
    as _i9;
import 'package:customer_connect/feature/domain/chat/messagesrepo.dart' as _i34;
import 'package:customer_connect/feature/domain/chat/msgabstractrepos.dart'
    as _i8;
import 'package:customer_connect/feature/domain/repoImpls/approvalscountrepo/approvalscountrepo.dart'
    as _i4;
import 'package:customer_connect/feature/domain/repoImpls/arcollection/arcollectionrepo.dart'
    as _i5;
import 'package:customer_connect/feature/domain/repoImpls/asset_adding_approval/asset_adding_approval_repo.dart'
    as _i6;
import 'package:customer_connect/feature/domain/repoImpls/assetremoval/assetremovalrepo.dart'
    as _i7;
import 'package:customer_connect/feature/domain/repoImpls/creditnote/creditnoteapprovalrepo.dart'
    as _i10;
import 'package:customer_connect/feature/domain/repoImpls/cusdocuments/cusdocumentsrepo.dart'
    as _i56;
import 'package:customer_connect/feature/domain/repoImpls/cusinsightgrouprepo/cusinsightgrouprepo.dart'
    as _i14;
import 'package:customer_connect/feature/domain/repoImpls/cusinsights/cusinsarrepo.dart'
    as _i12;
import 'package:customer_connect/feature/domain/repoImpls/cusinsights/customersrepo.dart'
    as _i15;
import 'package:customer_connect/feature/domain/repoImpls/cusinsights/transactioncunts.dart'
    as _i57;
import 'package:customer_connect/feature/domain/repoImpls/cusinsinvoice/cusinsightsinvoicerepo.dart'
    as _i13;
import 'package:customer_connect/feature/domain/repoImpls/cusitemsrepo/cusitemsrepo.dart'
    as _i16;
import 'package:customer_connect/feature/domain/repoImpls/cusoustanding/cusoutstandingrepo.dart'
    as _i17;
import 'package:customer_connect/feature/domain/repoImpls/cusprofile/cusprofilerepo.dart'
    as _i18;
import 'package:customer_connect/feature/domain/repoImpls/cuspromotions/cuspromotionsrepo.dart'
    as _i19;
import 'package:customer_connect/feature/domain/repoImpls/cusspprice/cussppricerepo.dart'
    as _i20;
import 'package:customer_connect/feature/domain/repoImpls/customertransactionrepo/customertransactionrepo.dart'
    as _i21;
import 'package:customer_connect/feature/domain/repoImpls/disputenote/disputenoterepo.dart'
    as _i22;
import 'package:customer_connect/feature/domain/repoImpls/editprofile/editprofilerepo.dart'
    as _i42;
import 'package:customer_connect/feature/domain/repoImpls/field_service_approval/field_service_approval_repo.dart'
    as _i23;
import 'package:customer_connect/feature/domain/repoImpls/geolocation/geolocationrepo.dart'
    as _i11;
import 'package:customer_connect/feature/domain/repoImpls/getroutes/getallroutesrepo.dart'
    as _i24;
import 'package:customer_connect/feature/domain/repoImpls/inventoryreconfirmation/inventoryreconfirmationrepo.dart'
    as _i58;
import 'package:customer_connect/feature/domain/repoImpls/invoicerepo/invoicerepo.dart'
    as _i25;
import 'package:customer_connect/feature/domain/repoImpls/journey_plan/journeyplanapprovalrepo.dart'
    as _i26;
import 'package:customer_connect/feature/domain/repoImpls/Loading/loadingrepo.dart'
    as _i30;
import 'package:customer_connect/feature/domain/repoImpls/loadreqapprovalrepo/loadrequestapprovalrepo.dart'
    as _i27;
import 'package:customer_connect/feature/domain/repoImpls/loadrequest/loadrequestrepo.dart'
    as _i28;
import 'package:customer_connect/feature/domain/repoImpls/loadtransfer/loadtransferrepo.dart'
    as _i29;
import 'package:customer_connect/feature/domain/repoImpls/loginrepo/loginrepo.dart'
    as _i31;
import 'package:customer_connect/feature/domain/repoImpls/materialreqheaderrepo/materialreqheaderrepo.dart'
    as _i32;
import 'package:customer_connect/feature/domain/repoImpls/merchandising_header_repo/merchandisingheadrepo.dart'
    as _i33;
import 'package:customer_connect/feature/domain/repoImpls/mustsellrepo/mustsellrepo.dart'
    as _i35;
import 'package:customer_connect/feature/domain/repoImpls/notifications/notificationsrepo.dart'
    as _i36;
import 'package:customer_connect/feature/domain/repoImpls/outstandingheaderrepo/outstandingheaderrepo.dart'
    as _i37;
import 'package:customer_connect/feature/domain/repoImpls/partialdeliveryrepo/partialdeliveryrepo.dart'
    as _i38;
import 'package:customer_connect/feature/domain/repoImpls/pickingandloadingrepo/pickingandloadincountrepo.dart'
    as _i39;
import 'package:customer_connect/feature/domain/repoImpls/pickingheaderrepo/pickingheaderrepo.dart'
    as _i40;
import 'package:customer_connect/feature/domain/repoImpls/pricechangerepo/pricechangerepo.dart'
    as _i41;
import 'package:customer_connect/feature/domain/repoImpls/promtionrepo/promotionrepo.dart'
    as _i43;
import 'package:customer_connect/feature/domain/repoImpls/qualificationgrouprepo/qualificationgrouprepo.dart'
    as _i44;
import 'package:customer_connect/feature/domain/repoImpls/returnapproval/returnapprovalrepo.dart'
    as _i45;
import 'package:customer_connect/feature/domain/repoImpls/salesorderrepo/salesorderrepo.dart'
    as _i46;
import 'package:customer_connect/feature/domain/repoImpls/salesorderrs/salesordersrepo.dart'
    as _i47;
import 'package:customer_connect/feature/domain/repoImpls/scheduledreturn/scheduledreturnrepo.dart'
    as _i48;
import 'package:customer_connect/feature/domain/repoImpls/settlementapprovalrepo/settlementapprovalrepo.dart'
    as _i49;
import 'package:customer_connect/feature/domain/repoImpls/specialpricerepo/specialpricerepo.dart'
    as _i50;
import 'package:customer_connect/feature/domain/repoImpls/targetrepo/targetrepo.dart'
    as _i51;
import 'package:customer_connect/feature/domain/repoImpls/todaysdeliveryrepo/todaysdeliveryrepo.dart'
    as _i52;
import 'package:customer_connect/feature/domain/repoImpls/totalordersrepo/totalorderrepo.dart'
    as _i53;
import 'package:customer_connect/feature/domain/repoImpls/vantovanapprovalrepo/vantovanapprovalrepo.dart'
    as _i54;
import 'package:customer_connect/feature/domain/repoImpls/voidtransactionrepo/voidtransactionrepo.dart'
    as _i55;
import 'package:customer_connect/feature/state/bloc/approvalreasons/approval_reasons_bloc.dart'
    as _i145;
import 'package:customer_connect/feature/state/bloc/approvalscountsbloc/approval_counts_bloc.dart'
    as _i144;
import 'package:customer_connect/feature/state/bloc/approvepricechange/approve_price_change_bloc.dart'
    as _i146;
import 'package:customer_connect/feature/state/bloc/approvereturnprod/approve_return_product_bloc.dart'
    as _i147;
import 'package:customer_connect/feature/state/bloc/ardetails/ar_details_bloc.dart'
    as _i148;
import 'package:customer_connect/feature/state/bloc/arheader/ar_header_bloc.dart'
    as _i149;
import 'package:customer_connect/feature/state/bloc/asset_adding_approval_header/asset_add_in_approval_header_bloc.dart'
    as _i150;
import 'package:customer_connect/feature/state/bloc/assetaddapproval/asset_adding_approval_and_rject_bloc_bloc.dart'
    as _i151;
import 'package:customer_connect/feature/state/bloc/assetremovalapproval/asset_removal_apprval_bloc.dart'
    as _i152;
import 'package:customer_connect/feature/state/bloc/assetremovalheader/asset_removel_request_header_bloc.dart'
    as _i153;
import 'package:customer_connect/feature/state/bloc/chatusers/all_users_bloc.dart'
    as _i143;
import 'package:customer_connect/feature/state/bloc/creditnoteapproval/credit_note_approval_and_reject_bloc.dart'
    as _i154;
import 'package:customer_connect/feature/state/bloc/creditnotedetail/credit_note_detail_bloc.dart'
    as _i156;
import 'package:customer_connect/feature/state/bloc/creditnoteheader/credit_note_header_bloc.dart'
    as _i157;
import 'package:customer_connect/feature/state/bloc/cusdocuments/cus_documents_bloc.dart'
    as _i158;
import 'package:customer_connect/feature/state/bloc/cusgeolocation/cus_geo_location_bloc.dart'
    as _i159;
import 'package:customer_connect/feature/state/bloc/cusinsarheader/cus_ins_ar_header_bloc.dart'
    as _i160;
import 'package:customer_connect/feature/state/bloc/cusinsinv/cus_ins_invoice_header_bloc.dart'
    as _i161;
import 'package:customer_connect/feature/state/bloc/cusinstrnscount/cus_ins_trn_count_bloc.dart'
    as _i162;
import 'package:customer_connect/feature/state/bloc/cusinvdetail/cus_inv_detail_bloc_bloc.dart'
    as _i163;
import 'package:customer_connect/feature/state/bloc/cusitems/cus_items_bloc.dart'
    as _i164;
import 'package:customer_connect/feature/state/bloc/cusoutstanding/cus_out_standing_bloc.dart'
    as _i165;
import 'package:customer_connect/feature/state/bloc/cusprofile/cus_profile_bloc.dart'
    as _i166;
import 'package:customer_connect/feature/state/bloc/cuspromodetail/cus_promo_detail_bloc.dart'
    as _i167;
import 'package:customer_connect/feature/state/bloc/cuspromotionsheader/cus_promotions_header_bloc.dart'
    as _i168;
import 'package:customer_connect/feature/state/bloc/cussalesorders/cus_sales_orders_bloc.dart'
    as _i169;
import 'package:customer_connect/feature/state/bloc/cussppriceheader/cus_sp_price_bloc.dart'
    as _i170;
import 'package:customer_connect/feature/state/bloc/customer_transaction/customer_transaction_bloc.dart'
    as _i172;
import 'package:customer_connect/feature/state/bloc/customerinsightgroupbloc/customer_insight_group_bloc.dart'
    as _i171;
import 'package:customer_connect/feature/state/bloc/customers/customers_list_bloc_bloc.dart'
    as _i173;
import 'package:customer_connect/feature/state/bloc/disputeapproval/dispute_note_approval_and_reject_bloc.dart'
    as _i175;
import 'package:customer_connect/feature/state/bloc/disputenotedetail/dispute_note_detail_bloc.dart'
    as _i176;
import 'package:customer_connect/feature/state/bloc/disputenoteheader/dispute_note_header_bloc.dart'
    as _i177;
import 'package:customer_connect/feature/state/bloc/editcusprofile/edit_cus_profile_bloc.dart'
    as _i178;
import 'package:customer_connect/feature/state/bloc/field_service_detail/f_ield_service_detail_bloc.dart'
    as _i179;
import 'package:customer_connect/feature/state/bloc/field_service_header/field_service_header_bloc.dart'
    as _i180;
import 'package:customer_connect/feature/state/bloc/fieldserviceinvoiceapproval/field_service_invoice_approval_bloc.dart'
    as _i181;
import 'package:customer_connect/feature/state/bloc/getallroutes/get_all_route_bloc.dart'
    as _i182;
import 'package:customer_connect/feature/state/bloc/inventoryreconfirmapproval/inventory_reconfirm_approval_bloc.dart'
    as _i59;
import 'package:customer_connect/feature/state/bloc/inventoryreconfirmdetail/inventory_reconfirm_detail_bloc.dart'
    as _i60;
import 'package:customer_connect/feature/state/bloc/inventoryreconfirmheader/inventory_reconfirm_header_bloc.dart'
    as _i61;
import 'package:customer_connect/feature/state/bloc/Invoice_details/invoice_details_bloc.dart'
    as _i63;
import 'package:customer_connect/feature/state/bloc/invoice_details_footer/invoice_details_footer_bloc.dart'
    as _i64;
import 'package:customer_connect/feature/state/bloc/invoice_header/invoice_header_bloc.dart'
    as _i65;
import 'package:customer_connect/feature/state/bloc/journeyplanapproval/jourey_plan_approval_bloc.dart'
    as _i66;
import 'package:customer_connect/feature/state/bloc/journeyplanheader/journey_plan_header_bloc.dart'
    as _i67;
import 'package:customer_connect/feature/state/bloc/loading/loading_detail_bloc.dart'
    as _i74;
import 'package:customer_connect/feature/state/bloc/loadingdetail/loading_detail_bloc.dart'
    as _i75;
import 'package:customer_connect/feature/state/bloc/loadingheader/loading_header_bloc.dart'
    as _i76;
import 'package:customer_connect/feature/state/bloc/loadreqapproval/load_req_approval_bloc.dart'
    as _i68;
import 'package:customer_connect/feature/state/bloc/loadreqdetail/load_req_detail_bloc.dart'
    as _i69;
import 'package:customer_connect/feature/state/bloc/loadreqheader/load_req_header_bloc.dart'
    as _i70;
import 'package:customer_connect/feature/state/bloc/loadtransferapproval/load_transfer_approval_bloc.dart'
    as _i71;
import 'package:customer_connect/feature/state/bloc/loadtransferdetail/load_transfer_detail_bloc.dart'
    as _i72;
import 'package:customer_connect/feature/state/bloc/loadtransferheader/load_transfer_header_bloc.dart'
    as _i73;
import 'package:customer_connect/feature/state/bloc/login/user_login_bloc.dart'
    as _i136;
import 'package:customer_connect/feature/state/bloc/materialreqapproval/material_req_approval_bloc.dart'
    as _i77;
import 'package:customer_connect/feature/state/bloc/materialreqdetail/material_req_detail_bloc.dart'
    as _i78;
import 'package:customer_connect/feature/state/bloc/materialreqhead/material_req_head_bloc.dart'
    as _i79;
import 'package:customer_connect/feature/state/bloc/materialreqrejection/material_req_rejection_bloc.dart'
    as _i80;
import 'package:customer_connect/feature/state/bloc/messages/messages_bloc.dart'
    as _i81;
import 'package:customer_connect/feature/state/bloc/mustsellapprove/must_sell_approve_bloc.dart'
    as _i82;
import 'package:customer_connect/feature/state/bloc/mustselldetail/must_sell_detail_bloc.dart'
    as _i83;
import 'package:customer_connect/feature/state/bloc/mustsellheader/must_sell_header_bloc.dart'
    as _i84;
import 'package:customer_connect/feature/state/bloc/notificationlisting/notification_listing_bloc.dart'
    as _i86;
import 'package:customer_connect/feature/state/bloc/notificationreplay/notification_replay_bloc_bloc.dart'
    as _i87;
import 'package:customer_connect/feature/state/bloc/notireadflagupdate/noti_read_flag_update_bloc.dart'
    as _i85;
import 'package:customer_connect/feature/state/bloc/outofstockcount/outofstockcount_bloc.dart'
    as _i88;
import 'package:customer_connect/feature/state/bloc/outstanding/outstanding_bloc.dart'
    as _i89;
import 'package:customer_connect/feature/state/bloc/partialdeliveryapproval/partial_delivery_approval_bloc.dart'
    as _i90;
import 'package:customer_connect/feature/state/bloc/partialdeliverydetail/partial_delivery_detail_bloc.dart'
    as _i91;
import 'package:customer_connect/feature/state/bloc/partialdeliverydetailsbloc/partial_delivery_details_bloc.dart'
    as _i92;
import 'package:customer_connect/feature/state/bloc/partialdeliveryheader/partial_delivery_header_bloc.dart'
    as _i93;
import 'package:customer_connect/feature/state/bloc/partialdeliveryreasons/partial_delivery_reason_bloc.dart'
    as _i94;
import 'package:customer_connect/feature/state/bloc/picking_and_loading_count/picking_and_loading_count_bloc.dart'
    as _i96;
import 'package:customer_connect/feature/state/bloc/picking_detail/pickingdetail_bloc.dart'
    as _i98;
import 'package:customer_connect/feature/state/bloc/picking_header/picking_header_bloc.dart'
    as _i97;
import 'package:customer_connect/feature/state/bloc/pricechangedetails/price_change_details_bloc.dart'
    as _i100;
import 'package:customer_connect/feature/state/bloc/pricechangeheader/price_change_header_bloc.dart'
    as _i101;
import 'package:customer_connect/feature/state/bloc/pricechangereasons/price_change_reasons_bloc.dart'
    as _i102;
import 'package:customer_connect/feature/state/bloc/promotion_customer/promotion_customer_bloc.dart'
    as _i103;
import 'package:customer_connect/feature/state/bloc/promotion_details/promotion_details_bloc.dart'
    as _i104;
import 'package:customer_connect/feature/state/bloc/promotion_header/promotion_header_bloc.dart'
    as _i105;
import 'package:customer_connect/feature/state/bloc/qualification_group/qualification_group_bloc.dart'
    as _i106;
import 'package:customer_connect/feature/state/bloc/returnapproval/return_approval_header_bloc.dart'
    as _i109;
import 'package:customer_connect/feature/state/bloc/returnapprovaldetail/return_approval_detail_bloc.dart'
    as _i108;
import 'package:customer_connect/feature/state/bloc/sales_order_count/sales_order_count_bloc.dart'
    as _i111;
import 'package:customer_connect/feature/state/bloc/salesorderdetails/sales_order_details_bloc.dart'
    as _i112;
import 'package:customer_connect/feature/state/bloc/scheduledreturnapproval/schduled_return_approval_bloc.dart'
    as _i113;
import 'package:customer_connect/feature/state/bloc/scheduledreturnheader/schduled_return_header_bloc.dart'
    as _i114;
import 'package:customer_connect/feature/state/bloc/scheuledreturndetail/scheduled_return_details_bloc.dart'
    as _i115;
import 'package:customer_connect/feature/state/bloc/settlementapprovalheader/bloc/settlement_approval_header_bloc.dart'
    as _i117;
import 'package:customer_connect/feature/state/bloc/settlementapprovalheader/settlement_approval_header_bloc.dart'
    as _i116;
import 'package:customer_connect/feature/state/bloc/settlementapprovalpost/post_settlement_approval_bloc.dart'
    as _i99;
import 'package:customer_connect/feature/state/bloc/settlementapprovalreject/settlement_approval_reject_bloc.dart'
    as _i118;
import 'package:customer_connect/feature/state/bloc/settlementpaymentdetail/settlement_payment_detail_bloc.dart'
    as _i121;
import 'package:customer_connect/feature/state/bloc/settlementpaymodedetail/settlement_pay_mode_detail_bloc.dart'
    as _i120;
import 'package:customer_connect/feature/state/bloc/settlemetcashdetails/settlement_cash_details_bloc.dart'
    as _i119;
import 'package:customer_connect/feature/state/bloc/special_price_customers/special_price_customers_bloc.dart'
    as _i122;
import 'package:customer_connect/feature/state/bloc/special_price_header/special_price_header_bloc.dart'
    as _i124;
import 'package:customer_connect/feature/state/bloc/specialpricedetails/special_price_details_bloc.dart'
    as _i123;
import 'package:customer_connect/feature/state/bloc/targetdetailcount/target_details_count_bloc.dart'
    as _i126;
import 'package:customer_connect/feature/state/bloc/targetdetailsgraphamt/target_details_graph_amt_bloc.dart'
    as _i127;
import 'package:customer_connect/feature/state/bloc/targetdetailsgraphqty/rarget_details_graph_qty_bloc.dart'
    as _i107;
import 'package:customer_connect/feature/state/bloc/targetdetailslist/target_details_list_bloc.dart'
    as _i128;
import 'package:customer_connect/feature/state/bloc/targetheadercount/target_header_count_bloc.dart'
    as _i129;
import 'package:customer_connect/feature/state/bloc/targetheaderlist/targer_header_list_bloc.dart'
    as _i125;
import 'package:customer_connect/feature/state/bloc/targetpackagelist/target_package_list_bloc.dart'
    as _i130;
import 'package:customer_connect/feature/state/bloc/todays_delivery/todays_delivery_header_bloc.dart'
    as _i132;
import 'package:customer_connect/feature/state/bloc/todays_delivery_details/todays_delivery_details_bloc.dart'
    as _i131;
import 'package:customer_connect/feature/state/bloc/total_orders_details/total_orders_details_bloc.dart'
    as _i133;
import 'package:customer_connect/feature/state/bloc/total_orders_header/total_orders_header_bloc.dart'
    as _i134;
import 'package:customer_connect/feature/state/bloc/vantovanapproval/van_to_van_approval_bloc.dart'
    as _i137;
import 'package:customer_connect/feature/state/bloc/vantovandetails/van_to_van_details_bloc.dart'
    as _i138;
import 'package:customer_connect/feature/state/bloc/vantovanheader/van_to_van_header_bloc.dart'
    as _i139;
import 'package:customer_connect/feature/state/bloc/voidtransactionapproval/void_transaction_approval_bloc.dart'
    as _i140;
import 'package:customer_connect/feature/state/bloc/voidtransactionheader/void_transaction_header_bloc.dart'
    as _i141;
import 'package:customer_connect/feature/state/bloc/voidtransactionrejection/void_transaction_rejection_bloc.dart'
    as _i142;
import 'package:customer_connect/feature/state/cubit/creditnoteapprovallevel/credit_note_approval_level_status_cubit.dart'
    as _i155;
import 'package:customer_connect/feature/state/cubit/disputeapprovalsatuslevel/dispute_approval_status_level_cubit_cubit.dart'
    as _i174;
import 'package:customer_connect/feature/state/cubit/inventoryreconfirmreasons/inventory_reconfirm_reasons_cubit.dart'
    as _i62;
import 'package:customer_connect/feature/state/cubit/partialdeliveryreason/partial_delivery_reason_cubit.dart'
    as _i95;
import 'package:customer_connect/feature/state/cubit/routeforsc/route_for_sc_cubit.dart'
    as _i110;
import 'package:customer_connect/feature/state/cubit/updategeolocation/update_geo_location_cubit.dart'
    as _i135;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.IApprovalCountsRepo>(() => _i4.ApprovalsCountRepo());
    gh.lazySingleton<_i3.IArCollectionRepo>(() => _i5.ArCollectionRepo());
    gh.lazySingleton<_i3.IAssetAddApprovalRepo>(
        () => _i6.AssetAddIngApprovalRepo());
    gh.lazySingleton<_i3.IAssetRemovalRequestRepo>(
        () => _i7.AssetRemovalRequestRepo());
    gh.lazySingleton<_i8.IChatUserRepo>(() => _i9.AllUsersRepo());
    gh.lazySingleton<_i3.ICreditNoteApprovalRepo>(
        () => _i10.CreditNoteApprovalRepo());
    gh.lazySingleton<_i3.ICusGeoLocationRepo>(() => _i11.GeoLocationRepo());
    gh.lazySingleton<_i3.ICusInsArRepo>(() => _i12.CusInsArRepo());
    gh.lazySingleton<_i3.ICusInsInvoiceRepo>(() => _i13.CusInsInvoiceRepo());
    gh.lazySingleton<_i3.ICusInsightGroupRepo>(
        () => _i14.CusInsightGroupRepo());
    gh.lazySingleton<_i3.ICusInsightsCustomersRepo>(
        () => _i15.CusInsCustomersRepo());
    gh.lazySingleton<_i3.ICusItemsRepo>(() => _i16.CusItemsRepo());
    gh.lazySingleton<_i3.ICusOutstandingRepo>(() => _i17.CusOutStandingRepo());
    gh.lazySingleton<_i3.ICusProfileRepo>(() => _i18.CusProfileRepo());
    gh.lazySingleton<_i3.ICusProtionRepo>(() => _i19.CusPromotionsRepo());
    gh.lazySingleton<_i3.ICusSpPriceRepo>(() => _i20.CusSpPriceRepo());
    gh.lazySingleton<_i3.ICustomerTransactionRepo>(
        () => _i21.CustomerTransactionRepo());
    gh.lazySingleton<_i3.IDisputeNoteApprovalRepo>(
        () => _i22.DisputeNoteApprovalRepo());
    gh.lazySingleton<_i3.IFieldServiceInvoiceApprovalRepo>(
        () => _i23.FieldServiceInvoiceApprovalRepo());
    gh.lazySingleton<_i3.IGetAllAvailableRoutesRepo>(
        () => _i24.GetAllRoutesRepo());
    gh.lazySingleton<_i3.IInvoiceRepo>(() => _i25.InvoiceRepo());
    gh.lazySingleton<_i3.IJourneyPlanApprovalRepo>(
        () => _i26.JourneyPlanApprovalRepo());
    gh.lazySingleton<_i3.ILoadRequestApprovalRepo>(
        () => _i27.LoadRequestApprovalRepo());
    gh.lazySingleton<_i3.ILoadRequestHeaderRepo>(
        () => _i28.LoadRequestHeaderRepo());
    gh.lazySingleton<_i3.ILoadTransferApprovalRepo>(
        () => _i29.LoadTransferApprovalRepo());
    gh.lazySingleton<_i3.ILoadingRepo>(() => _i30.LoadinRepo());
    gh.lazySingleton<_i3.ILoginRepo>(() => _i31.UserLoginRepo());
    gh.lazySingleton<_i3.IMaterialReqHeaderRepo>(() => _i32.MaterialReqRepo());
    gh.lazySingleton<_i3.IMerchandisingDashBoardRepo>(
        () => _i33.MerchandisingScreenRepo());
    gh.lazySingleton<_i8.IMessageRepo>(() => _i34.MessagesRepo());
    gh.lazySingleton<_i3.IMustSellRepo>(() => _i35.MustSellRepo());
    gh.lazySingleton<_i3.INotificationRepo>(() => _i36.NotificationRepo());
    gh.lazySingleton<_i3.IOutStandingHeaderRepo>(
        () => _i37.OutStandingHeadRepo());
    gh.lazySingleton<_i3.IPartialDeliveryRepo>(
        () => _i38.PartialDeliveryRepo());
    gh.lazySingleton<_i3.IPickingAndLoadinCountRepo>(
        () => _i39.PickingAndLoadinCountRepo());
    gh.lazySingleton<_i3.IPickingHeaderRepo>(() => _i40.PickingHeaderRepo());
    gh.lazySingleton<_i3.IPriceChangeRepo>(() => _i41.PriceChangeRepo());
    gh.lazySingleton<_i3.IProfileEditRepo>(() => _i42.ProfileEditingRepo());
    gh.lazySingleton<_i3.IPromotionHeaderRepo>(
        () => _i43.PromotionHeaderRepo());
    gh.lazySingleton<_i3.IQualificationGroupRepo>(
        () => _i44.QualificationGroupREpo());
    gh.lazySingleton<_i3.IReturnApprovalRepo>(() => _i45.ReturnApprovalRepo());
    gh.lazySingleton<_i3.ISalesOrderRepo>(() => _i46.SalesOrderCountRepo());
    gh.lazySingleton<_i3.ISalesOrdersRepo>(() => _i47.SalesOrdersRepo());
    gh.lazySingleton<_i3.IScheduledReturnApprovalRepo>(
        () => _i48.ScheduledReturnApprovalRepo());
    gh.lazySingleton<_i3.ISettlementApprovalHeaderRepo>(
        () => _i49.SettlementApproval());
    gh.lazySingleton<_i3.ISpecialPriceRepo>(() => _i50.SpecialPriceRepo());
    gh.lazySingleton<_i3.ITargetRepo>(() => _i51.TargetHeaderCountRepo());
    gh.lazySingleton<_i3.ITodaysDeliveryRepo>(() => _i52.TodaysDelivery());
    gh.lazySingleton<_i3.ITotalOrdersRepo>(() => _i53.TotalOrderRepo());
    gh.lazySingleton<_i3.IVanToVanApprovalRepo>(
        () => _i54.VanToVanApprovalRepo());
    gh.lazySingleton<_i3.IVoidTransactionRepo>(
        () => _i55.VoidTransactionHeaderRepo());
    gh.lazySingleton<_i3.IcusDocumentsModel>(() => _i56.CusDocumentsRepo());
    gh.lazySingleton<_i3.IcusInsCountsRepo>(() => _i57.CusTrnCOuntsRepo());
    gh.lazySingleton<_i3.IinvetoryReconfirmationApprovalRepo>(
        () => _i58.InventoryReconfirmationRepo());
    gh.factory<_i59.InventoryReconfirmApprovalBloc>(() =>
        _i59.InventoryReconfirmApprovalBloc(
            gh<_i3.IinvetoryReconfirmationApprovalRepo>()));
    gh.factory<_i60.InventoryReconfirmDetailBloc>(() =>
        _i60.InventoryReconfirmDetailBloc(
            gh<_i3.IinvetoryReconfirmationApprovalRepo>()));
    gh.factory<_i61.InventoryReconfirmHeaderBloc>(() =>
        _i61.InventoryReconfirmHeaderBloc(
            gh<_i3.IinvetoryReconfirmationApprovalRepo>()));
    gh.factory<_i62.InventoryReconfirmReasonsCubit>(() =>
        _i62.InventoryReconfirmReasonsCubit(
            gh<_i3.IinvetoryReconfirmationApprovalRepo>()));
    gh.factory<_i63.InvoiceDetailsBloc>(
        () => _i63.InvoiceDetailsBloc(gh<_i3.IInvoiceRepo>()));
    gh.factory<_i64.InvoiceDetailsFooterBloc>(
        () => _i64.InvoiceDetailsFooterBloc(gh<_i3.IInvoiceRepo>()));
    gh.factory<_i65.InvoiceHeaderBloc>(
        () => _i65.InvoiceHeaderBloc(gh<_i3.IInvoiceRepo>()));
    gh.factory<_i66.JoureyPlanApprovalBloc>(
        () => _i66.JoureyPlanApprovalBloc(gh<_i3.IJourneyPlanApprovalRepo>()));
    gh.factory<_i67.JourneyPlanHeaderBloc>(
        () => _i67.JourneyPlanHeaderBloc(gh<_i3.IJourneyPlanApprovalRepo>()));
    gh.factory<_i68.LoadReqApprovalBloc>(
        () => _i68.LoadReqApprovalBloc(gh<_i3.ILoadRequestApprovalRepo>()));
    gh.factory<_i69.LoadReqDetailBloc>(
        () => _i69.LoadReqDetailBloc(gh<_i3.ILoadRequestHeaderRepo>()));
    gh.factory<_i70.LoadReqHeaderBloc>(
        () => _i70.LoadReqHeaderBloc(gh<_i3.ILoadRequestHeaderRepo>()));
    gh.factory<_i71.LoadTransferApprovalBloc>(() =>
        _i71.LoadTransferApprovalBloc(gh<_i3.ILoadTransferApprovalRepo>()));
    gh.factory<_i72.LoadTransferDetailBloc>(
        () => _i72.LoadTransferDetailBloc(gh<_i3.ILoadTransferApprovalRepo>()));
    gh.factory<_i73.LoadTransferHeaderBloc>(
        () => _i73.LoadTransferHeaderBloc(gh<_i3.ILoadTransferApprovalRepo>()));
    gh.factory<_i74.LoadingDetailBloc>(
        () => _i74.LoadingDetailBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i75.LoadingDetailBloc>(
        () => _i75.LoadingDetailBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i76.LoadingHeaderBloc>(
        () => _i76.LoadingHeaderBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i77.MaterialReqApprovalBloc>(
        () => _i77.MaterialReqApprovalBloc(gh<_i3.IMaterialReqHeaderRepo>()));
    gh.factory<_i78.MaterialReqDetailBloc>(
        () => _i78.MaterialReqDetailBloc(gh<_i3.IMaterialReqHeaderRepo>()));
    gh.factory<_i79.MaterialReqHeadBloc>(
        () => _i79.MaterialReqHeadBloc(gh<_i3.IMaterialReqHeaderRepo>()));
    gh.factory<_i80.MaterialReqRejectionBloc>(
        () => _i80.MaterialReqRejectionBloc(gh<_i3.IMaterialReqHeaderRepo>()));
    gh.factory<_i81.MessagesBloc>(
        () => _i81.MessagesBloc(gh<_i8.IMessageRepo>()));
    gh.factory<_i82.MustSellApproveBloc>(
        () => _i82.MustSellApproveBloc(gh<_i3.IMustSellRepo>()));
    gh.factory<_i83.MustSellDetailBloc>(
        () => _i83.MustSellDetailBloc(gh<_i3.IMustSellRepo>()));
    gh.factory<_i84.MustSellHeaderBloc>(
        () => _i84.MustSellHeaderBloc(gh<_i3.IMustSellRepo>()));
    gh.factory<_i85.NotiReadFlagUpdateBloc>(
        () => _i85.NotiReadFlagUpdateBloc(gh<_i3.INotificationRepo>()));
    gh.factory<_i86.NotificationListingBloc>(
        () => _i86.NotificationListingBloc(gh<_i3.INotificationRepo>()));
    gh.factory<_i87.NotificationReplayBlocBloc>(
        () => _i87.NotificationReplayBlocBloc(gh<_i3.INotificationRepo>()));
    gh.factory<_i88.OutofstockcountBloc>(
        () => _i88.OutofstockcountBloc(gh<_i3.IMerchandisingDashBoardRepo>()));
    gh.factory<_i89.OutstandingBloc>(
        () => _i89.OutstandingBloc(gh<_i3.IOutStandingHeaderRepo>()));
    gh.factory<_i90.PartialDeliveryApprovalBloc>(
        () => _i90.PartialDeliveryApprovalBloc(gh<_i3.IPartialDeliveryRepo>()));
    gh.factory<_i91.PartialDeliveryDetailBloc>(
        () => _i91.PartialDeliveryDetailBloc(gh<_i3.IPartialDeliveryRepo>()));
    gh.factory<_i92.PartialDeliveryDetailsBloc>(
        () => _i92.PartialDeliveryDetailsBloc(gh<_i3.IPartialDeliveryRepo>()));
    gh.factory<_i93.PartialDeliveryHeaderBloc>(
        () => _i93.PartialDeliveryHeaderBloc(gh<_i3.IPartialDeliveryRepo>()));
    gh.factory<_i94.PartialDeliveryReasonBloc>(
        () => _i94.PartialDeliveryReasonBloc(gh<_i3.IPartialDeliveryRepo>()));
    gh.factory<_i95.PartialDeliveryReasonCubit>(
        () => _i95.PartialDeliveryReasonCubit(gh<_i3.IPartialDeliveryRepo>()));
    gh.factory<_i96.PickingAndLoadingCountBloc>(() =>
        _i96.PickingAndLoadingCountBloc(gh<_i3.IPickingAndLoadinCountRepo>()));
    gh.factory<_i97.PickingHeaderBloc>(
        () => _i97.PickingHeaderBloc(gh<_i3.IPickingHeaderRepo>()));
    gh.factory<_i98.PickingdetailBloc>(
        () => _i98.PickingdetailBloc(gh<_i3.IPickingHeaderRepo>()));
    gh.factory<_i99.PostSettlementApprovalBloc>(() =>
        _i99.PostSettlementApprovalBloc(
            gh<_i3.ISettlementApprovalHeaderRepo>()));
    gh.factory<_i100.PriceChangeDetailsBloc>(
        () => _i100.PriceChangeDetailsBloc(gh<_i3.IPriceChangeRepo>()));
    gh.factory<_i101.PriceChangeHeaderBloc>(
        () => _i101.PriceChangeHeaderBloc(gh<_i3.IPriceChangeRepo>()));
    gh.factory<_i102.PriceChangeReasonsBloc>(
        () => _i102.PriceChangeReasonsBloc(gh<_i3.IPriceChangeRepo>()));
    gh.factory<_i103.PromotionCustomerBloc>(
        () => _i103.PromotionCustomerBloc(gh<_i3.IPromotionHeaderRepo>()));
    gh.factory<_i104.PromotionDetailsBloc>(
        () => _i104.PromotionDetailsBloc(gh<_i3.IPromotionHeaderRepo>()));
    gh.factory<_i105.PromotionHeaderBloc>(
        () => _i105.PromotionHeaderBloc(gh<_i3.IPromotionHeaderRepo>()));
    gh.factory<_i106.QualificationGroupBloc>(
        () => _i106.QualificationGroupBloc(gh<_i3.IQualificationGroupRepo>()));
    gh.factory<_i107.RargetDetailsGraphQtyBloc>(
        () => _i107.RargetDetailsGraphQtyBloc(gh<_i3.ITargetRepo>()));
    gh.factory<_i108.ReturnApprovalDetailBloc>(
        () => _i108.ReturnApprovalDetailBloc(gh<_i3.IReturnApprovalRepo>()));
    gh.factory<_i109.ReturnApprovalHeaderBloc>(
        () => _i109.ReturnApprovalHeaderBloc(gh<_i3.IReturnApprovalRepo>()));
    gh.factory<_i110.RouteForScCubit>(
        () => _i110.RouteForScCubit(gh<_i3.IScheduledReturnApprovalRepo>()));
    gh.factory<_i111.SalesOrderCountBloc>(
        () => _i111.SalesOrderCountBloc(gh<_i3.ISalesOrderRepo>()));
    gh.factory<_i112.SalesOrderDetailsBloc>(
        () => _i112.SalesOrderDetailsBloc(gh<_i3.ISalesOrdersRepo>()));
    gh.factory<_i113.SchduledReturnApprovalBloc>(() =>
        _i113.SchduledReturnApprovalBloc(
            gh<_i3.IScheduledReturnApprovalRepo>()));
    gh.factory<_i114.SchduledReturnHeaderBloc>(() =>
        _i114.SchduledReturnHeaderBloc(gh<_i3.IScheduledReturnApprovalRepo>()));
    gh.factory<_i115.ScheduledReturnDetailsBloc>(() =>
        _i115.ScheduledReturnDetailsBloc(
            gh<_i3.IScheduledReturnApprovalRepo>()));
    gh.factory<_i116.SettlementApprovalHeaderBloc>(() =>
        _i116.SettlementApprovalHeaderBloc(
            gh<_i3.ISettlementApprovalHeaderRepo>()));
    gh.factory<_i117.SettlementApprovalHeaderBloc>(() =>
        _i117.SettlementApprovalHeaderBloc(
            gh<_i3.ISettlementApprovalHeaderRepo>()));
    gh.factory<_i118.SettlementApprovalRejectBloc>(() =>
        _i118.SettlementApprovalRejectBloc(
            gh<_i3.ISettlementApprovalHeaderRepo>()));
    gh.factory<_i119.SettlementCashDetailsBloc>(() =>
        _i119.SettlementCashDetailsBloc(
            gh<_i3.ISettlementApprovalHeaderRepo>()));
    gh.factory<_i120.SettlementPayModeDetailBloc>(() =>
        _i120.SettlementPayModeDetailBloc(
            gh<_i3.ISettlementApprovalHeaderRepo>()));
    gh.factory<_i121.SettlementPaymentDetailBloc>(() =>
        _i121.SettlementPaymentDetailBloc(
            gh<_i3.ISettlementApprovalHeaderRepo>()));
    gh.factory<_i122.SpecialPriceCustomersBloc>(
        () => _i122.SpecialPriceCustomersBloc(gh<_i3.ISpecialPriceRepo>()));
    gh.factory<_i123.SpecialPriceDetailsBloc>(
        () => _i123.SpecialPriceDetailsBloc(gh<_i3.ISpecialPriceRepo>()));
    gh.factory<_i124.SpecialPriceHeaderBloc>(
        () => _i124.SpecialPriceHeaderBloc(gh<_i3.ISpecialPriceRepo>()));
    gh.factory<_i125.TargerHeaderListBloc>(
        () => _i125.TargerHeaderListBloc(gh<_i3.ITargetRepo>()));
    gh.factory<_i126.TargetDetailsCountBloc>(
        () => _i126.TargetDetailsCountBloc(gh<_i3.ITargetRepo>()));
    gh.factory<_i127.TargetDetailsGraphAmtBloc>(
        () => _i127.TargetDetailsGraphAmtBloc(gh<_i3.ITargetRepo>()));
    gh.factory<_i128.TargetDetailsListBloc>(
        () => _i128.TargetDetailsListBloc(gh<_i3.ITargetRepo>()));
    gh.factory<_i129.TargetHeaderCountBloc>(
        () => _i129.TargetHeaderCountBloc(gh<_i3.ITargetRepo>()));
    gh.factory<_i130.TargetPackageListBloc>(
        () => _i130.TargetPackageListBloc(gh<_i3.ITargetRepo>()));
    gh.factory<_i131.TodaysDeliveryDetailsBloc>(
        () => _i131.TodaysDeliveryDetailsBloc(gh<_i3.ITodaysDeliveryRepo>()));
    gh.factory<_i132.TodaysDeliveryHeaderBloc>(
        () => _i132.TodaysDeliveryHeaderBloc(gh<_i3.ITodaysDeliveryRepo>()));
    gh.factory<_i133.TotalOrdersDetailsBloc>(
        () => _i133.TotalOrdersDetailsBloc(gh<_i3.ITotalOrdersRepo>()));
    gh.factory<_i134.TotalOrdersHeaderBloc>(
        () => _i134.TotalOrdersHeaderBloc(gh<_i3.ITotalOrdersRepo>()));
    gh.factory<_i135.UpdateGeoLocationCubit>(
        () => _i135.UpdateGeoLocationCubit(gh<_i3.ICusGeoLocationRepo>()));
    gh.factory<_i136.UserLoginBloc>(
        () => _i136.UserLoginBloc(gh<_i3.ILoginRepo>()));
    gh.factory<_i137.VanToVanApprovalBloc>(
        () => _i137.VanToVanApprovalBloc(gh<_i3.IVanToVanApprovalRepo>()));
    gh.factory<_i138.VanToVanDetailsBloc>(
        () => _i138.VanToVanDetailsBloc(gh<_i3.IVanToVanApprovalRepo>()));
    gh.factory<_i139.VanToVanHeaderBloc>(
        () => _i139.VanToVanHeaderBloc(gh<_i3.IVanToVanApprovalRepo>()));
    gh.factory<_i140.VoidTransactionApprovalBloc>(() =>
        _i140.VoidTransactionApprovalBloc(gh<_i3.IVoidTransactionRepo>()));
    gh.factory<_i141.VoidTransactionHeaderBloc>(
        () => _i141.VoidTransactionHeaderBloc(gh<_i3.IVoidTransactionRepo>()));
    gh.factory<_i142.VoidTransactionRejectionBloc>(() =>
        _i142.VoidTransactionRejectionBloc(gh<_i3.IVoidTransactionRepo>()));
    gh.factory<_i143.AllUsersBloc>(
        () => _i143.AllUsersBloc(gh<_i8.IChatUserRepo>()));
    gh.factory<_i144.ApprovalCountsBloc>(
        () => _i144.ApprovalCountsBloc(gh<_i3.IApprovalCountsRepo>()));
    gh.factory<_i145.ApprovalReasonsBloc>(
        () => _i145.ApprovalReasonsBloc(gh<_i3.IReturnApprovalRepo>()));
    gh.factory<_i146.ApprovePriceChangeBloc>(
        () => _i146.ApprovePriceChangeBloc(gh<_i3.IPriceChangeRepo>()));
    gh.factory<_i147.ApproveReturnProductBloc>(
        () => _i147.ApproveReturnProductBloc(gh<_i3.IReturnApprovalRepo>()));
    gh.factory<_i148.ArDetailsBloc>(
        () => _i148.ArDetailsBloc(gh<_i3.IArCollectionRepo>()));
    gh.factory<_i149.ArHeaderBloc>(
        () => _i149.ArHeaderBloc(gh<_i3.IArCollectionRepo>()));
    gh.factory<_i150.AssetAddInApprovalHeaderBloc>(() =>
        _i150.AssetAddInApprovalHeaderBloc(gh<_i3.IAssetAddApprovalRepo>()));
    gh.factory<_i151.AssetAddingApprovalAndRjectBlocBloc>(() =>
        _i151.AssetAddingApprovalAndRjectBlocBloc(
            gh<_i3.IAssetAddApprovalRepo>()));
    gh.factory<_i152.AssetRemovalApprvalBloc>(() =>
        _i152.AssetRemovalApprvalBloc(gh<_i3.IAssetRemovalRequestRepo>()));
    gh.factory<_i153.AssetRemovelRequestHeaderBloc>(() =>
        _i153.AssetRemovelRequestHeaderBloc(
            gh<_i3.IAssetRemovalRequestRepo>()));
    gh.factory<_i154.CreditNoteApprovalAndRejectBloc>(() =>
        _i154.CreditNoteApprovalAndRejectBloc(
            gh<_i3.ICreditNoteApprovalRepo>()));
    gh.factory<_i155.CreditNoteApprovalLevelStatusCubit>(() =>
        _i155.CreditNoteApprovalLevelStatusCubit(
            gh<_i3.ICreditNoteApprovalRepo>()));
    gh.factory<_i156.CreditNoteDetailBloc>(
        () => _i156.CreditNoteDetailBloc(gh<_i3.ICreditNoteApprovalRepo>()));
    gh.factory<_i157.CreditNoteHeaderBloc>(
        () => _i157.CreditNoteHeaderBloc(gh<_i3.ICreditNoteApprovalRepo>()));
    gh.factory<_i158.CusDocumentsBloc>(
        () => _i158.CusDocumentsBloc(gh<_i3.IcusDocumentsModel>()));
    gh.factory<_i159.CusGeoLocationBloc>(
        () => _i159.CusGeoLocationBloc(gh<_i3.ICusGeoLocationRepo>()));
    gh.factory<_i160.CusInsArHeaderBloc>(
        () => _i160.CusInsArHeaderBloc(gh<_i3.ICusInsArRepo>()));
    gh.factory<_i161.CusInsInvoiceHeaderBloc>(
        () => _i161.CusInsInvoiceHeaderBloc(gh<_i3.ICusInsInvoiceRepo>()));
    gh.factory<_i162.CusInsTrnCountBloc>(
        () => _i162.CusInsTrnCountBloc(gh<_i3.IcusInsCountsRepo>()));
    gh.factory<_i163.CusInvDetailBlocBloc>(
        () => _i163.CusInvDetailBlocBloc(gh<_i3.ICusInsInvoiceRepo>()));
    gh.factory<_i164.CusItemsBloc>(
        () => _i164.CusItemsBloc(gh<_i3.ICusItemsRepo>()));
    gh.factory<_i165.CusOutStandingBloc>(
        () => _i165.CusOutStandingBloc(gh<_i3.ICusOutstandingRepo>()));
    gh.factory<_i166.CusProfileBloc>(
        () => _i166.CusProfileBloc(gh<_i3.ICusProfileRepo>()));
    gh.factory<_i167.CusPromoDetailBloc>(
        () => _i167.CusPromoDetailBloc(gh<_i3.ICusProtionRepo>()));
    gh.factory<_i168.CusPromotionsHeaderBloc>(
        () => _i168.CusPromotionsHeaderBloc(gh<_i3.ICusProtionRepo>()));
    gh.factory<_i169.CusSalesOrdersBloc>(
        () => _i169.CusSalesOrdersBloc(gh<_i3.ISalesOrdersRepo>()));
    gh.factory<_i170.CusSpPriceBloc>(
        () => _i170.CusSpPriceBloc(gh<_i3.ICusSpPriceRepo>()));
    gh.factory<_i171.CustomerInsightGroupBloc>(
        () => _i171.CustomerInsightGroupBloc(gh<_i3.ICusInsightGroupRepo>()));
    gh.factory<_i172.CustomerTransactionBloc>(() =>
        _i172.CustomerTransactionBloc(gh<_i3.ICustomerTransactionRepo>()));
    gh.factory<_i173.CustomersListBlocBloc>(
        () => _i173.CustomersListBlocBloc(gh<_i3.ICusInsightsCustomersRepo>()));
    gh.factory<_i174.DisputeApprovalStatusLevelCubitCubit>(() =>
        _i174.DisputeApprovalStatusLevelCubitCubit(
            gh<_i3.IDisputeNoteApprovalRepo>()));
    gh.factory<_i175.DisputeNoteApprovalAndRejectBloc>(() =>
        _i175.DisputeNoteApprovalAndRejectBloc(
            gh<_i3.IDisputeNoteApprovalRepo>()));
    gh.factory<_i176.DisputeNoteDetailBloc>(
        () => _i176.DisputeNoteDetailBloc(gh<_i3.IDisputeNoteApprovalRepo>()));
    gh.factory<_i177.DisputeNoteHeaderBloc>(
        () => _i177.DisputeNoteHeaderBloc(gh<_i3.IDisputeNoteApprovalRepo>()));
    gh.factory<_i178.EditCusProfileBloc>(
        () => _i178.EditCusProfileBloc(gh<_i3.IProfileEditRepo>()));
    gh.factory<_i179.FIeldServiceDetailBloc>(() => _i179.FIeldServiceDetailBloc(
        gh<_i3.IFieldServiceInvoiceApprovalRepo>()));
    gh.factory<_i180.FieldServiceHeaderBloc>(() => _i180.FieldServiceHeaderBloc(
        gh<_i3.IFieldServiceInvoiceApprovalRepo>()));
    gh.factory<_i181.FieldServiceInvoiceApprovalBloc>(() =>
        _i181.FieldServiceInvoiceApprovalBloc(
            gh<_i3.IFieldServiceInvoiceApprovalRepo>()));
    gh.factory<_i182.GetAllRouteBloc>(
        () => _i182.GetAllRouteBloc(gh<_i3.IGetAllAvailableRoutesRepo>()));
    return this;
  }
}
