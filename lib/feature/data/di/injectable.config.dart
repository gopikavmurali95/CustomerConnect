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
    as _i10;
import 'package:customer_connect/feature/domain/chat/messagesrepo.dart' as _i40;
import 'package:customer_connect/feature/domain/chat/msgabstractrepos.dart'
    as _i9;
import 'package:customer_connect/feature/domain/repoImpls/activityreview/activityreviewrepo.dart'
    as _i4;
import 'package:customer_connect/feature/domain/repoImpls/approvalscountrepo/approvalscountrepo.dart'
    as _i5;
import 'package:customer_connect/feature/domain/repoImpls/arcollection/arcollectionrepo.dart'
    as _i6;
import 'package:customer_connect/feature/domain/repoImpls/asset_adding_approval/asset_adding_approval_repo.dart'
    as _i7;
import 'package:customer_connect/feature/domain/repoImpls/assetremoval/assetremovalrepo.dart'
    as _i8;
import 'package:customer_connect/feature/domain/repoImpls/creditnote/creditnoteapprovalrepo.dart'
    as _i11;
import 'package:customer_connect/feature/domain/repoImpls/cusdocuments/cusdocumentsrepo.dart'
    as _i64;
import 'package:customer_connect/feature/domain/repoImpls/cusinsightgrouprepo/cusinsightgrouprepo.dart'
    as _i15;
import 'package:customer_connect/feature/domain/repoImpls/cusinsights/cusinsarrepo.dart'
    as _i13;
import 'package:customer_connect/feature/domain/repoImpls/cusinsights/customersrepo.dart'
    as _i16;
import 'package:customer_connect/feature/domain/repoImpls/cusinsights/transactioncunts.dart'
    as _i65;
import 'package:customer_connect/feature/domain/repoImpls/cusinsinvoice/cusinsightsinvoicerepo.dart'
    as _i14;
import 'package:customer_connect/feature/domain/repoImpls/cusitemsrepo/cusitemsrepo.dart'
    as _i17;
import 'package:customer_connect/feature/domain/repoImpls/cusoustanding/cusoutstandingrepo.dart'
    as _i18;
import 'package:customer_connect/feature/domain/repoImpls/cusprofile/cusprofilerepo.dart'
    as _i19;
import 'package:customer_connect/feature/domain/repoImpls/cuspromotions/cuspromotionsrepo.dart'
    as _i20;
import 'package:customer_connect/feature/domain/repoImpls/cusspprice/cussppricerepo.dart'
    as _i21;
import 'package:customer_connect/feature/domain/repoImpls/customersettings/customersettingsrepo.dart'
    as _i22;
import 'package:customer_connect/feature/domain/repoImpls/customertransactionrepo/customertransactionrepo.dart'
    as _i23;
import 'package:customer_connect/feature/domain/repoImpls/disputenote/disputenoterepo.dart'
    as _i24;
import 'package:customer_connect/feature/domain/repoImpls/editprofile/editprofilerepo.dart'
    as _i49;
import 'package:customer_connect/feature/domain/repoImpls/field_service_approval/field_service_approval_repo.dart'
    as _i25;
import 'package:customer_connect/feature/domain/repoImpls/geolocation/geolocationrepo.dart'
    as _i12;
import 'package:customer_connect/feature/domain/repoImpls/getroutes/getallroutesrepo.dart'
    as _i26;
import 'package:customer_connect/feature/domain/repoImpls/homechartrepo/homechartrepo.dart'
    as _i27;
import 'package:customer_connect/feature/domain/repoImpls/inventoryreconfirmation/inventoryreconfirmationrepo.dart'
    as _i66;
import 'package:customer_connect/feature/domain/repoImpls/invoicerepo/invoicerepo.dart'
    as _i28;
import 'package:customer_connect/feature/domain/repoImpls/journey_plan/journeyplanapprovalrepo.dart'
    as _i29;
import 'package:customer_connect/feature/domain/repoImpls/Loading/loadingrepo.dart'
    as _i33;
import 'package:customer_connect/feature/domain/repoImpls/loadreqapprovalrepo/loadrequestapprovalrepo.dart'
    as _i30;
import 'package:customer_connect/feature/domain/repoImpls/loadrequest/loadrequestrepo.dart'
    as _i31;
import 'package:customer_connect/feature/domain/repoImpls/loadtransfer/loadtransferrepo.dart'
    as _i32;
import 'package:customer_connect/feature/domain/repoImpls/loginrepo/loginrepo.dart'
    as _i34;
import 'package:customer_connect/feature/domain/repoImpls/materialreqheaderrepo/materialreqheaderrepo.dart'
    as _i35;
import 'package:customer_connect/feature/domain/repoImpls/merchandising_header_repo/merchandisingheadrepo.dart'
    as _i39;
import 'package:customer_connect/feature/domain/repoImpls/merchandisingsurveyrepo/merchandisingsurveyrepo.dart'
    as _i38;
import 'package:customer_connect/feature/domain/repoImpls/merchcustomeractivitiesrepo/merchcustomeractivitiesrepo.dart'
    as _i36;
import 'package:customer_connect/feature/domain/repoImpls/merchdisplayagreementrepo/merchdisplayagreementrepo.dart'
    as _i37;
import 'package:customer_connect/feature/domain/repoImpls/mustsellrepo/mustsellrepo.dart'
    as _i41;
import 'package:customer_connect/feature/domain/repoImpls/notifications/notificationsrepo.dart'
    as _i42;
import 'package:customer_connect/feature/domain/repoImpls/outofstockitems/outofstockitemsrepo.dart'
    as _i43;
import 'package:customer_connect/feature/domain/repoImpls/outstandingheaderrepo/outstandingheaderrepo.dart'
    as _i44;
import 'package:customer_connect/feature/domain/repoImpls/partialdeliveryrepo/partialdeliveryrepo.dart'
    as _i45;
import 'package:customer_connect/feature/domain/repoImpls/pickingandloadingrepo/pickingandloadincountrepo.dart'
    as _i46;
import 'package:customer_connect/feature/domain/repoImpls/pickingheaderrepo/pickingheaderrepo.dart'
    as _i47;
import 'package:customer_connect/feature/domain/repoImpls/pricechangerepo/pricechangerepo.dart'
    as _i48;
import 'package:customer_connect/feature/domain/repoImpls/promtionrepo/promotionrepo.dart'
    as _i50;
import 'package:customer_connect/feature/domain/repoImpls/qualificationgrouprepo/qualificationgrouprepo.dart'
    as _i51;
import 'package:customer_connect/feature/domain/repoImpls/returnapproval/returnapprovalrepo.dart'
    as _i52;
import 'package:customer_connect/feature/domain/repoImpls/salesorderrepo/salesorderrepo.dart'
    as _i53;
import 'package:customer_connect/feature/domain/repoImpls/salesorderrs/salesordersrepo.dart'
    as _i54;
import 'package:customer_connect/feature/domain/repoImpls/scheduledreturn/scheduledreturnrepo.dart'
    as _i55;
import 'package:customer_connect/feature/domain/repoImpls/settlementapprovalrepo/settlementapprovalrepo.dart'
    as _i56;
import 'package:customer_connect/feature/domain/repoImpls/specialpricerepo/specialpricerepo.dart'
    as _i57;
