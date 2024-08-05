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
    as _i55;
import 'package:customer_connect/feature/domain/repoImpls/cusinsightgrouprepo/cusinsightgrouprepo.dart'
    as _i14;
import 'package:customer_connect/feature/domain/repoImpls/cusinsights/cusinsarrepo.dart'
    as _i12;
import 'package:customer_connect/feature/domain/repoImpls/cusinsights/customersrepo.dart'
    as _i15;
import 'package:customer_connect/feature/domain/repoImpls/cusinsights/transactioncunts.dart'
    as _i56;
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
    as _i57;
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
<<<<<<< HEAD
import 'package:customer_connect/feature/domain/repoImpls/specialpricerepo/specialpricerepo.dart'
=======
import 'package:customer_connect/feature/domain/repoImpls/targetrepo/targetrepo.dart'
>>>>>>> 2ea0970ad1403ce24e81a56a5a3592c1aa279d74
    as _i50;
import 'package:customer_connect/feature/domain/repoImpls/todaysdeliveryrepo/todaysdeliveryrepo.dart'
    as _i51;
import 'package:customer_connect/feature/domain/repoImpls/totalordersrepo/totalorderrepo.dart'
    as _i52;
import 'package:customer_connect/feature/domain/repoImpls/vantovanapprovalrepo/vantovanapprovalrepo.dart'
    as _i53;
import 'package:customer_connect/feature/domain/repoImpls/voidtransactionrepo/voidtransactionrepo.dart'
    as _i54;
import 'package:customer_connect/feature/state/bloc/approvalreasons/approval_reasons_bloc.dart'
<<<<<<< HEAD
    as _i136;
import 'package:customer_connect/feature/state/bloc/approvalscountsbloc/approval_counts_bloc.dart'
    as _i135;
import 'package:customer_connect/feature/state/bloc/approvepricechange/approve_price_change_bloc.dart'
    as _i137;
import 'package:customer_connect/feature/state/bloc/approvereturnprod/approve_return_product_bloc.dart'
    as _i138;
import 'package:customer_connect/feature/state/bloc/ardetails/ar_details_bloc.dart'
    as _i139;
import 'package:customer_connect/feature/state/bloc/arheader/ar_header_bloc.dart'
    as _i140;
import 'package:customer_connect/feature/state/bloc/asset_adding_approval_header/asset_add_in_approval_header_bloc.dart'
    as _i141;
import 'package:customer_connect/feature/state/bloc/assetaddapproval/asset_adding_approval_and_rject_bloc_bloc.dart'
    as _i142;
import 'package:customer_connect/feature/state/bloc/assetremovalapproval/asset_removal_apprval_bloc.dart'
    as _i143;
import 'package:customer_connect/feature/state/bloc/assetremovalheader/asset_removel_request_header_bloc.dart'
    as _i144;
import 'package:customer_connect/feature/state/bloc/chatusers/all_users_bloc.dart'
    as _i134;
import 'package:customer_connect/feature/state/bloc/creditnoteapproval/credit_note_approval_and_reject_bloc.dart'
    as _i145;
import 'package:customer_connect/feature/state/bloc/creditnotedetail/credit_note_detail_bloc.dart'
    as _i147;
import 'package:customer_connect/feature/state/bloc/creditnoteheader/credit_note_header_bloc.dart'
    as _i148;
import 'package:customer_connect/feature/state/bloc/cusdocuments/cus_documents_bloc.dart'
    as _i149;
import 'package:customer_connect/feature/state/bloc/cusgeolocation/cus_geo_location_bloc.dart'
    as _i150;
import 'package:customer_connect/feature/state/bloc/cusinsarheader/cus_ins_ar_header_bloc.dart'
    as _i151;
import 'package:customer_connect/feature/state/bloc/cusinsinv/cus_ins_invoice_header_bloc.dart'
    as _i152;
import 'package:customer_connect/feature/state/bloc/cusinstrnscount/cus_ins_trn_count_bloc.dart'
    as _i153;
import 'package:customer_connect/feature/state/bloc/cusinvdetail/cus_inv_detail_bloc_bloc.dart'
    as _i154;
import 'package:customer_connect/feature/state/bloc/cusitems/cus_items_bloc.dart'
    as _i155;
import 'package:customer_connect/feature/state/bloc/cusoutstanding/cus_out_standing_bloc.dart'
    as _i156;
import 'package:customer_connect/feature/state/bloc/cusprofile/cus_profile_bloc.dart'
    as _i157;
import 'package:customer_connect/feature/state/bloc/cuspromodetail/cus_promo_detail_bloc.dart'
    as _i158;
import 'package:customer_connect/feature/state/bloc/cuspromotionsheader/cus_promotions_header_bloc.dart'
    as _i159;
import 'package:customer_connect/feature/state/bloc/cussalesorders/cus_sales_orders_bloc.dart'
    as _i160;
import 'package:customer_connect/feature/state/bloc/cussppriceheader/cus_sp_price_bloc.dart'
    as _i161;
import 'package:customer_connect/feature/state/bloc/customer_transaction/customer_transaction_bloc.dart'
    as _i163;
import 'package:customer_connect/feature/state/bloc/customerinsightgroupbloc/customer_insight_group_bloc.dart'
    as _i162;
import 'package:customer_connect/feature/state/bloc/customers/customers_list_bloc_bloc.dart'
    as _i164;
import 'package:customer_connect/feature/state/bloc/disputeapproval/dispute_note_approval_and_reject_bloc.dart'
    as _i166;
import 'package:customer_connect/feature/state/bloc/disputenotedetail/dispute_note_detail_bloc.dart'
    as _i167;
import 'package:customer_connect/feature/state/bloc/disputenoteheader/dispute_note_header_bloc.dart'
    as _i168;
import 'package:customer_connect/feature/state/bloc/editcusprofile/edit_cus_profile_bloc.dart'
    as _i169;
import 'package:customer_connect/feature/state/bloc/field_service_detail/f_ield_service_detail_bloc.dart'
    as _i170;
import 'package:customer_connect/feature/state/bloc/field_service_header/field_service_header_bloc.dart'
    as _i171;
import 'package:customer_connect/feature/state/bloc/fieldserviceinvoiceapproval/field_service_invoice_approval_bloc.dart'
    as _i172;
import 'package:customer_connect/feature/state/bloc/getallroutes/get_all_route_bloc.dart'
    as _i173;
=======
    as _i143;
import 'package:customer_connect/feature/state/bloc/approvalscountsbloc/approval_counts_bloc.dart'
    as _i142;
import 'package:customer_connect/feature/state/bloc/approvepricechange/approve_price_change_bloc.dart'
    as _i144;
import 'package:customer_connect/feature/state/bloc/approvereturnprod/approve_return_product_bloc.dart'
    as _i145;
import 'package:customer_connect/feature/state/bloc/ardetails/ar_details_bloc.dart'
    as _i146;
import 'package:customer_connect/feature/state/bloc/arheader/ar_header_bloc.dart'
    as _i147;
import 'package:customer_connect/feature/state/bloc/asset_adding_approval_header/asset_add_in_approval_header_bloc.dart'
    as _i148;
import 'package:customer_connect/feature/state/bloc/assetaddapproval/asset_adding_approval_and_rject_bloc_bloc.dart'
    as _i149;
import 'package:customer_connect/feature/state/bloc/assetremovalapproval/asset_removal_apprval_bloc.dart'
    as _i150;
import 'package:customer_connect/feature/state/bloc/assetremovalheader/asset_removel_request_header_bloc.dart'
    as _i151;
import 'package:customer_connect/feature/state/bloc/chatusers/all_users_bloc.dart'
    as _i141;
import 'package:customer_connect/feature/state/bloc/creditnoteapproval/credit_note_approval_and_reject_bloc.dart'
    as _i152;
import 'package:customer_connect/feature/state/bloc/creditnotedetail/credit_note_detail_bloc.dart'
    as _i154;
import 'package:customer_connect/feature/state/bloc/creditnoteheader/credit_note_header_bloc.dart'
    as _i155;
import 'package:customer_connect/feature/state/bloc/cusdocuments/cus_documents_bloc.dart'
    as _i156;