import 'package:customer_connect/feature/domain/repoImpls/targetrepo/targetrepo.dart'
    as _i58;
import 'package:customer_connect/feature/domain/repoImpls/todaysdeliveryrepo/todaysdeliveryrepo.dart'
    as _i59;
import 'package:customer_connect/feature/domain/repoImpls/totalordersrepo/totalorderrepo.dart'
    as _i60;
import 'package:customer_connect/feature/domain/repoImpls/tracksalesman/tracksalesmanrepo.dart'
    as _i61;
import 'package:customer_connect/feature/domain/repoImpls/vantovanapprovalrepo/vantovanapprovalrepo.dart'
    as _i62;
import 'package:customer_connect/feature/domain/repoImpls/voidtransactionrepo/voidtransactionrepo.dart'
    as _i63;
import 'package:customer_connect/feature/state/bloc/activityreviewdetail/activity_review_detail_bloc.dart'
    as _i157;
import 'package:customer_connect/feature/state/bloc/activityreviewheader/activity_review_header_bloc.dart'
    as _i158;
import 'package:customer_connect/feature/state/bloc/activityreviewtarget/activity_review_targets_bloc.dart'
    as _i160;
import 'package:customer_connect/feature/state/bloc/activitysalesdata/activity_review_sales_data_bloc.dart'
    as _i159;
import 'package:customer_connect/feature/state/bloc/approvalreasons/approval_reasons_bloc.dart'
    as _i163;
import 'package:customer_connect/feature/state/bloc/approvalscountsbloc/approval_counts_bloc.dart'
    as _i162;
import 'package:customer_connect/feature/state/bloc/approvepricechange/approve_price_change_bloc.dart'
    as _i164;
import 'package:customer_connect/feature/state/bloc/approvereturnprod/approve_return_product_bloc.dart'
    as _i165;
import 'package:customer_connect/feature/state/bloc/ardetails/ar_details_bloc.dart'
    as _i166;
import 'package:customer_connect/feature/state/bloc/arheader/ar_header_bloc.dart'
    as _i167;
import 'package:customer_connect/feature/state/bloc/asset_adding_approval_header/asset_add_in_approval_header_bloc.dart'
    as _i168;
import 'package:customer_connect/feature/state/bloc/assetaddapproval/asset_adding_approval_and_rject_bloc_bloc.dart'
    as _i169;
import 'package:customer_connect/feature/state/bloc/assetremovalapproval/asset_removal_apprval_bloc.dart'
    as _i170;
import 'package:customer_connect/feature/state/bloc/assetremovalheader/asset_removel_request_header_bloc.dart'
    as _i171;
import 'package:customer_connect/feature/state/bloc/chartactualvisits/chart_actual_visits_bloc.dart'
    as _i172;
import 'package:customer_connect/feature/state/bloc/chartnonproductive/chart_non_productive_bloc.dart'
    as _i173;
import 'package:customer_connect/feature/state/bloc/chartproductivevisit/chart_productive_visit_bloc.dart'
    as _i175;
import 'package:customer_connect/feature/state/bloc/chartroutes/chart_routs_bloc.dart'
    as _i176;
import 'package:customer_connect/feature/state/bloc/chatusers/all_users_bloc.dart'
    as _i161;
import 'package:customer_connect/feature/state/bloc/creditnoteapproval/credit_note_approval_and_reject_bloc.dart'
    as _i177;
import 'package:customer_connect/feature/state/bloc/creditnotedetail/credit_note_detail_bloc.dart'
    as _i179;
import 'package:customer_connect/feature/state/bloc/creditnoteheader/credit_note_header_bloc.dart'
    as _i180;
import 'package:customer_connect/feature/state/bloc/cusdocuments/cus_documents_bloc.dart'
    as _i181;
import 'package:customer_connect/feature/state/bloc/cusgeolocation/cus_geo_location_bloc.dart'
    as _i182;
import 'package:customer_connect/feature/state/bloc/cusinsarheader/cus_ins_ar_header_bloc.dart'
    as _i183;
import 'package:customer_connect/feature/state/bloc/cusinsinv/cus_ins_invoice_header_bloc.dart'
    as _i184;
import 'package:customer_connect/feature/state/bloc/cusinstrnscount/cus_ins_trn_count_bloc.dart'
    as _i185;
import 'package:customer_connect/feature/state/bloc/cusinvdetail/cus_inv_detail_bloc_bloc.dart'
    as _i186;
import 'package:customer_connect/feature/state/bloc/cusitems/cus_items_bloc.dart'
    as _i187;
import 'package:customer_connect/feature/state/bloc/cusoutstanding/cus_out_standing_bloc.dart'
    as _i188;
import 'package:customer_connect/feature/state/bloc/cusprofile/cus_profile_bloc.dart'
    as _i189;
import 'package:customer_connect/feature/state/bloc/cuspromodetail/cus_promo_detail_bloc.dart'
    as _i190;
import 'package:customer_connect/feature/state/bloc/cuspromotionsheader/cus_promotions_header_bloc.dart'
    as _i191;
import 'package:customer_connect/feature/state/bloc/cussalesorders/cus_sales_orders_bloc.dart'
    as _i192;
import 'package:customer_connect/feature/state/bloc/cussppriceheader/cus_sp_price_bloc.dart'
    as _i193;
import 'package:customer_connect/feature/state/bloc/customer_transaction/customer_transaction_bloc.dart'
    as _i196;
import 'package:customer_connect/feature/state/bloc/customerinsightgroupbloc/customer_insight_group_bloc.dart'
    as _i194;
import 'package:customer_connect/feature/state/bloc/customers/customers_list_bloc_bloc.dart'
    as _i197;
import 'package:customer_connect/feature/state/bloc/customersettings/customer_settings_bloc.dart'
    as _i195;
import 'package:customer_connect/feature/state/bloc/disputeapproval/dispute_note_approval_and_reject_bloc.dart'
    as _i199;
import 'package:customer_connect/feature/state/bloc/disputenotedetail/dispute_note_detail_bloc.dart'
    as _i200;
import 'package:customer_connect/feature/state/bloc/disputenoteheader/dispute_note_header_bloc.dart'
    as _i201;
import 'package:customer_connect/feature/state/bloc/editcusprofile/edit_cus_profile_bloc.dart'
    as _i202;
import 'package:customer_connect/feature/state/bloc/field_service_detail/f_ield_service_detail_bloc.dart'
    as _i203;
import 'package:customer_connect/feature/state/bloc/field_service_header/field_service_header_bloc.dart'
    as _i204;
import 'package:customer_connect/feature/state/bloc/fieldserviceinvoiceapproval/field_service_invoice_approval_bloc.dart'
    as _i205;
import 'package:customer_connect/feature/state/bloc/getallroutes/get_all_route_bloc.dart'
    as _i206;
import 'package:customer_connect/feature/state/bloc/inventoryreconfirmapproval/inventory_reconfirm_approval_bloc.dart'
    as _i67;
import 'package:customer_connect/feature/state/bloc/inventoryreconfirmdetail/inventory_reconfirm_detail_bloc.dart'
    as _i68;
import 'package:customer_connect/feature/state/bloc/inventoryreconfirmheader/inventory_reconfirm_header_bloc.dart'
    as _i69;