import 'package:customer_connect/feature/state/bloc/cusgeolocation/cus_geo_location_bloc.dart'
    as _i157;
import 'package:customer_connect/feature/state/bloc/cusinsarheader/cus_ins_ar_header_bloc.dart'
    as _i158;
import 'package:customer_connect/feature/state/bloc/cusinsinv/cus_ins_invoice_header_bloc.dart'
    as _i159;
import 'package:customer_connect/feature/state/bloc/cusinstrnscount/cus_ins_trn_count_bloc.dart'
    as _i160;
import 'package:customer_connect/feature/state/bloc/cusinvdetail/cus_inv_detail_bloc_bloc.dart'
    as _i161;
import 'package:customer_connect/feature/state/bloc/cusitems/cus_items_bloc.dart'
    as _i162;
import 'package:customer_connect/feature/state/bloc/cusoutstanding/cus_out_standing_bloc.dart'
    as _i163;
import 'package:customer_connect/feature/state/bloc/cusprofile/cus_profile_bloc.dart'
    as _i164;
import 'package:customer_connect/feature/state/bloc/cuspromodetail/cus_promo_detail_bloc.dart'
    as _i165;
import 'package:customer_connect/feature/state/bloc/cuspromotionsheader/cus_promotions_header_bloc.dart'
    as _i166;
import 'package:customer_connect/feature/state/bloc/cussalesorders/cus_sales_orders_bloc.dart'
    as _i167;
import 'package:customer_connect/feature/state/bloc/cussppriceheader/cus_sp_price_bloc.dart'
    as _i168;
import 'package:customer_connect/feature/state/bloc/customer_transaction/customer_transaction_bloc.dart'
    as _i170;
import 'package:customer_connect/feature/state/bloc/customerinsightgroupbloc/customer_insight_group_bloc.dart'
    as _i169;
import 'package:customer_connect/feature/state/bloc/customers/customers_list_bloc_bloc.dart'
    as _i171;
import 'package:customer_connect/feature/state/bloc/disputeapproval/dispute_note_approval_and_reject_bloc.dart'
    as _i173;
import 'package:customer_connect/feature/state/bloc/disputenotedetail/dispute_note_detail_bloc.dart'
    as _i174;
import 'package:customer_connect/feature/state/bloc/disputenoteheader/dispute_note_header_bloc.dart'
    as _i175;
import 'package:customer_connect/feature/state/bloc/editcusprofile/edit_cus_profile_bloc.dart'
    as _i176;
import 'package:customer_connect/feature/state/bloc/field_service_detail/f_ield_service_detail_bloc.dart'
    as _i177;
import 'package:customer_connect/feature/state/bloc/field_service_header/field_service_header_bloc.dart'
    as _i178;
import 'package:customer_connect/feature/state/bloc/fieldserviceinvoiceapproval/field_service_invoice_approval_bloc.dart'
    as _i179;
import 'package:customer_connect/feature/state/bloc/getallroutes/get_all_route_bloc.dart'
    as _i180;
>>>>>>> 2ea0970ad1403ce24e81a56a5a3592c1aa279d74
import 'package:customer_connect/feature/state/bloc/inventoryreconfirmapproval/inventory_reconfirm_approval_bloc.dart'
    as _i58;
import 'package:customer_connect/feature/state/bloc/inventoryreconfirmdetail/inventory_reconfirm_detail_bloc.dart'
    as _i59;
import 'package:customer_connect/feature/state/bloc/inventoryreconfirmheader/inventory_reconfirm_header_bloc.dart'
    as _i60;
import 'package:customer_connect/feature/state/bloc/Invoice_details/invoice_details_bloc.dart'
    as _i62;
import 'package:customer_connect/feature/state/bloc/invoice_details_footer/invoice_details_footer_bloc.dart'
    as _i63;
import 'package:customer_connect/feature/state/bloc/invoice_header/invoice_header_bloc.dart'
    as _i64;
import 'package:customer_connect/feature/state/bloc/journeyplanapproval/jourey_plan_approval_bloc.dart'
    as _i65;
import 'package:customer_connect/feature/state/bloc/journeyplanheader/journey_plan_header_bloc.dart'
    as _i66;
import 'package:customer_connect/feature/state/bloc/loading/loading_detail_bloc.dart'
<<<<<<< HEAD
    as _i73;
import 'package:customer_connect/feature/state/bloc/loadingdetail/loading_detail_bloc.dart'
    as _i74;
=======
    as _i74;
import 'package:customer_connect/feature/state/bloc/loadingdetail/loading_detail_bloc.dart'
    as _i73;
>>>>>>> 2ea0970ad1403ce24e81a56a5a3592c1aa279d74
import 'package:customer_connect/feature/state/bloc/loadingheader/loading_header_bloc.dart'
    as _i75;
import 'package:customer_connect/feature/state/bloc/loadreqapproval/load_req_approval_bloc.dart'
    as _i67;
import 'package:customer_connect/feature/state/bloc/loadreqdetail/load_req_detail_bloc.dart'
    as _i68;
import 'package:customer_connect/feature/state/bloc/loadreqheader/load_req_header_bloc.dart'
    as _i69;
import 'package:customer_connect/feature/state/bloc/loadtransferapproval/load_transfer_approval_bloc.dart'
    as _i70;
import 'package:customer_connect/feature/state/bloc/loadtransferdetail/load_transfer_detail_bloc.dart'
    as _i71;
import 'package:customer_connect/feature/state/bloc/loadtransferheader/load_transfer_header_bloc.dart'
    as _i72;
import 'package:customer_connect/feature/state/bloc/login/user_login_bloc.dart'
<<<<<<< HEAD
    as _i127;
=======
    as _i134;
>>>>>>> 2ea0970ad1403ce24e81a56a5a3592c1aa279d74
import 'package:customer_connect/feature/state/bloc/materialreqapproval/material_req_approval_bloc.dart'
    as _i76;
import 'package:customer_connect/feature/state/bloc/materialreqdetail/material_req_detail_bloc.dart'
    as _i77;
import 'package:customer_connect/feature/state/bloc/materialreqhead/material_req_head_bloc.dart'
    as _i78;
import 'package:customer_connect/feature/state/bloc/materialreqrejection/material_req_rejection_bloc.dart'
    as _i79;
import 'package:customer_connect/feature/state/bloc/messages/messages_bloc.dart'
    as _i80;
import 'package:customer_connect/feature/state/bloc/mustsellapprove/must_sell_approve_bloc.dart'
    as _i81;
import 'package:customer_connect/feature/state/bloc/mustselldetail/must_sell_detail_bloc.dart'
    as _i82;
import 'package:customer_connect/feature/state/bloc/mustsellheader/must_sell_header_bloc.dart'
    as _i83;
import 'package:customer_connect/feature/state/bloc/notificationlisting/notification_listing_bloc.dart'
    as _i85;
import 'package:customer_connect/feature/state/bloc/notificationreplay/notification_replay_bloc_bloc.dart'
    as _i86;
import 'package:customer_connect/feature/state/bloc/notireadflagupdate/noti_read_flag_update_bloc.dart'
    as _i84;
<<<<<<< HEAD
import 'package:customer_connect/feature/state/bloc/outofstockcount/outofstockcount_bloc.dart'
    as _i87;
import 'package:customer_connect/feature/state/bloc/outstanding/outstanding_bloc.dart'
    as _i88;
import 'package:customer_connect/feature/state/bloc/partialdeliveryapproval/partial_delivery_approval_bloc.dart'
    as _i89;
import 'package:customer_connect/feature/state/bloc/partialdeliverydetail/partial_delivery_detail_bloc.dart'
    as _i90;
import 'package:customer_connect/feature/state/bloc/partialdeliverydetailsbloc/partial_delivery_details_bloc.dart'
    as _i91;
import 'package:customer_connect/feature/state/bloc/partialdeliveryheader/partial_delivery_header_bloc.dart'
    as _i92;
import 'package:customer_connect/feature/state/bloc/partialdeliveryreasons/partial_delivery_reason_bloc.dart'
    as _i93;
import 'package:customer_connect/feature/state/bloc/picking_and_loading_count/picking_and_loading_count_bloc.dart'
    as _i95;
import 'package:customer_connect/feature/state/bloc/picking_detail/pickingdetail_bloc.dart'
    as _i97;
import 'package:customer_connect/feature/state/bloc/picking_header/picking_header_bloc.dart'
    as _i96;
import 'package:customer_connect/feature/state/bloc/pricechangedetails/price_change_details_bloc.dart'
    as _i99;
import 'package:customer_connect/feature/state/bloc/pricechangeheader/price_change_header_bloc.dart'
    as _i100;
import 'package:customer_connect/feature/state/bloc/pricechangereasons/price_change_reasons_bloc.dart'
    as _i101;
import 'package:customer_connect/feature/state/bloc/promotion_customer/promotion_customer_bloc.dart'
    as _i102;
import 'package:customer_connect/feature/state/bloc/promotion_details/promotion_details_bloc.dart'
    as _i103;
import 'package:customer_connect/feature/state/bloc/promotion_header/promotion_header_bloc.dart'
    as _i104;
import 'package:customer_connect/feature/state/bloc/qualification_group/qualification_group_bloc.dart'
    as _i105;
=======
import 'package:customer_connect/feature/state/bloc/outstanding/outstanding_bloc.dart'
    as _i87;
import 'package:customer_connect/feature/state/bloc/partialdeliveryapproval/partial_delivery_approval_bloc.dart'
    as _i88;
import 'package:customer_connect/feature/state/bloc/partialdeliverydetail/partial_delivery_detail_bloc.dart'
    as _i89;
import 'package:customer_connect/feature/state/bloc/partialdeliverydetailsbloc/partial_delivery_details_bloc.dart'
    as _i90;
import 'package:customer_connect/feature/state/bloc/partialdeliveryheader/partial_delivery_header_bloc.dart'
    as _i91;
import 'package:customer_connect/feature/state/bloc/partialdeliveryreasons/partial_delivery_reason_bloc.dart'
    as _i92;
import 'package:customer_connect/feature/state/bloc/picking_and_loading_count/picking_and_loading_count_bloc.dart'
    as _i94;
import 'package:customer_connect/feature/state/bloc/picking_detail/pickingdetail_bloc.dart'
    as _i96;
import 'package:customer_connect/feature/state/bloc/picking_header/picking_header_bloc.dart'
    as _i95;
import 'package:customer_connect/feature/state/bloc/pricechangedetails/price_change_details_bloc.dart'
    as _i98;
import 'package:customer_connect/feature/state/bloc/pricechangeheader/price_change_header_bloc.dart'
    as _i99;
import 'package:customer_connect/feature/state/bloc/pricechangereasons/price_change_reasons_bloc.dart'
    as _i100;
import 'package:customer_connect/feature/state/bloc/promotion_customer/promotion_customer_bloc.dart'
    as _i101;
import 'package:customer_connect/feature/state/bloc/promotion_details/promotion_details_bloc.dart'
    as _i102;
import 'package:customer_connect/feature/state/bloc/promotion_header/promotion_header_bloc.dart'
    as _i103;
import 'package:customer_connect/feature/state/bloc/qualification_group/qualification_group_bloc.dart'
    as _i104;
>>>>>>> 2ea0970ad1403ce24e81a56a5a3592c1aa279d74
import 'package:customer_connect/feature/state/bloc/returnapproval/return_approval_header_bloc.dart'
    as _i107;
import 'package:customer_connect/feature/state/bloc/returnapprovaldetail/return_approval_detail_bloc.dart'
    as _i106;
import 'package:customer_connect/feature/state/bloc/sales_order_count/sales_order_count_bloc.dart'
    as _i109;
import 'package:customer_connect/feature/state/bloc/salesorderdetails/sales_order_details_bloc.dart'
    as _i110;
import 'package:customer_connect/feature/state/bloc/scheduledreturnapproval/schduled_return_approval_bloc.dart'
    as _i111;
import 'package:customer_connect/feature/state/bloc/scheduledreturnheader/schduled_return_header_bloc.dart'
    as _i112;
import 'package:customer_connect/feature/state/bloc/scheuledreturndetail/scheduled_return_details_bloc.dart'
    as _i113;
<<<<<<< HEAD
import 'package:customer_connect/feature/state/bloc/settlementapprovalheader/settlement_approval_header_bloc.dart'
    as _i114;
import 'package:customer_connect/feature/state/bloc/settlementapprovalpost/post_settlement_approval_bloc.dart'
    as _i98;
import 'package:customer_connect/feature/state/bloc/settlementapprovalreject/settlement_approval_reject_bloc.dart'
    as _i115;
import 'package:customer_connect/feature/state/bloc/settlementpaymentdetail/settlement_payment_detail_bloc.dart'
    as _i118;
import 'package:customer_connect/feature/state/bloc/settlementpaymodedetail/settlement_pay_mode_detail_bloc.dart'
    as _i117;
import 'package:customer_connect/feature/state/bloc/settlemetcashdetails/settlement_cash_details_bloc.dart'
    as _i116;
import 'package:customer_connect/feature/state/bloc/special_price_customers/special_price_customers_bloc.dart'
    as _i119;
import 'package:customer_connect/feature/state/bloc/special_price_header/special_price_header_bloc.dart'
    as _i121;
import 'package:customer_connect/feature/state/bloc/specialpricedetails/special_price_details_bloc.dart'
    as _i120;
import 'package:customer_connect/feature/state/bloc/todays_delivery/todays_delivery_header_bloc.dart'
    as _i123;
import 'package:customer_connect/feature/state/bloc/todays_delivery_details/todays_delivery_details_bloc.dart'
    as _i122;
import 'package:customer_connect/feature/state/bloc/total_orders_details/total_orders_details_bloc.dart'
    as _i124;
import 'package:customer_connect/feature/state/bloc/total_orders_header/total_orders_header_bloc.dart'
    as _i125;
import 'package:customer_connect/feature/state/bloc/vantovanapproval/van_to_van_approval_bloc.dart'
    as _i128;
import 'package:customer_connect/feature/state/bloc/vantovandetails/van_to_van_details_bloc.dart'
    as _i129;
import 'package:customer_connect/feature/state/bloc/vantovanheader/van_to_van_header_bloc.dart'
    as _i130;
import 'package:customer_connect/feature/state/bloc/voidtransactionapproval/void_transaction_approval_bloc.dart'
    as _i131;
import 'package:customer_connect/feature/state/bloc/voidtransactionheader/void_transaction_header_bloc.dart'
    as _i132;
import 'package:customer_connect/feature/state/bloc/voidtransactionrejection/void_transaction_rejection_bloc.dart'
    as _i133;
import 'package:customer_connect/feature/state/cubit/creditnoteapprovallevel/credit_note_approval_level_status_cubit.dart'
    as _i146;
import 'package:customer_connect/feature/state/cubit/disputeapprovalsatuslevel/dispute_approval_status_level_cubit_cubit.dart'
    as _i165;
import 'package:customer_connect/feature/state/cubit/inventoryreconfirmreasons/inventory_reconfirm_reasons_cubit.dart'
    as _i61;
import 'package:customer_connect/feature/state/cubit/partialdeliveryreason/partial_delivery_reason_cubit.dart'
    as _i94;
import 'package:customer_connect/feature/state/cubit/routeforsc/route_for_sc_cubit.dart'
    as _i108;
import 'package:customer_connect/feature/state/cubit/updategeolocation/update_geo_location_cubit.dart'
    as _i126;
=======
import 'package:customer_connect/feature/state/bloc/settlementapprovalheader/bloc/settlement_approval_header_bloc.dart'
    as _i114;
import 'package:customer_connect/feature/state/bloc/settlementapprovalheader/settlement_approval_header_bloc.dart'
    as _i115;
import 'package:customer_connect/feature/state/bloc/settlementapprovalpost/post_settlement_approval_bloc.dart'
    as _i97;
import 'package:customer_connect/feature/state/bloc/settlementapprovalreject/settlement_approval_reject_bloc.dart'
    as _i116;
import 'package:customer_connect/feature/state/bloc/settlementpaymentdetail/settlement_payment_detail_bloc.dart'
    as _i119;
import 'package:customer_connect/feature/state/bloc/settlementpaymodedetail/settlement_pay_mode_detail_bloc.dart'
    as _i118;