import 'package:customer_connect/feature/state/bloc/Invoice_details/invoice_details_bloc.dart'
    as _i71;
import 'package:customer_connect/feature/state/bloc/invoice_details_footer/invoice_details_footer_bloc.dart'
    as _i72;
import 'package:customer_connect/feature/state/bloc/invoice_header/invoice_header_bloc.dart'
    as _i73;
import 'package:customer_connect/feature/state/bloc/journeyplanapproval/jourey_plan_approval_bloc.dart'
    as _i74;
import 'package:customer_connect/feature/state/bloc/journeyplanheader/journey_plan_header_bloc.dart'
    as _i75;
import 'package:customer_connect/feature/state/bloc/loading/loading_detail_bloc.dart'
    as _i83;
import 'package:customer_connect/feature/state/bloc/loadingdetail/loading_detail_bloc.dart'
    as _i82;
import 'package:customer_connect/feature/state/bloc/loadingheader/loading_header_bloc.dart'
    as _i84;
import 'package:customer_connect/feature/state/bloc/loadreqapproval/load_req_approval_bloc.dart'
    as _i76;
import 'package:customer_connect/feature/state/bloc/loadreqdetail/load_req_detail_bloc.dart'
    as _i77;
import 'package:customer_connect/feature/state/bloc/loadreqheader/load_req_header_bloc.dart'
    as _i78;
import 'package:customer_connect/feature/state/bloc/loadtransferapproval/load_transfer_approval_bloc.dart'
    as _i79;
import 'package:customer_connect/feature/state/bloc/loadtransferdetail/load_transfer_detail_bloc.dart'
    as _i80;
import 'package:customer_connect/feature/state/bloc/loadtransferheader/load_transfer_header_bloc.dart'
    as _i81;
import 'package:customer_connect/feature/state/bloc/login/user_login_bloc.dart'
    as _i150;
import 'package:customer_connect/feature/state/bloc/materialreqapproval/material_req_approval_bloc.dart'
    as _i85;
import 'package:customer_connect/feature/state/bloc/materialreqdetail/material_req_detail_bloc.dart'
    as _i86;
import 'package:customer_connect/feature/state/bloc/materialreqhead/material_req_head_bloc.dart'
    as _i87;
import 'package:customer_connect/feature/state/bloc/materialreqrejection/material_req_rejection_bloc.dart'
    as _i88;
import 'package:customer_connect/feature/state/bloc/merchandisingsurvey/merchandising_survey_bloc.dart'
    as _i91;
import 'package:customer_connect/feature/state/bloc/merchcustomeractivities/merch_customer_activities_bloc.dart'
    as _i89;
import 'package:customer_connect/feature/state/bloc/merchdisplayagreement/merch_display_agreement_bloc.dart'
    as _i90;
import 'package:customer_connect/feature/state/bloc/messages/messages_bloc.dart'
    as _i92;
import 'package:customer_connect/feature/state/bloc/mustsellapprove/must_sell_approve_bloc.dart'
    as _i93;
import 'package:customer_connect/feature/state/bloc/mustselldetail/must_sell_detail_bloc.dart'
    as _i94;
import 'package:customer_connect/feature/state/bloc/mustsellheader/must_sell_header_bloc.dart'
    as _i95;
import 'package:customer_connect/feature/state/bloc/notificationlisting/notification_listing_bloc.dart'
    as _i97;
import 'package:customer_connect/feature/state/bloc/notificationreplay/notification_replay_bloc_bloc.dart'
    as _i98;
import 'package:customer_connect/feature/state/bloc/notireadflagupdate/noti_read_flag_update_bloc.dart'
    as _i96;
import 'package:customer_connect/feature/state/bloc/outofstockcount/outofstockcount_bloc.dart'
    as _i101;
import 'package:customer_connect/feature/state/bloc/outofstockitemcustomers/out_of_stock_item_customers_bloc.dart'
    as _i99;
import 'package:customer_connect/feature/state/bloc/outofstockitems/out_of_stock_items_bloc.dart'
    as _i100;
import 'package:customer_connect/feature/state/bloc/outstanding/outstanding_bloc.dart'
    as _i102;
import 'package:customer_connect/feature/state/bloc/partialdeliveryapproval/partial_delivery_approval_bloc.dart'
    as _i103;
import 'package:customer_connect/feature/state/bloc/partialdeliverydetail/partial_delivery_detail_bloc.dart'
    as _i104;
import 'package:customer_connect/feature/state/bloc/partialdeliverydetailsbloc/partial_delivery_details_bloc.dart'
    as _i105;
import 'package:customer_connect/feature/state/bloc/partialdeliveryheader/partial_delivery_header_bloc.dart'
    as _i106;
import 'package:customer_connect/feature/state/bloc/partialdeliveryreasons/partial_delivery_reason_bloc.dart'
    as _i107;
import 'package:customer_connect/feature/state/bloc/picking_and_loading_count/picking_and_loading_count_bloc.dart'
    as _i109;
import 'package:customer_connect/feature/state/bloc/picking_detail/pickingdetail_bloc.dart'
    as _i111;
import 'package:customer_connect/feature/state/bloc/picking_header/picking_header_bloc.dart'
    as _i110;
import 'package:customer_connect/feature/state/bloc/plannedvisits/chart_planned_visits_bloc.dart'
    as _i174;
import 'package:customer_connect/feature/state/bloc/pricechangedetails/price_change_details_bloc.dart'
    as _i113;
import 'package:customer_connect/feature/state/bloc/pricechangeheader/price_change_header_bloc.dart'
    as _i114;
import 'package:customer_connect/feature/state/bloc/pricechangereasons/price_change_reasons_bloc.dart'
    as _i115;
import 'package:customer_connect/feature/state/bloc/promotion_customer/promotion_customer_bloc.dart'
    as _i116;
import 'package:customer_connect/feature/state/bloc/promotion_details/promotion_details_bloc.dart'
    as _i117;
import 'package:customer_connect/feature/state/bloc/promotion_header/promotion_header_bloc.dart'
    as _i118;
import 'package:customer_connect/feature/state/bloc/qualification_group/qualification_group_bloc.dart'
    as _i119;
import 'package:customer_connect/feature/state/bloc/returnapproval/return_approval_header_bloc.dart'
    as _i122;
import 'package:customer_connect/feature/state/bloc/returnapprovaldetail/return_approval_detail_bloc.dart'
    as _i121;
import 'package:customer_connect/feature/state/bloc/sales_order_count/sales_order_count_bloc.dart'
    as _i124;
import 'package:customer_connect/feature/state/bloc/salesorderdetails/sales_order_details_bloc.dart'
    as _i125;
import 'package:customer_connect/feature/state/bloc/scheduledreturnapproval/schduled_return_approval_bloc.dart'
    as _i126;
import 'package:customer_connect/feature/state/bloc/scheduledreturnheader/schduled_return_header_bloc.dart'
    as _i127;
import 'package:customer_connect/feature/state/bloc/scheuledreturndetail/scheduled_return_details_bloc.dart'
    as _i128;
import 'package:customer_connect/feature/state/bloc/settlementapprovalheader/bloc/settlement_approval_header_bloc.dart'
    as _i129;
import 'package:customer_connect/feature/state/bloc/settlementapprovalheader/settlement_approval_header_bloc.dart'
    as _i130;