import 'package:customer_connect/feature/state/bloc/settlemetcashdetails/settlement_cash_details_bloc.dart'
    as _i117;
import 'package:customer_connect/feature/state/bloc/special_price_customers/special_price_customers_bloc.dart'
    as _i120;
import 'package:customer_connect/feature/state/bloc/special_price_header/special_price_header_bloc.dart'
    as _i122;
import 'package:customer_connect/feature/state/bloc/specialpricedetails/special_price_details_bloc.dart'
    as _i121;
import 'package:customer_connect/feature/state/bloc/targetdetailcount/target_details_count_bloc.dart'
    as _i124;
import 'package:customer_connect/feature/state/bloc/targetdetailsgraphamt/target_details_graph_amt_bloc.dart'
    as _i125;
import 'package:customer_connect/feature/state/bloc/targetdetailsgraphqty/rarget_details_graph_qty_bloc.dart'
    as _i105;
import 'package:customer_connect/feature/state/bloc/targetdetailslist/target_details_list_bloc.dart'
    as _i126;
import 'package:customer_connect/feature/state/bloc/targetheadercount/target_header_count_bloc.dart'
    as _i127;
import 'package:customer_connect/feature/state/bloc/targetheaderlist/targer_header_list_bloc.dart'
    as _i123;
import 'package:customer_connect/feature/state/bloc/targetpackagelist/target_package_list_bloc.dart'
    as _i128;
import 'package:customer_connect/feature/state/bloc/todays_delivery/todays_delivery_header_bloc.dart'
    as _i130;
import 'package:customer_connect/feature/state/bloc/todays_delivery_details/todays_delivery_details_bloc.dart'
    as _i129;
import 'package:customer_connect/feature/state/bloc/total_orders_details/total_orders_details_bloc.dart'
    as _i131;
import 'package:customer_connect/feature/state/bloc/total_orders_header/total_orders_header_bloc.dart'
    as _i132;
import 'package:customer_connect/feature/state/bloc/vantovanapproval/van_to_van_approval_bloc.dart'
    as _i135;
import 'package:customer_connect/feature/state/bloc/vantovandetails/van_to_van_details_bloc.dart'
    as _i136;
import 'package:customer_connect/feature/state/bloc/vantovanheader/van_to_van_header_bloc.dart'
    as _i137;
import 'package:customer_connect/feature/state/bloc/voidtransactionapproval/void_transaction_approval_bloc.dart'
    as _i138;
import 'package:customer_connect/feature/state/bloc/voidtransactionheader/void_transaction_header_bloc.dart'
    as _i139;
import 'package:customer_connect/feature/state/bloc/voidtransactionrejection/void_transaction_rejection_bloc.dart'
    as _i140;
import 'package:customer_connect/feature/state/cubit/creditnoteapprovallevel/credit_note_approval_level_status_cubit.dart'
    as _i153;
import 'package:customer_connect/feature/state/cubit/disputeapprovalsatuslevel/dispute_approval_status_level_cubit_cubit.dart'
    as _i172;
import 'package:customer_connect/feature/state/cubit/inventoryreconfirmreasons/inventory_reconfirm_reasons_cubit.dart'
    as _i61;
import 'package:customer_connect/feature/state/cubit/partialdeliveryreason/partial_delivery_reason_cubit.dart'
    as _i93;
import 'package:customer_connect/feature/state/cubit/routeforsc/route_for_sc_cubit.dart'
    as _i108;
import 'package:customer_connect/feature/state/cubit/updategeolocation/update_geo_location_cubit.dart'
    as _i133;
>>>>>>> 2ea0970ad1403ce24e81a56a5a3592c1aa279d74
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
<<<<<<< HEAD
        () => _i49.SettlementApproval());
    gh.lazySingleton<_i3.ISpecialPriceRepo>(() => _i50.SpecialPriceRepo());
=======
        () => _i48.SettlementApproval());
    gh.lazySingleton<_i3.ISpecialPriceRepo>(() => _i49.SpecialPriceRepo());
    gh.lazySingleton<_i3.ITargetRepo>(() => _i50.TargetHeaderCountRepo());
>>>>>>> 2ea0970ad1403ce24e81a56a5a3592c1aa279d74
    gh.lazySingleton<_i3.ITodaysDeliveryRepo>(() => _i51.TodaysDelivery());
    gh.lazySingleton<_i3.ITotalOrdersRepo>(() => _i52.TotalOrderRepo());
    gh.lazySingleton<_i3.IVanToVanApprovalRepo>(
        () => _i53.VanToVanApprovalRepo());
    gh.lazySingleton<_i3.IVoidTransactionRepo>(
        () => _i54.VoidTransactionHeaderRepo());
    gh.lazySingleton<_i3.IcusDocumentsModel>(() => _i55.CusDocumentsRepo());
    gh.lazySingleton<_i3.IcusInsCountsRepo>(() => _i56.CusTrnCOuntsRepo());
    gh.lazySingleton<_i3.IinvetoryReconfirmationApprovalRepo>(
        () => _i57.InventoryReconfirmationRepo());
    gh.factory<_i58.InventoryReconfirmApprovalBloc>(() =>
        _i58.InventoryReconfirmApprovalBloc(
            gh<_i3.IinvetoryReconfirmationApprovalRepo>()));
    gh.factory<_i59.InventoryReconfirmDetailBloc>(() =>
        _i59.InventoryReconfirmDetailBloc(
            gh<_i3.IinvetoryReconfirmationApprovalRepo>()));
    gh.factory<_i60.InventoryReconfirmHeaderBloc>(() =>
        _i60.InventoryReconfirmHeaderBloc(
            gh<_i3.IinvetoryReconfirmationApprovalRepo>()));
    gh.factory<_i61.InventoryReconfirmReasonsCubit>(() =>
        _i61.InventoryReconfirmReasonsCubit(
            gh<_i3.IinvetoryReconfirmationApprovalRepo>()));
    gh.factory<_i62.InvoiceDetailsBloc>(
        () => _i62.InvoiceDetailsBloc(gh<_i3.IInvoiceRepo>()));
    gh.factory<_i63.InvoiceDetailsFooterBloc>(
        () => _i63.InvoiceDetailsFooterBloc(gh<_i3.IInvoiceRepo>()));
    gh.factory<_i64.InvoiceHeaderBloc>(
        () => _i64.InvoiceHeaderBloc(gh<_i3.IInvoiceRepo>()));
    gh.factory<_i65.JoureyPlanApprovalBloc>(
        () => _i65.JoureyPlanApprovalBloc(gh<_i3.IJourneyPlanApprovalRepo>()));
    gh.factory<_i66.JourneyPlanHeaderBloc>(
        () => _i66.JourneyPlanHeaderBloc(gh<_i3.IJourneyPlanApprovalRepo>()));
    gh.factory<_i67.LoadReqApprovalBloc>(
        () => _i67.LoadReqApprovalBloc(gh<_i3.ILoadRequestApprovalRepo>()));
    gh.factory<_i68.LoadReqDetailBloc>(
        () => _i68.LoadReqDetailBloc(gh<_i3.ILoadRequestHeaderRepo>()));
    gh.factory<_i69.LoadReqHeaderBloc>(
        () => _i69.LoadReqHeaderBloc(gh<_i3.ILoadRequestHeaderRepo>()));
    gh.factory<_i70.LoadTransferApprovalBloc>(() =>
        _i70.LoadTransferApprovalBloc(gh<_i3.ILoadTransferApprovalRepo>()));
    gh.factory<_i71.LoadTransferDetailBloc>(
        () => _i71.LoadTransferDetailBloc(gh<_i3.ILoadTransferApprovalRepo>()));
    gh.factory<_i72.LoadTransferHeaderBloc>(
        () => _i72.LoadTransferHeaderBloc(gh<_i3.ILoadTransferApprovalRepo>()));
    gh.factory<_i73.LoadingDetailBloc>(
        () => _i73.LoadingDetailBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i74.LoadingDetailBloc>(
        () => _i74.LoadingDetailBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i75.LoadingHeaderBloc>(
        () => _i75.LoadingHeaderBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i76.MaterialReqApprovalBloc>(
        () => _i76.MaterialReqApprovalBloc(gh<_i3.IMaterialReqHeaderRepo>()));
    gh.factory<_i77.MaterialReqDetailBloc>(
        () => _i77.MaterialReqDetailBloc(gh<_i3.IMaterialReqHeaderRepo>()));
    gh.factory<_i78.MaterialReqHeadBloc>(
        () => _i78.MaterialReqHeadBloc(gh<_i3.IMaterialReqHeaderRepo>()));
    gh.factory<_i79.MaterialReqRejectionBloc>(
        () => _i79.MaterialReqRejectionBloc(gh<_i3.IMaterialReqHeaderRepo>()));
    gh.factory<_i80.MessagesBloc>(
        () => _i80.MessagesBloc(gh<_i8.IMessageRepo>()));
    gh.factory<_i81.MustSellApproveBloc>(
        () => _i81.MustSellApproveBloc(gh<_i3.IMustSellRepo>()));
    gh.factory<_i82.MustSellDetailBloc>(
        () => _i82.MustSellDetailBloc(gh<_i3.IMustSellRepo>()));
    gh.factory<_i83.MustSellHeaderBloc>(
        () => _i83.MustSellHeaderBloc(gh<_i3.IMustSellRepo>()));
    gh.factory<_i84.NotiReadFlagUpdateBloc>(
        () => _i84.NotiReadFlagUpdateBloc(gh<_i3.INotificationRepo>()));
    gh.factory<_i85.NotificationListingBloc>(
        () => _i85.NotificationListingBloc(gh<_i3.INotificationRepo>()));
    gh.factory<_i86.NotificationReplayBlocBloc>(
        () => _i86.NotificationReplayBlocBloc(gh<_i3.INotificationRepo>()));
<<<<<<< HEAD
    gh.factory<_i87.OutofstockcountBloc>(
        () => _i87.OutofstockcountBloc(gh<_i3.IMerchandisingDashBoardRepo>()));
    gh.factory<_i88.OutstandingBloc>(
        () => _i88.OutstandingBloc(gh<_i3.IOutStandingHeaderRepo>()));
    gh.factory<_i89.PartialDeliveryApprovalBloc>(
        () => _i89.PartialDeliveryApprovalBloc(gh<_i3.IPartialDeliveryRepo>()));
    gh.factory<_i90.PartialDeliveryDetailBloc>(
        () => _i90.PartialDeliveryDetailBloc(gh<_i3.IPartialDeliveryRepo>()));
    gh.factory<_i91.PartialDeliveryDetailsBloc>(
        () => _i91.PartialDeliveryDetailsBloc(gh<_i3.IPartialDeliveryRepo>()));
    gh.factory<_i92.PartialDeliveryHeaderBloc>(
        () => _i92.PartialDeliveryHeaderBloc(gh<_i3.IPartialDeliveryRepo>()));
    gh.factory<_i93.PartialDeliveryReasonBloc>(
        () => _i93.PartialDeliveryReasonBloc(gh<_i3.IPartialDeliveryRepo>()));
    gh.factory<_i94.PartialDeliveryReasonCubit>(
        () => _i94.PartialDeliveryReasonCubit(gh<_i3.IPartialDeliveryRepo>()));
    gh.factory<_i95.PickingAndLoadingCountBloc>(() =>
        _i95.PickingAndLoadingCountBloc(gh<_i3.IPickingAndLoadinCountRepo>()));
    gh.factory<_i96.PickingHeaderBloc>(
        () => _i96.PickingHeaderBloc(gh<_i3.IPickingHeaderRepo>()));
    gh.factory<_i97.PickingdetailBloc>(
        () => _i97.PickingdetailBloc(gh<_i3.IPickingHeaderRepo>()));
    gh.factory<_i98.PostSettlementApprovalBloc>(() =>
        _i98.PostSettlementApprovalBloc(
            gh<_i3.ISettlementApprovalHeaderRepo>()));
    gh.factory<_i99.PriceChangeDetailsBloc>(
        () => _i99.PriceChangeDetailsBloc(gh<_i3.IPriceChangeRepo>()));
    gh.factory<_i100.PriceChangeHeaderBloc>(
        () => _i100.PriceChangeHeaderBloc(gh<_i3.IPriceChangeRepo>()));
    gh.factory<_i101.PriceChangeReasonsBloc>(
        () => _i101.PriceChangeReasonsBloc(gh<_i3.IPriceChangeRepo>()));
    gh.factory<_i102.PromotionCustomerBloc>(
        () => _i102.PromotionCustomerBloc(gh<_i3.IPromotionHeaderRepo>()));
    gh.factory<_i103.PromotionDetailsBloc>(
        () => _i103.PromotionDetailsBloc(gh<_i3.IPromotionHeaderRepo>()));
    gh.factory<_i104.PromotionHeaderBloc>(
        () => _i104.PromotionHeaderBloc(gh<_i3.IPromotionHeaderRepo>()));
    gh.factory<_i105.QualificationGroupBloc>(
        () => _i105.QualificationGroupBloc(gh<_i3.IQualificationGroupRepo>()));
=======
    gh.factory<_i87.OutstandingBloc>(
        () => _i87.OutstandingBloc(gh<_i3.IOutStandingHeaderRepo>()));
    gh.factory<_i88.PartialDeliveryApprovalBloc>(
        () => _i88.PartialDeliveryApprovalBloc(gh<_i3.IPartialDeliveryRepo>()));
    gh.factory<_i89.PartialDeliveryDetailBloc>(
        () => _i89.PartialDeliveryDetailBloc(gh<_i3.IPartialDeliveryRepo>()));
    gh.factory<_i90.PartialDeliveryDetailsBloc>(
        () => _i90.PartialDeliveryDetailsBloc(gh<_i3.IPartialDeliveryRepo>()));
    gh.factory<_i91.PartialDeliveryHeaderBloc>(
        () => _i91.PartialDeliveryHeaderBloc(gh<_i3.IPartialDeliveryRepo>()));
    gh.factory<_i92.PartialDeliveryReasonBloc>(
        () => _i92.PartialDeliveryReasonBloc(gh<_i3.IPartialDeliveryRepo>()));
    gh.factory<_i93.PartialDeliveryReasonCubit>(
        () => _i93.PartialDeliveryReasonCubit(gh<_i3.IPartialDeliveryRepo>()));
    gh.factory<_i94.PickingAndLoadingCountBloc>(() =>
        _i94.PickingAndLoadingCountBloc(gh<_i3.IPickingAndLoadinCountRepo>()));
    gh.factory<_i95.PickingHeaderBloc>(
        () => _i95.PickingHeaderBloc(gh<_i3.IPickingHeaderRepo>()));
    gh.factory<_i96.PickingdetailBloc>(
        () => _i96.PickingdetailBloc(gh<_i3.IPickingHeaderRepo>()));
    gh.factory<_i97.PostSettlementApprovalBloc>(() =>
        _i97.PostSettlementApprovalBloc(
            gh<_i3.ISettlementApprovalHeaderRepo>()));
    gh.factory<_i98.PriceChangeDetailsBloc>(
        () => _i98.PriceChangeDetailsBloc(gh<_i3.IPriceChangeRepo>()));
    gh.factory<_i99.PriceChangeHeaderBloc>(
        () => _i99.PriceChangeHeaderBloc(gh<_i3.IPriceChangeRepo>()));
    gh.factory<_i100.PriceChangeReasonsBloc>(
        () => _i100.PriceChangeReasonsBloc(gh<_i3.IPriceChangeRepo>()));
    gh.factory<_i101.PromotionCustomerBloc>(
        () => _i101.PromotionCustomerBloc(gh<_i3.IPromotionHeaderRepo>()));
    gh.factory<_i102.PromotionDetailsBloc>(
        () => _i102.PromotionDetailsBloc(gh<_i3.IPromotionHeaderRepo>()));
    gh.factory<_i103.PromotionHeaderBloc>(
        () => _i103.PromotionHeaderBloc(gh<_i3.IPromotionHeaderRepo>()));
    gh.factory<_i104.QualificationGroupBloc>(
        () => _i104.QualificationGroupBloc(gh<_i3.IQualificationGroupRepo>()));
    gh.factory<_i105.RargetDetailsGraphQtyBloc>(
        () => _i105.RargetDetailsGraphQtyBloc(gh<_i3.ITargetRepo>()));
>>>>>>> 2ea0970ad1403ce24e81a56a5a3592c1aa279d74
    gh.factory<_i106.ReturnApprovalDetailBloc>(
        () => _i106.ReturnApprovalDetailBloc(gh<_i3.IReturnApprovalRepo>()));
    gh.factory<_i107.ReturnApprovalHeaderBloc>(
        () => _i107.ReturnApprovalHeaderBloc(gh<_i3.IReturnApprovalRepo>()));
    gh.factory<_i108.RouteForScCubit>(
        () => _i108.RouteForScCubit(gh<_i3.IScheduledReturnApprovalRepo>()));
    gh.factory<_i109.SalesOrderCountBloc>(
        () => _i109.SalesOrderCountBloc(gh<_i3.ISalesOrderRepo>()));
    gh.factory<_i110.SalesOrderDetailsBloc>(
        () => _i110.SalesOrderDetailsBloc(gh<_i3.ISalesOrdersRepo>()));
    gh.factory<_i111.SchduledReturnApprovalBloc>(() =>
        _i111.SchduledReturnApprovalBloc(
            gh<_i3.IScheduledReturnApprovalRepo>()));
    gh.factory<_i112.SchduledReturnHeaderBloc>(() =>
        _i112.SchduledReturnHeaderBloc(gh<_i3.IScheduledReturnApprovalRepo>()));
    gh.factory<_i113.ScheduledReturnDetailsBloc>(() =>
        _i113.ScheduledReturnDetailsBloc(
            gh<_i3.IScheduledReturnApprovalRepo>()));
    gh.factory<_i114.SettlementApprovalHeaderBloc>(() =>
        _i114.SettlementApprovalHeaderBloc(
<<<<<<< HEAD
            gh<_i3.ISettlementApprovalHeaderRepo>()));
    gh.factory<_i115.SettlementApprovalRejectBloc>(() =>
        _i115.SettlementApprovalRejectBloc(
            gh<_i3.ISettlementApprovalHeaderRepo>()));
    gh.factory<_i116.SettlementCashDetailsBloc>(() =>
        _i116.SettlementCashDetailsBloc(
            gh<_i3.ISettlementApprovalHeaderRepo>()));
    gh.factory<_i117.SettlementPayModeDetailBloc>(() =>
        _i117.SettlementPayModeDetailBloc(
            gh<_i3.ISettlementApprovalHeaderRepo>()));
    gh.factory<_i118.SettlementPaymentDetailBloc>(() =>
        _i118.SettlementPaymentDetailBloc(
            gh<_i3.ISettlementApprovalHeaderRepo>()));
    gh.factory<_i119.SpecialPriceCustomersBloc>(
        () => _i119.SpecialPriceCustomersBloc(gh<_i3.ISpecialPriceRepo>()));
    gh.factory<_i120.SpecialPriceDetailsBloc>(
        () => _i120.SpecialPriceDetailsBloc(gh<_i3.ISpecialPriceRepo>()));
    gh.factory<_i121.SpecialPriceHeaderBloc>(
        () => _i121.SpecialPriceHeaderBloc(gh<_i3.ISpecialPriceRepo>()));
    gh.factory<_i122.TodaysDeliveryDetailsBloc>(
        () => _i122.TodaysDeliveryDetailsBloc(gh<_i3.ITodaysDeliveryRepo>()));
    gh.factory<_i123.TodaysDeliveryHeaderBloc>(
        () => _i123.TodaysDeliveryHeaderBloc(gh<_i3.ITodaysDeliveryRepo>()));
    gh.factory<_i124.TotalOrdersDetailsBloc>(
        () => _i124.TotalOrdersDetailsBloc(gh<_i3.ITotalOrdersRepo>()));
    gh.factory<_i125.TotalOrdersHeaderBloc>(
        () => _i125.TotalOrdersHeaderBloc(gh<_i3.ITotalOrdersRepo>()));
    gh.factory<_i126.UpdateGeoLocationCubit>(
        () => _i126.UpdateGeoLocationCubit(gh<_i3.ICusGeoLocationRepo>()));
    gh.factory<_i127.UserLoginBloc>(
        () => _i127.UserLoginBloc(gh<_i3.ILoginRepo>()));
    gh.factory<_i128.VanToVanApprovalBloc>(
        () => _i128.VanToVanApprovalBloc(gh<_i3.IVanToVanApprovalRepo>()));
    gh.factory<_i129.VanToVanDetailsBloc>(
        () => _i129.VanToVanDetailsBloc(gh<_i3.IVanToVanApprovalRepo>()));
    gh.factory<_i130.VanToVanHeaderBloc>(
        () => _i130.VanToVanHeaderBloc(gh<_i3.IVanToVanApprovalRepo>()));
    gh.factory<_i131.VoidTransactionApprovalBloc>(() =>
        _i131.VoidTransactionApprovalBloc(gh<_i3.IVoidTransactionRepo>()));
    gh.factory<_i132.VoidTransactionHeaderBloc>(
        () => _i132.VoidTransactionHeaderBloc(gh<_i3.IVoidTransactionRepo>()));
    gh.factory<_i133.VoidTransactionRejectionBloc>(() =>
        _i133.VoidTransactionRejectionBloc(gh<_i3.IVoidTransactionRepo>()));
    gh.factory<_i134.AllUsersBloc>(
        () => _i134.AllUsersBloc(gh<_i8.IChatUserRepo>()));
    gh.factory<_i135.ApprovalCountsBloc>(
        () => _i135.ApprovalCountsBloc(gh<_i3.IApprovalCountsRepo>()));
    gh.factory<_i136.ApprovalReasonsBloc>(
        () => _i136.ApprovalReasonsBloc(gh<_i3.IReturnApprovalRepo>()));
    gh.factory<_i137.ApprovePriceChangeBloc>(
        () => _i137.ApprovePriceChangeBloc(gh<_i3.IPriceChangeRepo>()));
    gh.factory<_i138.ApproveReturnProductBloc>(
        () => _i138.ApproveReturnProductBloc(gh<_i3.IReturnApprovalRepo>()));
    gh.factory<_i139.ArDetailsBloc>(
        () => _i139.ArDetailsBloc(gh<_i3.IArCollectionRepo>()));
    gh.factory<_i140.ArHeaderBloc>(
        () => _i140.ArHeaderBloc(gh<_i3.IArCollectionRepo>()));
    gh.factory<_i141.AssetAddInApprovalHeaderBloc>(() =>
        _i141.AssetAddInApprovalHeaderBloc(gh<_i3.IAssetAddApprovalRepo>()));
    gh.factory<_i142.AssetAddingApprovalAndRjectBlocBloc>(() =>
        _i142.AssetAddingApprovalAndRjectBlocBloc(
            gh<_i3.IAssetAddApprovalRepo>()));
    gh.factory<_i143.AssetRemovalApprvalBloc>(() =>
        _i143.AssetRemovalApprvalBloc(gh<_i3.IAssetRemovalRequestRepo>()));
    gh.factory<_i144.AssetRemovelRequestHeaderBloc>(() =>
        _i144.AssetRemovelRequestHeaderBloc(
            gh<_i3.IAssetRemovalRequestRepo>()));
    gh.factory<_i145.CreditNoteApprovalAndRejectBloc>(() =>
        _i145.CreditNoteApprovalAndRejectBloc(
            gh<_i3.ICreditNoteApprovalRepo>()));
    gh.factory<_i146.CreditNoteApprovalLevelStatusCubit>(() =>
        _i146.CreditNoteApprovalLevelStatusCubit(
            gh<_i3.ICreditNoteApprovalRepo>()));
    gh.factory<_i147.CreditNoteDetailBloc>(
        () => _i147.CreditNoteDetailBloc(gh<_i3.ICreditNoteApprovalRepo>()));
    gh.factory<_i148.CreditNoteHeaderBloc>(
        () => _i148.CreditNoteHeaderBloc(gh<_i3.ICreditNoteApprovalRepo>()));
    gh.factory<_i149.CusDocumentsBloc>(
        () => _i149.CusDocumentsBloc(gh<_i3.IcusDocumentsModel>()));
    gh.factory<_i150.CusGeoLocationBloc>(
        () => _i150.CusGeoLocationBloc(gh<_i3.ICusGeoLocationRepo>()));
    gh.factory<_i151.CusInsArHeaderBloc>(
        () => _i151.CusInsArHeaderBloc(gh<_i3.ICusInsArRepo>()));
    gh.factory<_i152.CusInsInvoiceHeaderBloc>(
        () => _i152.CusInsInvoiceHeaderBloc(gh<_i3.ICusInsInvoiceRepo>()));
    gh.factory<_i153.CusInsTrnCountBloc>(
        () => _i153.CusInsTrnCountBloc(gh<_i3.IcusInsCountsRepo>()));
    gh.factory<_i154.CusInvDetailBlocBloc>(
        () => _i154.CusInvDetailBlocBloc(gh<_i3.ICusInsInvoiceRepo>()));
    gh.factory<_i155.CusItemsBloc>(
        () => _i155.CusItemsBloc(gh<_i3.ICusItemsRepo>()));
    gh.factory<_i156.CusOutStandingBloc>(
        () => _i156.CusOutStandingBloc(gh<_i3.ICusOutstandingRepo>()));
    gh.factory<_i157.CusProfileBloc>(
        () => _i157.CusProfileBloc(gh<_i3.ICusProfileRepo>()));
    gh.factory<_i158.CusPromoDetailBloc>(
        () => _i158.CusPromoDetailBloc(gh<_i3.ICusProtionRepo>()));
    gh.factory<_i159.CusPromotionsHeaderBloc>(
        () => _i159.CusPromotionsHeaderBloc(gh<_i3.ICusProtionRepo>()));
    gh.factory<_i160.CusSalesOrdersBloc>(
        () => _i160.CusSalesOrdersBloc(gh<_i3.ISalesOrdersRepo>()));
    gh.factory<_i161.CusSpPriceBloc>(
        () => _i161.CusSpPriceBloc(gh<_i3.ICusSpPriceRepo>()));
    gh.factory<_i162.CustomerInsightGroupBloc>(
        () => _i162.CustomerInsightGroupBloc(gh<_i3.ICusInsightGroupRepo>()));
    gh.factory<_i163.CustomerTransactionBloc>(() =>
        _i163.CustomerTransactionBloc(gh<_i3.ICustomerTransactionRepo>()));
    gh.factory<_i164.CustomersListBlocBloc>(
        () => _i164.CustomersListBlocBloc(gh<_i3.ICusInsightsCustomersRepo>()));
    gh.factory<_i165.DisputeApprovalStatusLevelCubitCubit>(() =>
        _i165.DisputeApprovalStatusLevelCubitCubit(
            gh<_i3.IDisputeNoteApprovalRepo>()));
    gh.factory<_i166.DisputeNoteApprovalAndRejectBloc>(() =>
        _i166.DisputeNoteApprovalAndRejectBloc(
            gh<_i3.IDisputeNoteApprovalRepo>()));
    gh.factory<_i167.DisputeNoteDetailBloc>(
        () => _i167.DisputeNoteDetailBloc(gh<_i3.IDisputeNoteApprovalRepo>()));
    gh.factory<_i168.DisputeNoteHeaderBloc>(
        () => _i168.DisputeNoteHeaderBloc(gh<_i3.IDisputeNoteApprovalRepo>()));
    gh.factory<_i169.EditCusProfileBloc>(
        () => _i169.EditCusProfileBloc(gh<_i3.IProfileEditRepo>()));
    gh.factory<_i170.FIeldServiceDetailBloc>(() => _i170.FIeldServiceDetailBloc(
        gh<_i3.IFieldServiceInvoiceApprovalRepo>()));
    gh.factory<_i171.FieldServiceHeaderBloc>(() => _i171.FieldServiceHeaderBloc(
        gh<_i3.IFieldServiceInvoiceApprovalRepo>()));
    gh.factory<_i172.FieldServiceInvoiceApprovalBloc>(() =>
        _i172.FieldServiceInvoiceApprovalBloc(
            gh<_i3.IFieldServiceInvoiceApprovalRepo>()));
    gh.factory<_i173.GetAllRouteBloc>(
        () => _i173.GetAllRouteBloc(gh<_i3.IGetAllAvailableRoutesRepo>()));
=======
            gh<_i3.ISettlementApprovalHeaderRepo>()));
    gh.factory<_i115.SettlementApprovalHeaderBloc>(() =>
        _i115.SettlementApprovalHeaderBloc(
            gh<_i3.ISettlementApprovalHeaderRepo>()));
    gh.factory<_i116.SettlementApprovalRejectBloc>(() =>
        _i116.SettlementApprovalRejectBloc(
            gh<_i3.ISettlementApprovalHeaderRepo>()));
    gh.factory<_i117.SettlementCashDetailsBloc>(() =>
        _i117.SettlementCashDetailsBloc(
            gh<_i3.ISettlementApprovalHeaderRepo>()));
    gh.factory<_i118.SettlementPayModeDetailBloc>(() =>
        _i118.SettlementPayModeDetailBloc(
            gh<_i3.ISettlementApprovalHeaderRepo>()));
    gh.factory<_i119.SettlementPaymentDetailBloc>(() =>
        _i119.SettlementPaymentDetailBloc(
            gh<_i3.ISettlementApprovalHeaderRepo>()));
    gh.factory<_i120.SpecialPriceCustomersBloc>(
        () => _i120.SpecialPriceCustomersBloc(gh<_i3.ISpecialPriceRepo>()));
    gh.factory<_i121.SpecialPriceDetailsBloc>(
        () => _i121.SpecialPriceDetailsBloc(gh<_i3.ISpecialPriceRepo>()));
    gh.factory<_i122.SpecialPriceHeaderBloc>(
        () => _i122.SpecialPriceHeaderBloc(gh<_i3.ISpecialPriceRepo>()));
    gh.factory<_i123.TargerHeaderListBloc>(
        () => _i123.TargerHeaderListBloc(gh<_i3.ITargetRepo>()));
    gh.factory<_i124.TargetDetailsCountBloc>(
        () => _i124.TargetDetailsCountBloc(gh<_i3.ITargetRepo>()));
    gh.factory<_i125.TargetDetailsGraphAmtBloc>(
        () => _i125.TargetDetailsGraphAmtBloc(gh<_i3.ITargetRepo>()));
    gh.factory<_i126.TargetDetailsListBloc>(
        () => _i126.TargetDetailsListBloc(gh<_i3.ITargetRepo>()));
    gh.factory<_i127.TargetHeaderCountBloc>(
        () => _i127.TargetHeaderCountBloc(gh<_i3.ITargetRepo>()));
    gh.factory<_i128.TargetPackageListBloc>(
        () => _i128.TargetPackageListBloc(gh<_i3.ITargetRepo>()));
    gh.factory<_i129.TodaysDeliveryDetailsBloc>(
        () => _i129.TodaysDeliveryDetailsBloc(gh<_i3.ITodaysDeliveryRepo>()));
    gh.factory<_i130.TodaysDeliveryHeaderBloc>(
        () => _i130.TodaysDeliveryHeaderBloc(gh<_i3.ITodaysDeliveryRepo>()));
    gh.factory<_i131.TotalOrdersDetailsBloc>(
        () => _i131.TotalOrdersDetailsBloc(gh<_i3.ITotalOrdersRepo>()));
    gh.factory<_i132.TotalOrdersHeaderBloc>(
        () => _i132.TotalOrdersHeaderBloc(gh<_i3.ITotalOrdersRepo>()));
    gh.factory<_i133.UpdateGeoLocationCubit>(
        () => _i133.UpdateGeoLocationCubit(gh<_i3.ICusGeoLocationRepo>()));
    gh.factory<_i134.UserLoginBloc>(
        () => _i134.UserLoginBloc(gh<_i3.ILoginRepo>()));
    gh.factory<_i135.VanToVanApprovalBloc>(
        () => _i135.VanToVanApprovalBloc(gh<_i3.IVanToVanApprovalRepo>()));
    gh.factory<_i136.VanToVanDetailsBloc>(
        () => _i136.VanToVanDetailsBloc(gh<_i3.IVanToVanApprovalRepo>()));
    gh.factory<_i137.VanToVanHeaderBloc>(
        () => _i137.VanToVanHeaderBloc(gh<_i3.IVanToVanApprovalRepo>()));
    gh.factory<_i138.VoidTransactionApprovalBloc>(() =>
        _i138.VoidTransactionApprovalBloc(gh<_i3.IVoidTransactionRepo>()));
    gh.factory<_i139.VoidTransactionHeaderBloc>(
        () => _i139.VoidTransactionHeaderBloc(gh<_i3.IVoidTransactionRepo>()));
    gh.factory<_i140.VoidTransactionRejectionBloc>(() =>
        _i140.VoidTransactionRejectionBloc(gh<_i3.IVoidTransactionRepo>()));
    gh.factory<_i141.AllUsersBloc>(
        () => _i141.AllUsersBloc(gh<_i8.IChatUserRepo>()));
    gh.factory<_i142.ApprovalCountsBloc>(
        () => _i142.ApprovalCountsBloc(gh<_i3.IApprovalCountsRepo>()));
    gh.factory<_i143.ApprovalReasonsBloc>(
        () => _i143.ApprovalReasonsBloc(gh<_i3.IReturnApprovalRepo>()));
    gh.factory<_i144.ApprovePriceChangeBloc>(
        () => _i144.ApprovePriceChangeBloc(gh<_i3.IPriceChangeRepo>()));
    gh.factory<_i145.ApproveReturnProductBloc>(
        () => _i145.ApproveReturnProductBloc(gh<_i3.IReturnApprovalRepo>()));
    gh.factory<_i146.ArDetailsBloc>(
        () => _i146.ArDetailsBloc(gh<_i3.IArCollectionRepo>()));
    gh.factory<_i147.ArHeaderBloc>(
        () => _i147.ArHeaderBloc(gh<_i3.IArCollectionRepo>()));
    gh.factory<_i148.AssetAddInApprovalHeaderBloc>(() =>
        _i148.AssetAddInApprovalHeaderBloc(gh<_i3.IAssetAddApprovalRepo>()));
    gh.factory<_i149.AssetAddingApprovalAndRjectBlocBloc>(() =>
        _i149.AssetAddingApprovalAndRjectBlocBloc(
            gh<_i3.IAssetAddApprovalRepo>()));
    gh.factory<_i150.AssetRemovalApprvalBloc>(() =>
        _i150.AssetRemovalApprvalBloc(gh<_i3.IAssetRemovalRequestRepo>()));
    gh.factory<_i151.AssetRemovelRequestHeaderBloc>(() =>
        _i151.AssetRemovelRequestHeaderBloc(
            gh<_i3.IAssetRemovalRequestRepo>()));
    gh.factory<_i152.CreditNoteApprovalAndRejectBloc>(() =>
        _i152.CreditNoteApprovalAndRejectBloc(
            gh<_i3.ICreditNoteApprovalRepo>()));
    gh.factory<_i153.CreditNoteApprovalLevelStatusCubit>(() =>
        _i153.CreditNoteApprovalLevelStatusCubit(
            gh<_i3.ICreditNoteApprovalRepo>()));
    gh.factory<_i154.CreditNoteDetailBloc>(
        () => _i154.CreditNoteDetailBloc(gh<_i3.ICreditNoteApprovalRepo>()));
    gh.factory<_i155.CreditNoteHeaderBloc>(
        () => _i155.CreditNoteHeaderBloc(gh<_i3.ICreditNoteApprovalRepo>()));
    gh.factory<_i156.CusDocumentsBloc>(
        () => _i156.CusDocumentsBloc(gh<_i3.IcusDocumentsModel>()));
    gh.factory<_i157.CusGeoLocationBloc>(
        () => _i157.CusGeoLocationBloc(gh<_i3.ICusGeoLocationRepo>()));
    gh.factory<_i158.CusInsArHeaderBloc>(
        () => _i158.CusInsArHeaderBloc(gh<_i3.ICusInsArRepo>()));
    gh.factory<_i159.CusInsInvoiceHeaderBloc>(
        () => _i159.CusInsInvoiceHeaderBloc(gh<_i3.ICusInsInvoiceRepo>()));
    gh.factory<_i160.CusInsTrnCountBloc>(
        () => _i160.CusInsTrnCountBloc(gh<_i3.IcusInsCountsRepo>()));
    gh.factory<_i161.CusInvDetailBlocBloc>(
        () => _i161.CusInvDetailBlocBloc(gh<_i3.ICusInsInvoiceRepo>()));
    gh.factory<_i162.CusItemsBloc>(
        () => _i162.CusItemsBloc(gh<_i3.ICusItemsRepo>()));
    gh.factory<_i163.CusOutStandingBloc>(
        () => _i163.CusOutStandingBloc(gh<_i3.ICusOutstandingRepo>()));
    gh.factory<_i164.CusProfileBloc>(
        () => _i164.CusProfileBloc(gh<_i3.ICusProfileRepo>()));
    gh.factory<_i165.CusPromoDetailBloc>(
        () => _i165.CusPromoDetailBloc(gh<_i3.ICusProtionRepo>()));
    gh.factory<_i166.CusPromotionsHeaderBloc>(
        () => _i166.CusPromotionsHeaderBloc(gh<_i3.ICusProtionRepo>()));
    gh.factory<_i167.CusSalesOrdersBloc>(
        () => _i167.CusSalesOrdersBloc(gh<_i3.ISalesOrdersRepo>()));
    gh.factory<_i168.CusSpPriceBloc>(
        () => _i168.CusSpPriceBloc(gh<_i3.ICusSpPriceRepo>()));
    gh.factory<_i169.CustomerInsightGroupBloc>(
        () => _i169.CustomerInsightGroupBloc(gh<_i3.ICusInsightGroupRepo>()));
    gh.factory<_i170.CustomerTransactionBloc>(() =>
        _i170.CustomerTransactionBloc(gh<_i3.ICustomerTransactionRepo>()));
    gh.factory<_i171.CustomersListBlocBloc>(
        () => _i171.CustomersListBlocBloc(gh<_i3.ICusInsightsCustomersRepo>()));
    gh.factory<_i172.DisputeApprovalStatusLevelCubitCubit>(() =>
        _i172.DisputeApprovalStatusLevelCubitCubit(
            gh<_i3.IDisputeNoteApprovalRepo>()));
    gh.factory<_i173.DisputeNoteApprovalAndRejectBloc>(() =>
        _i173.DisputeNoteApprovalAndRejectBloc(
            gh<_i3.IDisputeNoteApprovalRepo>()));
    gh.factory<_i174.DisputeNoteDetailBloc>(
        () => _i174.DisputeNoteDetailBloc(gh<_i3.IDisputeNoteApprovalRepo>()));
    gh.factory<_i175.DisputeNoteHeaderBloc>(
        () => _i175.DisputeNoteHeaderBloc(gh<_i3.IDisputeNoteApprovalRepo>()));
    gh.factory<_i176.EditCusProfileBloc>(
        () => _i176.EditCusProfileBloc(gh<_i3.IProfileEditRepo>()));
    gh.factory<_i177.FIeldServiceDetailBloc>(() => _i177.FIeldServiceDetailBloc(
        gh<_i3.IFieldServiceInvoiceApprovalRepo>()));
    gh.factory<_i178.FieldServiceHeaderBloc>(() => _i178.FieldServiceHeaderBloc(
        gh<_i3.IFieldServiceInvoiceApprovalRepo>()));
    gh.factory<_i179.FieldServiceInvoiceApprovalBloc>(() =>
        _i179.FieldServiceInvoiceApprovalBloc(
            gh<_i3.IFieldServiceInvoiceApprovalRepo>()));
    gh.factory<_i180.GetAllRouteBloc>(
        () => _i180.GetAllRouteBloc(gh<_i3.IGetAllAvailableRoutesRepo>()));
>>>>>>> 2ea0970ad1403ce24e81a56a5a3592c1aa279d74
    return this;
  }
}