import 'package:customer_connect/feature/state/bloc/settlementapprovalpost/post_settlement_approval_bloc.dart'
    as _i112;
import 'package:customer_connect/feature/state/bloc/settlementapprovalreject/settlement_approval_reject_bloc.dart'
    as _i131;
import 'package:customer_connect/feature/state/bloc/settlementpaymentdetail/settlement_payment_detail_bloc.dart'
    as _i134;
import 'package:customer_connect/feature/state/bloc/settlementpaymodedetail/settlement_pay_mode_detail_bloc.dart'
    as _i133;
import 'package:customer_connect/feature/state/bloc/settlemetcashdetails/settlement_cash_details_bloc.dart'
    as _i132;
import 'package:customer_connect/feature/state/bloc/special_price_customers/special_price_customers_bloc.dart'
    as _i135;
import 'package:customer_connect/feature/state/bloc/special_price_header/special_price_header_bloc.dart'
    as _i137;
import 'package:customer_connect/feature/state/bloc/specialpricedetails/special_price_details_bloc.dart'
    as _i136;
import 'package:customer_connect/feature/state/bloc/targetdetailcount/target_details_count_bloc.dart'
    as _i139;
import 'package:customer_connect/feature/state/bloc/targetdetailsgraphamt/target_details_graph_amt_bloc.dart'
    as _i140;
import 'package:customer_connect/feature/state/bloc/targetdetailsgraphqty/rarget_details_graph_qty_bloc.dart'
    as _i120;
import 'package:customer_connect/feature/state/bloc/targetdetailslist/target_details_list_bloc.dart'
    as _i141;
import 'package:customer_connect/feature/state/bloc/targetheadercount/target_header_count_bloc.dart'
    as _i142;
import 'package:customer_connect/feature/state/bloc/targetheaderlist/targer_header_list_bloc.dart'
    as _i138;
import 'package:customer_connect/feature/state/bloc/targetpackagelist/target_package_list_bloc.dart'
    as _i143;
import 'package:customer_connect/feature/state/bloc/todays_delivery/todays_delivery_header_bloc.dart'
    as _i145;
import 'package:customer_connect/feature/state/bloc/todays_delivery_details/todays_delivery_details_bloc.dart'
    as _i144;
import 'package:customer_connect/feature/state/bloc/total_orders_details/total_orders_details_bloc.dart'
    as _i146;
import 'package:customer_connect/feature/state/bloc/total_orders_header/total_orders_header_bloc.dart'
    as _i147;
import 'package:customer_connect/feature/state/bloc/tracksalesmanlist/track_sales_man_list_bloc.dart'
    as _i148;
import 'package:customer_connect/feature/state/bloc/vantovanapproval/van_to_van_approval_bloc.dart'
    as _i151;
import 'package:customer_connect/feature/state/bloc/vantovandetails/van_to_van_details_bloc.dart'
    as _i152;
import 'package:customer_connect/feature/state/bloc/vantovanheader/van_to_van_header_bloc.dart'
    as _i153;
import 'package:customer_connect/feature/state/bloc/voidtransactionapproval/void_transaction_approval_bloc.dart'
    as _i154;
import 'package:customer_connect/feature/state/bloc/voidtransactionheader/void_transaction_header_bloc.dart'
    as _i155;
import 'package:customer_connect/feature/state/bloc/voidtransactionrejection/void_transaction_rejection_bloc.dart'
    as _i156;
import 'package:customer_connect/feature/state/cubit/creditnoteapprovallevel/credit_note_approval_level_status_cubit.dart'
    as _i178;
import 'package:customer_connect/feature/state/cubit/disputeapprovalsatuslevel/dispute_approval_status_level_cubit_cubit.dart'
    as _i198;
import 'package:customer_connect/feature/state/cubit/inventoryreconfirmreasons/inventory_reconfirm_reasons_cubit.dart'
    as _i70;
import 'package:customer_connect/feature/state/cubit/partialdeliveryreason/partial_delivery_reason_cubit.dart'
    as _i108;
import 'package:customer_connect/feature/state/cubit/routeforsc/route_for_sc_cubit.dart'
    as _i123;
import 'package:customer_connect/feature/state/cubit/updategeolocation/update_geo_location_cubit.dart'
    as _i149;
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
    gh.lazySingleton<_i3.IActivityReviewRepo>(() => _i4.ActivityReviewRepo());
    gh.lazySingleton<_i3.IApprovalCountsRepo>(() => _i5.ApprovalsCountRepo());
    gh.lazySingleton<_i3.IArCollectionRepo>(() => _i6.ArCollectionRepo());
    gh.lazySingleton<_i3.IAssetAddApprovalRepo>(
        () => _i7.AssetAddIngApprovalRepo());
    gh.lazySingleton<_i3.IAssetRemovalRequestRepo>(
        () => _i8.AssetRemovalRequestRepo());
    gh.lazySingleton<_i9.IChatUserRepo>(() => _i10.AllUsersRepo());
    gh.lazySingleton<_i3.ICreditNoteApprovalRepo>(
        () => _i11.CreditNoteApprovalRepo());
    gh.lazySingleton<_i3.ICusGeoLocationRepo>(() => _i12.GeoLocationRepo());
    gh.lazySingleton<_i3.ICusInsArRepo>(() => _i13.CusInsArRepo());
    gh.lazySingleton<_i3.ICusInsInvoiceRepo>(() => _i14.CusInsInvoiceRepo());
    gh.lazySingleton<_i3.ICusInsightGroupRepo>(
        () => _i15.CusInsightGroupRepo());
    gh.lazySingleton<_i3.ICusInsightsCustomersRepo>(
        () => _i16.CusInsCustomersRepo());
    gh.lazySingleton<_i3.ICusItemsRepo>(() => _i17.CusItemsRepo());
    gh.lazySingleton<_i3.ICusOutstandingRepo>(() => _i18.CusOutStandingRepo());
    gh.lazySingleton<_i3.ICusProfileRepo>(() => _i19.CusProfileRepo());
    gh.lazySingleton<_i3.ICusProtionRepo>(() => _i20.CusPromotionsRepo());
    gh.lazySingleton<_i3.ICusSpPriceRepo>(() => _i21.CusSpPriceRepo());
    gh.lazySingleton<_i3.ICustomerSettingsRepo>(
        () => _i22.CustomerSettingsRepo());
    gh.lazySingleton<_i3.ICustomerTransactionRepo>(
        () => _i23.CustomerTransactionRepo());
    gh.lazySingleton<_i3.IDisputeNoteApprovalRepo>(
        () => _i24.DisputeNoteApprovalRepo());
    gh.lazySingleton<_i3.IFieldServiceInvoiceApprovalRepo>(
        () => _i25.FieldServiceInvoiceApprovalRepo());
    gh.lazySingleton<_i3.IGetAllAvailableRoutesRepo>(
        () => _i26.GetAllRoutesRepo());
    gh.lazySingleton<_i3.IHomeChartsRepo>(() => _i27.HomeChartRepo());
    gh.lazySingleton<_i3.IInvoiceRepo>(() => _i28.InvoiceRepo());
    gh.lazySingleton<_i3.IJourneyPlanApprovalRepo>(
        () => _i29.JourneyPlanApprovalRepo());
    gh.lazySingleton<_i3.ILoadRequestApprovalRepo>(
        () => _i30.LoadRequestApprovalRepo());
    gh.lazySingleton<_i3.ILoadRequestHeaderRepo>(
        () => _i31.LoadRequestHeaderRepo());
    gh.lazySingleton<_i3.ILoadTransferApprovalRepo>(
        () => _i32.LoadTransferApprovalRepo());
    gh.lazySingleton<_i3.ILoadingRepo>(() => _i33.LoadinRepo());
    gh.lazySingleton<_i3.ILoginRepo>(() => _i34.UserLoginRepo());
    gh.lazySingleton<_i3.IMaterialReqHeaderRepo>(() => _i35.MaterialReqRepo());
    gh.lazySingleton<_i3.IMerchCustomerActivitiesRepo>(
        () => _i36.MerchCustomerActivitiesRepo());
    gh.lazySingleton<_i3.IMerchDisplayAgreement>(
        () => _i37.MerchDisplayAgreementRepo());
    gh.lazySingleton<_i3.IMerchandinsingSurveyRepo>(
        () => _i38.MerchandisingSurveyRepo());
    gh.lazySingleton<_i3.IMerchandisingDashBoardRepo>(
        () => _i39.MerchandisingScreenRepo());
    gh.lazySingleton<_i9.IMessageRepo>(() => _i40.MessagesRepo());
    gh.lazySingleton<_i3.IMustSellRepo>(() => _i41.MustSellRepo());
    gh.lazySingleton<_i3.INotificationRepo>(() => _i42.NotificationRepo());
    gh.lazySingleton<_i3.IOutOfStockProductsRepo>(
        () => _i43.OutOfStockItemsRepo());
    gh.lazySingleton<_i3.IOutStandingHeaderRepo>(
        () => _i44.OutStandingHeadRepo());
    gh.lazySingleton<_i3.IPartialDeliveryRepo>(
        () => _i45.PartialDeliveryRepo());
    gh.lazySingleton<_i3.IPickingAndLoadinCountRepo>(
        () => _i46.PickingAndLoadinCountRepo());
    gh.lazySingleton<_i3.IPickingHeaderRepo>(() => _i47.PickingHeaderRepo());
    gh.lazySingleton<_i3.IPriceChangeRepo>(() => _i48.PriceChangeRepo());
    gh.lazySingleton<_i3.IProfileEditRepo>(() => _i49.ProfileEditingRepo());
    gh.lazySingleton<_i3.IPromotionHeaderRepo>(
        () => _i50.PromotionHeaderRepo());
    gh.lazySingleton<_i3.IQualificationGroupRepo>(
        () => _i51.QualificationGroupREpo());
    gh.lazySingleton<_i3.IReturnApprovalRepo>(() => _i52.ReturnApprovalRepo());
    gh.lazySingleton<_i3.ISalesOrderRepo>(() => _i53.SalesOrderCountRepo());
    gh.lazySingleton<_i3.ISalesOrdersRepo>(() => _i54.SalesOrdersRepo());
    gh.lazySingleton<_i3.IScheduledReturnApprovalRepo>(
        () => _i55.ScheduledReturnApprovalRepo());
    gh.lazySingleton<_i3.ISettlementApprovalHeaderRepo>(
        () => _i56.SettlementApproval());
    gh.lazySingleton<_i3.ISpecialPriceRepo>(() => _i57.SpecialPriceRepo());
    gh.lazySingleton<_i3.ITargetRepo>(() => _i58.TargetHeaderCountRepo());
    gh.lazySingleton<_i3.ITodaysDeliveryRepo>(() => _i59.TodaysDelivery());
    gh.lazySingleton<_i3.ITotalOrdersRepo>(() => _i60.TotalOrderRepo());
    gh.lazySingleton<_i3.ITrackSalesManRepo>(() => _i61.TrackSalesManRepo());
    gh.lazySingleton<_i3.IVanToVanApprovalRepo>(
        () => _i62.VanToVanApprovalRepo());
    gh.lazySingleton<_i3.IVoidTransactionRepo>(
        () => _i63.VoidTransactionHeaderRepo());
    gh.lazySingleton<_i3.IcusDocumentsModel>(() => _i64.CusDocumentsRepo());
    gh.lazySingleton<_i3.IcusInsCountsRepo>(() => _i65.CusTrnCOuntsRepo());
    gh.lazySingleton<_i3.IinvetoryReconfirmationApprovalRepo>(
        () => _i66.InventoryReconfirmationRepo());
    gh.factory<_i67.InventoryReconfirmApprovalBloc>(() =>
        _i67.InventoryReconfirmApprovalBloc(
            gh<_i3.IinvetoryReconfirmationApprovalRepo>()));
    gh.factory<_i68.InventoryReconfirmDetailBloc>(() =>
        _i68.InventoryReconfirmDetailBloc(
            gh<_i3.IinvetoryReconfirmationApprovalRepo>()));
    gh.factory<_i69.InventoryReconfirmHeaderBloc>(() =>
        _i69.InventoryReconfirmHeaderBloc(
            gh<_i3.IinvetoryReconfirmationApprovalRepo>()));
    gh.factory<_i70.InventoryReconfirmReasonsCubit>(() =>
        _i70.InventoryReconfirmReasonsCubit(
            gh<_i3.IinvetoryReconfirmationApprovalRepo>()));
    gh.factory<_i71.InvoiceDetailsBloc>(
        () => _i71.InvoiceDetailsBloc(gh<_i3.IInvoiceRepo>()));
    gh.factory<_i72.InvoiceDetailsFooterBloc>(
        () => _i72.InvoiceDetailsFooterBloc(gh<_i3.IInvoiceRepo>()));
    gh.factory<_i73.InvoiceHeaderBloc>(
        () => _i73.InvoiceHeaderBloc(gh<_i3.IInvoiceRepo>()));
    gh.factory<_i74.JoureyPlanApprovalBloc>(
        () => _i74.JoureyPlanApprovalBloc(gh<_i3.IJourneyPlanApprovalRepo>()));
    gh.factory<_i75.JourneyPlanHeaderBloc>(
        () => _i75.JourneyPlanHeaderBloc(gh<_i3.IJourneyPlanApprovalRepo>()));
    gh.factory<_i76.LoadReqApprovalBloc>(
        () => _i76.LoadReqApprovalBloc(gh<_i3.ILoadRequestApprovalRepo>()));
    gh.factory<_i77.LoadReqDetailBloc>(
        () => _i77.LoadReqDetailBloc(gh<_i3.ILoadRequestHeaderRepo>()));
    gh.factory<_i78.LoadReqHeaderBloc>(
        () => _i78.LoadReqHeaderBloc(gh<_i3.ILoadRequestHeaderRepo>()));
    gh.factory<_i79.LoadTransferApprovalBloc>(() =>
        _i79.LoadTransferApprovalBloc(gh<_i3.ILoadTransferApprovalRepo>()));
    gh.factory<_i80.LoadTransferDetailBloc>(
        () => _i80.LoadTransferDetailBloc(gh<_i3.ILoadTransferApprovalRepo>()));
    gh.factory<_i81.LoadTransferHeaderBloc>(
        () => _i81.LoadTransferHeaderBloc(gh<_i3.ILoadTransferApprovalRepo>()));
    gh.factory<_i82.LoadingDetailBloc>(
        () => _i82.LoadingDetailBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i83.LoadingDetailBloc>(
        () => _i83.LoadingDetailBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i84.LoadingHeaderBloc>(
        () => _i84.LoadingHeaderBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i85.MaterialReqApprovalBloc>(
        () => _i85.MaterialReqApprovalBloc(gh<_i3.IMaterialReqHeaderRepo>()));
    gh.factory<_i86.MaterialReqDetailBloc>(
        () => _i86.MaterialReqDetailBloc(gh<_i3.IMaterialReqHeaderRepo>()));
    gh.factory<_i87.MaterialReqHeadBloc>(
        () => _i87.MaterialReqHeadBloc(gh<_i3.IMaterialReqHeaderRepo>()));
    gh.factory<_i88.MaterialReqRejectionBloc>(
        () => _i88.MaterialReqRejectionBloc(gh<_i3.IMaterialReqHeaderRepo>()));
    gh.factory<_i89.MerchCustomerActivitiesBloc>(() =>
        _i89.MerchCustomerActivitiesBloc(
            gh<_i3.IMerchCustomerActivitiesRepo>()));
    gh.factory<_i90.MerchDisplayAgreementBloc>(
        () => _i90.MerchDisplayAgreementBloc(gh<_i3.IMerchDisplayAgreement>()));
    gh.factory<_i91.MerchandisingSurveyBloc>(() =>
        _i91.MerchandisingSurveyBloc(gh<_i3.IMerchandinsingSurveyRepo>()));
    gh.factory<_i92.MessagesBloc>(
        () => _i92.MessagesBloc(gh<_i9.IMessageRepo>()));
    gh.factory<_i93.MustSellApproveBloc>(
        () => _i93.MustSellApproveBloc(gh<_i3.IMustSellRepo>()));
    gh.factory<_i94.MustSellDetailBloc>(
        () => _i94.MustSellDetailBloc(gh<_i3.IMustSellRepo>()));
    gh.factory<_i95.MustSellHeaderBloc>(
        () => _i95.MustSellHeaderBloc(gh<_i3.IMustSellRepo>()));
    gh.factory<_i96.NotiReadFlagUpdateBloc>(
        () => _i96.NotiReadFlagUpdateBloc(gh<_i3.INotificationRepo>()));
    gh.factory<_i97.NotificationListingBloc>(
        () => _i97.NotificationListingBloc(gh<_i3.INotificationRepo>()));
    gh.factory<_i98.NotificationReplayBlocBloc>(
        () => _i98.NotificationReplayBlocBloc(gh<_i3.INotificationRepo>()));
    gh.factory<_i99.OutOfStockItemCustomersBloc>(() =>
        _i99.OutOfStockItemCustomersBloc(gh<_i3.IOutOfStockProductsRepo>()));
    gh.factory<_i100.OutOfStockItemsBloc>(
        () => _i100.OutOfStockItemsBloc(gh<_i3.IOutOfStockProductsRepo>()));
    gh.factory<_i101.OutofstockcountBloc>(
        () => _i101.OutofstockcountBloc(gh<_i3.IMerchandisingDashBoardRepo>()));
    gh.factory<_i102.OutstandingBloc>(
        () => _i102.OutstandingBloc(gh<_i3.IOutStandingHeaderRepo>()));
    gh.factory<_i103.PartialDeliveryApprovalBloc>(() =>
        _i103.PartialDeliveryApprovalBloc(gh<_i3.IPartialDeliveryRepo>()));
    gh.factory<_i104.PartialDeliveryDetailBloc>(
        () => _i104.PartialDeliveryDetailBloc(gh<_i3.IPartialDeliveryRepo>()));
    gh.factory<_i105.PartialDeliveryDetailsBloc>(
        () => _i105.PartialDeliveryDetailsBloc(gh<_i3.IPartialDeliveryRepo>()));
    gh.factory<_i106.PartialDeliveryHeaderBloc>(
        () => _i106.PartialDeliveryHeaderBloc(gh<_i3.IPartialDeliveryRepo>()));
    gh.factory<_i107.PartialDeliveryReasonBloc>(
        () => _i107.PartialDeliveryReasonBloc(gh<_i3.IPartialDeliveryRepo>()));
    gh.factory<_i108.PartialDeliveryReasonCubit>(
        () => _i108.PartialDeliveryReasonCubit(gh<_i3.IPartialDeliveryRepo>()));
    gh.factory<_i109.PickingAndLoadingCountBloc>(() =>
        _i109.PickingAndLoadingCountBloc(gh<_i3.IPickingAndLoadinCountRepo>()));
    gh.factory<_i110.PickingHeaderBloc>(
        () => _i110.PickingHeaderBloc(gh<_i3.IPickingHeaderRepo>()));
    gh.factory<_i111.PickingdetailBloc>(
        () => _i111.PickingdetailBloc(gh<_i3.IPickingHeaderRepo>()));
    gh.factory<_i112.PostSettlementApprovalBloc>(() =>
        _i112.PostSettlementApprovalBloc(
            gh<_i3.ISettlementApprovalHeaderRepo>()));
    gh.factory<_i113.PriceChangeDetailsBloc>(
        () => _i113.PriceChangeDetailsBloc(gh<_i3.IPriceChangeRepo>()));
    gh.factory<_i114.PriceChangeHeaderBloc>(
        () => _i114.PriceChangeHeaderBloc(gh<_i3.IPriceChangeRepo>()));
    gh.factory<_i115.PriceChangeReasonsBloc>(
        () => _i115.PriceChangeReasonsBloc(gh<_i3.IPriceChangeRepo>()));
    gh.factory<_i116.PromotionCustomerBloc>(
        () => _i116.PromotionCustomerBloc(gh<_i3.IPromotionHeaderRepo>()));
    gh.factory<_i117.PromotionDetailsBloc>(
        () => _i117.PromotionDetailsBloc(gh<_i3.IPromotionHeaderRepo>()));
    gh.factory<_i118.PromotionHeaderBloc>(
        () => _i118.PromotionHeaderBloc(gh<_i3.IPromotionHeaderRepo>()));
    gh.factory<_i119.QualificationGroupBloc>(
        () => _i119.QualificationGroupBloc(gh<_i3.IQualificationGroupRepo>()));
    gh.factory<_i120.RargetDetailsGraphQtyBloc>(
        () => _i120.RargetDetailsGraphQtyBloc(gh<_i3.ITargetRepo>()));
    gh.factory<_i121.ReturnApprovalDetailBloc>(
        () => _i121.ReturnApprovalDetailBloc(gh<_i3.IReturnApprovalRepo>()));
    gh.factory<_i122.ReturnApprovalHeaderBloc>(
        () => _i122.ReturnApprovalHeaderBloc(gh<_i3.IReturnApprovalRepo>()));
    gh.factory<_i123.RouteForScCubit>(
        () => _i123.RouteForScCubit(gh<_i3.IScheduledReturnApprovalRepo>()));
    gh.factory<_i124.SalesOrderCountBloc>(
        () => _i124.SalesOrderCountBloc(gh<_i3.ISalesOrderRepo>()));
    gh.factory<_i125.SalesOrderDetailsBloc>(
        () => _i125.SalesOrderDetailsBloc(gh<_i3.ISalesOrdersRepo>()));
    gh.factory<_i126.SchduledReturnApprovalBloc>(() =>
        _i126.SchduledReturnApprovalBloc(
            gh<_i3.IScheduledReturnApprovalRepo>()));
    gh.factory<_i127.SchduledReturnHeaderBloc>(() =>
        _i127.SchduledReturnHeaderBloc(gh<_i3.IScheduledReturnApprovalRepo>()));
    gh.factory<_i128.ScheduledReturnDetailsBloc>(() =>
        _i128.ScheduledReturnDetailsBloc(
            gh<_i3.IScheduledReturnApprovalRepo>()));
    gh.factory<_i129.SettlementApprovalHeaderBloc>(() =>
        _i129.SettlementApprovalHeaderBloc(
            gh<_i3.ISettlementApprovalHeaderRepo>()));
    gh.factory<_i130.SettlementApprovalHeaderBloc>(() =>
        _i130.SettlementApprovalHeaderBloc(
            gh<_i3.ISettlementApprovalHeaderRepo>()));
    gh.factory<_i131.SettlementApprovalRejectBloc>(() =>
        _i131.SettlementApprovalRejectBloc(
            gh<_i3.ISettlementApprovalHeaderRepo>()));
    gh.factory<_i132.SettlementCashDetailsBloc>(() =>
        _i132.SettlementCashDetailsBloc(
            gh<_i3.ISettlementApprovalHeaderRepo>()));
    gh.factory<_i133.SettlementPayModeDetailBloc>(() =>
        _i133.SettlementPayModeDetailBloc(
            gh<_i3.ISettlementApprovalHeaderRepo>()));
    gh.factory<_i134.SettlementPaymentDetailBloc>(() =>
        _i134.SettlementPaymentDetailBloc(
            gh<_i3.ISettlementApprovalHeaderRepo>()));
    gh.factory<_i135.SpecialPriceCustomersBloc>(
        () => _i135.SpecialPriceCustomersBloc(gh<_i3.ISpecialPriceRepo>()));
    gh.factory<_i136.SpecialPriceDetailsBloc>(
        () => _i136.SpecialPriceDetailsBloc(gh<_i3.ISpecialPriceRepo>()));
    gh.factory<_i137.SpecialPriceHeaderBloc>(
        () => _i137.SpecialPriceHeaderBloc(gh<_i3.ISpecialPriceRepo>()));
    gh.factory<_i138.TargerHeaderListBloc>(
        () => _i138.TargerHeaderListBloc(gh<_i3.ITargetRepo>()));
    gh.factory<_i139.TargetDetailsCountBloc>(
        () => _i139.TargetDetailsCountBloc(gh<_i3.ITargetRepo>()));
    gh.factory<_i140.TargetDetailsGraphAmtBloc>(
        () => _i140.TargetDetailsGraphAmtBloc(gh<_i3.ITargetRepo>()));
    gh.factory<_i141.TargetDetailsListBloc>(
        () => _i141.TargetDetailsListBloc(gh<_i3.ITargetRepo>()));
    gh.factory<_i142.TargetHeaderCountBloc>(
        () => _i142.TargetHeaderCountBloc(gh<_i3.ITargetRepo>()));
    gh.factory<_i143.TargetPackageListBloc>(
        () => _i143.TargetPackageListBloc(gh<_i3.ITargetRepo>()));
    gh.factory<_i144.TodaysDeliveryDetailsBloc>(
        () => _i144.TodaysDeliveryDetailsBloc(gh<_i3.ITodaysDeliveryRepo>()));
    gh.factory<_i145.TodaysDeliveryHeaderBloc>(
        () => _i145.TodaysDeliveryHeaderBloc(gh<_i3.ITodaysDeliveryRepo>()));
    gh.factory<_i146.TotalOrdersDetailsBloc>(
        () => _i146.TotalOrdersDetailsBloc(gh<_i3.ITotalOrdersRepo>()));
    gh.factory<_i147.TotalOrdersHeaderBloc>(
        () => _i147.TotalOrdersHeaderBloc(gh<_i3.ITotalOrdersRepo>()));
    gh.factory<_i148.TrackSalesManListBloc>(
        () => _i148.TrackSalesManListBloc(gh<_i3.ITrackSalesManRepo>()));
    gh.factory<_i149.UpdateGeoLocationCubit>(
        () => _i149.UpdateGeoLocationCubit(gh<_i3.ICusGeoLocationRepo>()));
    gh.factory<_i150.UserLoginBloc>(
        () => _i150.UserLoginBloc(gh<_i3.ILoginRepo>()));
    gh.factory<_i151.VanToVanApprovalBloc>(
        () => _i151.VanToVanApprovalBloc(gh<_i3.IVanToVanApprovalRepo>()));
    gh.factory<_i152.VanToVanDetailsBloc>(
        () => _i152.VanToVanDetailsBloc(gh<_i3.IVanToVanApprovalRepo>()));
    gh.factory<_i153.VanToVanHeaderBloc>(
        () => _i153.VanToVanHeaderBloc(gh<_i3.IVanToVanApprovalRepo>()));
    gh.factory<_i154.VoidTransactionApprovalBloc>(() =>
        _i154.VoidTransactionApprovalBloc(gh<_i3.IVoidTransactionRepo>()));
    gh.factory<_i155.VoidTransactionHeaderBloc>(
        () => _i155.VoidTransactionHeaderBloc(gh<_i3.IVoidTransactionRepo>()));
    gh.factory<_i156.VoidTransactionRejectionBloc>(() =>
        _i156.VoidTransactionRejectionBloc(gh<_i3.IVoidTransactionRepo>()));
    gh.factory<_i157.ActivityReviewDetailBloc>(
        () => _i157.ActivityReviewDetailBloc(gh<_i3.IActivityReviewRepo>()));
    gh.factory<_i158.ActivityReviewHeaderBloc>(
        () => _i158.ActivityReviewHeaderBloc(gh<_i3.IActivityReviewRepo>()));
    gh.factory<_i159.ActivityReviewSalesDataBloc>(
        () => _i159.ActivityReviewSalesDataBloc(gh<_i3.IActivityReviewRepo>()));
    gh.factory<_i160.ActivityReviewTargetsBloc>(
        () => _i160.ActivityReviewTargetsBloc(gh<_i3.IActivityReviewRepo>()));
    gh.factory<_i161.AllUsersBloc>(
        () => _i161.AllUsersBloc(gh<_i9.IChatUserRepo>()));
    gh.factory<_i162.ApprovalCountsBloc>(
        () => _i162.ApprovalCountsBloc(gh<_i3.IApprovalCountsRepo>()));
    gh.factory<_i163.ApprovalReasonsBloc>(
        () => _i163.ApprovalReasonsBloc(gh<_i3.IReturnApprovalRepo>()));
    gh.factory<_i164.ApprovePriceChangeBloc>(
        () => _i164.ApprovePriceChangeBloc(gh<_i3.IPriceChangeRepo>()));
    gh.factory<_i165.ApproveReturnProductBloc>(
        () => _i165.ApproveReturnProductBloc(gh<_i3.IReturnApprovalRepo>()));
    gh.factory<_i166.ArDetailsBloc>(
        () => _i166.ArDetailsBloc(gh<_i3.IArCollectionRepo>()));
    gh.factory<_i167.ArHeaderBloc>(
        () => _i167.ArHeaderBloc(gh<_i3.IArCollectionRepo>()));
    gh.factory<_i168.AssetAddInApprovalHeaderBloc>(() =>
        _i168.AssetAddInApprovalHeaderBloc(gh<_i3.IAssetAddApprovalRepo>()));
    gh.factory<_i169.AssetAddingApprovalAndRjectBlocBloc>(() =>
        _i169.AssetAddingApprovalAndRjectBlocBloc(
            gh<_i3.IAssetAddApprovalRepo>()));
    gh.factory<_i170.AssetRemovalApprvalBloc>(() =>
        _i170.AssetRemovalApprvalBloc(gh<_i3.IAssetRemovalRequestRepo>()));
    gh.factory<_i171.AssetRemovelRequestHeaderBloc>(() =>
        _i171.AssetRemovelRequestHeaderBloc(
            gh<_i3.IAssetRemovalRequestRepo>()));
    gh.factory<_i172.ChartActualVisitsBloc>(
        () => _i172.ChartActualVisitsBloc(gh<_i3.IHomeChartsRepo>()));
    gh.factory<_i173.ChartNonProductiveBloc>(
        () => _i173.ChartNonProductiveBloc(gh<_i3.IHomeChartsRepo>()));
    gh.factory<_i174.ChartPlannedVisitsBloc>(
        () => _i174.ChartPlannedVisitsBloc(gh<_i3.IHomeChartsRepo>()));
    gh.factory<_i175.ChartProductiveVisitBloc>(
        () => _i175.ChartProductiveVisitBloc(gh<_i3.IHomeChartsRepo>()));
    gh.factory<_i176.ChartRoutsBloc>(
        () => _i176.ChartRoutsBloc(gh<_i3.IHomeChartsRepo>()));
    gh.factory<_i177.CreditNoteApprovalAndRejectBloc>(() =>
        _i177.CreditNoteApprovalAndRejectBloc(
            gh<_i3.ICreditNoteApprovalRepo>()));
    gh.factory<_i178.CreditNoteApprovalLevelStatusCubit>(() =>
        _i178.CreditNoteApprovalLevelStatusCubit(
            gh<_i3.ICreditNoteApprovalRepo>()));
    gh.factory<_i179.CreditNoteDetailBloc>(
        () => _i179.CreditNoteDetailBloc(gh<_i3.ICreditNoteApprovalRepo>()));
    gh.factory<_i180.CreditNoteHeaderBloc>(
        () => _i180.CreditNoteHeaderBloc(gh<_i3.ICreditNoteApprovalRepo>()));
    gh.factory<_i181.CusDocumentsBloc>(
        () => _i181.CusDocumentsBloc(gh<_i3.IcusDocumentsModel>()));
    gh.factory<_i182.CusGeoLocationBloc>(
        () => _i182.CusGeoLocationBloc(gh<_i3.ICusGeoLocationRepo>()));
    gh.factory<_i183.CusInsArHeaderBloc>(
        () => _i183.CusInsArHeaderBloc(gh<_i3.ICusInsArRepo>()));
    gh.factory<_i184.CusInsInvoiceHeaderBloc>(
        () => _i184.CusInsInvoiceHeaderBloc(gh<_i3.ICusInsInvoiceRepo>()));
    gh.factory<_i185.CusInsTrnCountBloc>(
        () => _i185.CusInsTrnCountBloc(gh<_i3.IcusInsCountsRepo>()));
    gh.factory<_i186.CusInvDetailBlocBloc>(
        () => _i186.CusInvDetailBlocBloc(gh<_i3.ICusInsInvoiceRepo>()));
    gh.factory<_i187.CusItemsBloc>(
        () => _i187.CusItemsBloc(gh<_i3.ICusItemsRepo>()));
    gh.factory<_i188.CusOutStandingBloc>(
        () => _i188.CusOutStandingBloc(gh<_i3.ICusOutstandingRepo>()));
    gh.factory<_i189.CusProfileBloc>(
        () => _i189.CusProfileBloc(gh<_i3.ICusProfileRepo>()));
    gh.factory<_i190.CusPromoDetailBloc>(
        () => _i190.CusPromoDetailBloc(gh<_i3.ICusProtionRepo>()));
    gh.factory<_i191.CusPromotionsHeaderBloc>(
        () => _i191.CusPromotionsHeaderBloc(gh<_i3.ICusProtionRepo>()));
    gh.factory<_i192.CusSalesOrdersBloc>(
        () => _i192.CusSalesOrdersBloc(gh<_i3.ISalesOrdersRepo>()));
    gh.factory<_i193.CusSpPriceBloc>(
        () => _i193.CusSpPriceBloc(gh<_i3.ICusSpPriceRepo>()));
    gh.factory<_i194.CustomerInsightGroupBloc>(
        () => _i194.CustomerInsightGroupBloc(gh<_i3.ICusInsightGroupRepo>()));
    gh.factory<_i195.CustomerSettingsBloc>(
        () => _i195.CustomerSettingsBloc(gh<_i3.ICustomerSettingsRepo>()));
    gh.factory<_i196.CustomerTransactionBloc>(() =>
        _i196.CustomerTransactionBloc(gh<_i3.ICustomerTransactionRepo>()));
    gh.factory<_i197.CustomersListBlocBloc>(
        () => _i197.CustomersListBlocBloc(gh<_i3.ICusInsightsCustomersRepo>()));
    gh.factory<_i198.DisputeApprovalStatusLevelCubitCubit>(() =>
        _i198.DisputeApprovalStatusLevelCubitCubit(
            gh<_i3.IDisputeNoteApprovalRepo>()));
    gh.factory<_i199.DisputeNoteApprovalAndRejectBloc>(() =>
        _i199.DisputeNoteApprovalAndRejectBloc(
            gh<_i3.IDisputeNoteApprovalRepo>()));
    gh.factory<_i200.DisputeNoteDetailBloc>(
        () => _i200.DisputeNoteDetailBloc(gh<_i3.IDisputeNoteApprovalRepo>()));
    gh.factory<_i201.DisputeNoteHeaderBloc>(
        () => _i201.DisputeNoteHeaderBloc(gh<_i3.IDisputeNoteApprovalRepo>()));
    gh.factory<_i202.EditCusProfileBloc>(
        () => _i202.EditCusProfileBloc(gh<_i3.IProfileEditRepo>()));
    gh.factory<_i203.FIeldServiceDetailBloc>(() => _i203.FIeldServiceDetailBloc(
        gh<_i3.IFieldServiceInvoiceApprovalRepo>()));
    gh.factory<_i204.FieldServiceHeaderBloc>(() => _i204.FieldServiceHeaderBloc(
        gh<_i3.IFieldServiceInvoiceApprovalRepo>()));
    gh.factory<_i205.FieldServiceInvoiceApprovalBloc>(() =>
        _i205.FieldServiceInvoiceApprovalBloc(
            gh<_i3.IFieldServiceInvoiceApprovalRepo>()));
    gh.factory<_i206.GetAllRouteBloc>(
        () => _i206.GetAllRouteBloc(gh<_i3.IGetAllAvailableRoutesRepo>()));
    return this;
  }
}
