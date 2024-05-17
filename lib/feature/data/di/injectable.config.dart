// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart'
    as _i3;
import 'package:customer_connect/feature/domain/repoImpls/arcollection/arcollectionrepo.dart'
    as _i4;
import 'package:customer_connect/feature/domain/repoImpls/asset_adding_approval/asset_adding_approval_repo.dart'
    as _i5;
import 'package:customer_connect/feature/domain/repoImpls/assetremoval/assetremovalrepo.dart'
    as _i6;
import 'package:customer_connect/feature/domain/repoImpls/creditnote/creditnoteapprovalrepo.dart'
    as _i7;
import 'package:customer_connect/feature/domain/repoImpls/cusdocuments/cusdocumentsrepo.dart'
    as _i43;
import 'package:customer_connect/feature/domain/repoImpls/cusinsights/cusinsarrepo.dart'
    as _i9;
import 'package:customer_connect/feature/domain/repoImpls/cusinsights/customersrepo.dart'
    as _i11;
import 'package:customer_connect/feature/domain/repoImpls/cusinsights/transactioncunts.dart'
    as _i44;
import 'package:customer_connect/feature/domain/repoImpls/cusinsinvoice/cusinsightsinvoicerepo.dart'
    as _i10;
import 'package:customer_connect/feature/domain/repoImpls/cusitemsrepo/cusitemsrepo.dart'
    as _i12;
import 'package:customer_connect/feature/domain/repoImpls/cusoustanding/cusoutstandingrepo.dart'
    as _i13;
import 'package:customer_connect/feature/domain/repoImpls/cusprofile/cusprofilerepo.dart'
    as _i14;
import 'package:customer_connect/feature/domain/repoImpls/cuspromotions/cuspromotionsrepo.dart'
    as _i15;
import 'package:customer_connect/feature/domain/repoImpls/cusspprice/cussppricerepo.dart'
    as _i16;
import 'package:customer_connect/feature/domain/repoImpls/customertransactionrepo/customertransactionrepo.dart'
    as _i17;
import 'package:customer_connect/feature/domain/repoImpls/disputenote/disputenoterepo.dart'
    as _i18;
import 'package:customer_connect/feature/domain/repoImpls/editprofile/editprofilerepo.dart'
    as _i32;
import 'package:customer_connect/feature/domain/repoImpls/field_service_approval/field_service_approval_repo.dart'
    as _i19;
import 'package:customer_connect/feature/domain/repoImpls/geolocation/geolocationrepo.dart'
    as _i8;
import 'package:customer_connect/feature/domain/repoImpls/invoicerepo/invoicerepo.dart'
    as _i20;
import 'package:customer_connect/feature/domain/repoImpls/journey_plan/journeyplanapprovalrepo.dart'
    as _i21;
import 'package:customer_connect/feature/domain/repoImpls/Loading/loadingrepo.dart'
    as _i23;
import 'package:customer_connect/feature/domain/repoImpls/loadtransfer/loadtransferrepo.dart'
    as _i22;
import 'package:customer_connect/feature/domain/repoImpls/loginrepo/loginrepo.dart'
    as _i24;
import 'package:customer_connect/feature/domain/repoImpls/materialreqheaderrepo/materialreqheaderrepo.dart'
    as _i25;
import 'package:customer_connect/feature/domain/repoImpls/notifications/notificationsrepo.dart'
    as _i26;
import 'package:customer_connect/feature/domain/repoImpls/outstandingheaderrepo/outstandingheaderrepo.dart'
    as _i27;
import 'package:customer_connect/feature/domain/repoImpls/partialdeliveryrepo/partialdeliveryrepo.dart'
    as _i28;
import 'package:customer_connect/feature/domain/repoImpls/pickingandloadingrepo/pickingandloadincountrepo.dart'
    as _i29;
import 'package:customer_connect/feature/domain/repoImpls/pickingheaderrepo/pickingheaderrepo.dart'
    as _i30;
import 'package:customer_connect/feature/domain/repoImpls/pricechangerepo/pricechangerepo.dart'
    as _i31;
import 'package:customer_connect/feature/domain/repoImpls/promtionrepo/promotionrepo.dart'
    as _i33;
import 'package:customer_connect/feature/domain/repoImpls/qualificationgrouprepo/qualificationgrouprepo.dart'
    as _i34;
import 'package:customer_connect/feature/domain/repoImpls/returnapproval/returnapprovalrepo.dart'
    as _i35;
import 'package:customer_connect/feature/domain/repoImpls/salesorderrepo/salesorderrepo.dart'
    as _i36;
import 'package:customer_connect/feature/domain/repoImpls/salesorderrs/salesordersrepo.dart'
    as _i37;
import 'package:customer_connect/feature/domain/repoImpls/scheduledreturn/scheduledreturnrepo.dart'
    as _i38;
import 'package:customer_connect/feature/domain/repoImpls/specialpricerepo/specialpricerepo.dart'
    as _i39;
import 'package:customer_connect/feature/domain/repoImpls/todaysdeliveryrepo/todaysdeliveryrepo.dart'
    as _i40;
import 'package:customer_connect/feature/domain/repoImpls/totalordersrepo/totalorderrepo.dart'
    as _i41;
import 'package:customer_connect/feature/domain/repoImpls/vantovanapprovalrepo/vantovanapprovalrepo.dart'
    as _i42;
import 'package:customer_connect/feature/state/bloc/approvalreasons/approval_reasons_bloc.dart'
    as _i92;
import 'package:customer_connect/feature/state/bloc/approvepricechange/approve_price_change_bloc.dart'
    as _i93;
import 'package:customer_connect/feature/state/bloc/approvereturnprod/approve_return_product_bloc.dart'
    as _i94;
import 'package:customer_connect/feature/state/bloc/ardetails/ar_details_bloc.dart'
    as _i95;
import 'package:customer_connect/feature/state/bloc/arheader/ar_header_bloc.dart'
    as _i96;
import 'package:customer_connect/feature/state/bloc/asset_adding_approval_header/asset_add_in_approval_header_bloc.dart'
    as _i97;
import 'package:customer_connect/feature/state/bloc/assetaddapproval/asset_adding_approval_and_rject_bloc_bloc.dart'
    as _i98;
import 'package:customer_connect/feature/state/bloc/assetremovalapproval/asset_removal_apprval_bloc.dart'
    as _i99;
import 'package:customer_connect/feature/state/bloc/assetremovalheader/asset_removel_request_header_bloc.dart'
    as _i100;
import 'package:customer_connect/feature/state/bloc/creditnoteapproval/credit_note_approval_and_reject_bloc.dart'
    as _i101;
import 'package:customer_connect/feature/state/bloc/creditnotedetail/credit_note_detail_bloc.dart'
    as _i103;
import 'package:customer_connect/feature/state/bloc/creditnoteheader/credit_note_header_bloc.dart'
    as _i104;
import 'package:customer_connect/feature/state/bloc/cusdocuments/cus_documents_bloc.dart'
    as _i105;
import 'package:customer_connect/feature/state/bloc/cusgeolocation/cus_geo_location_bloc.dart'
    as _i106;
import 'package:customer_connect/feature/state/bloc/cusinsarheader/cus_ins_ar_header_bloc.dart'
    as _i107;
import 'package:customer_connect/feature/state/bloc/cusinsinv/cus_ins_invoice_header_bloc.dart'
    as _i108;
import 'package:customer_connect/feature/state/bloc/cusinstrnscount/cus_ins_trn_count_bloc.dart'
    as _i109;
import 'package:customer_connect/feature/state/bloc/cusinvdetail/cus_inv_detail_bloc_bloc.dart'
    as _i110;
import 'package:customer_connect/feature/state/bloc/cusitems/cus_items_bloc.dart'
    as _i111;
import 'package:customer_connect/feature/state/bloc/cusoutstanding/cus_out_standing_bloc.dart'
    as _i112;
import 'package:customer_connect/feature/state/bloc/cusprofile/cus_profile_bloc.dart'
    as _i113;
import 'package:customer_connect/feature/state/bloc/cuspromodetail/cus_promo_detail_bloc.dart'
    as _i114;
import 'package:customer_connect/feature/state/bloc/cuspromotionsheader/cus_promotions_header_bloc.dart'
    as _i115;
import 'package:customer_connect/feature/state/bloc/cussalesorders/cus_sales_orders_bloc.dart'
    as _i116;
import 'package:customer_connect/feature/state/bloc/cussppriceheader/cus_sp_price_bloc.dart'
    as _i117;
import 'package:customer_connect/feature/state/bloc/customer_transaction/customer_transaction_bloc.dart'
    as _i118;
import 'package:customer_connect/feature/state/bloc/customers/customers_list_bloc_bloc.dart'
    as _i119;
import 'package:customer_connect/feature/state/bloc/disputeapproval/dispute_note_approval_and_reject_bloc.dart'
    as _i121;
import 'package:customer_connect/feature/state/bloc/disputenotedetail/dispute_note_detail_bloc.dart'
    as _i122;
import 'package:customer_connect/feature/state/bloc/disputenoteheader/dispute_note_header_bloc.dart'
    as _i123;
import 'package:customer_connect/feature/state/bloc/editcusprofile/edit_cus_profile_bloc.dart'
    as _i124;
import 'package:customer_connect/feature/state/bloc/field_service_detail/f_ield_service_detail_bloc.dart'
    as _i125;
import 'package:customer_connect/feature/state/bloc/field_service_header/field_service_header_bloc.dart'
    as _i126;
import 'package:customer_connect/feature/state/bloc/Invoice_details/invoice_details_bloc.dart'
    as _i45;
import 'package:customer_connect/feature/state/bloc/invoice_details_footer/invoice_details_footer_bloc.dart'
    as _i46;
import 'package:customer_connect/feature/state/bloc/invoice_header/invoice_header_bloc.dart'
    as _i47;
import 'package:customer_connect/feature/state/bloc/journeyplanapproval/jourey_plan_approval_bloc.dart'
    as _i48;
import 'package:customer_connect/feature/state/bloc/journeyplanheader/journey_plan_header_bloc.dart'
    as _i49;
import 'package:customer_connect/feature/state/bloc/loading/loading_detail_bloc.dart'
    as _i54;
import 'package:customer_connect/feature/state/bloc/loadingdetail/loading_detail_bloc.dart'
    as _i53;
import 'package:customer_connect/feature/state/bloc/loadingheader/loading_header_bloc.dart'
    as _i55;
import 'package:customer_connect/feature/state/bloc/loadtransferapproval/load_transfer_approval_bloc.dart'
    as _i50;
import 'package:customer_connect/feature/state/bloc/loadtransferdetail/load_transfer_detail_bloc.dart'
    as _i51;
import 'package:customer_connect/feature/state/bloc/loadtransferheader/load_transfer_header_bloc.dart'
    as _i52;
import 'package:customer_connect/feature/state/bloc/login/user_login_bloc.dart'
    as _i88;
import 'package:customer_connect/feature/state/bloc/materialreqdetail/material_req_detail_bloc.dart'
    as _i56;
import 'package:customer_connect/feature/state/bloc/materialreqhead/material_req_head_bloc.dart'
    as _i57;
import 'package:customer_connect/feature/state/bloc/notificationlisting/notification_listing_bloc.dart'
    as _i59;
import 'package:customer_connect/feature/state/bloc/notificationreplay/notification_replay_bloc_bloc.dart'
    as _i60;
import 'package:customer_connect/feature/state/bloc/notireadflagupdate/noti_read_flag_update_bloc.dart'
    as _i58;
import 'package:customer_connect/feature/state/bloc/outstanding/outstanding_bloc.dart'
    as _i61;
import 'package:customer_connect/feature/state/bloc/partialdeliveryheader/partial_delivery_header_bloc.dart'
    as _i62;
import 'package:customer_connect/feature/state/bloc/picking_and_loading_count/picking_and_loading_count_bloc.dart'
    as _i63;
import 'package:customer_connect/feature/state/bloc/picking_detail/pickingdetail_bloc.dart'
    as _i65;
import 'package:customer_connect/feature/state/bloc/picking_header/picking_header_bloc.dart'
    as _i64;
import 'package:customer_connect/feature/state/bloc/pricechangedetails/price_change_details_bloc.dart'
    as _i66;
import 'package:customer_connect/feature/state/bloc/pricechangeheader/price_change_header_bloc.dart'
    as _i67;
import 'package:customer_connect/feature/state/bloc/pricechangereasons/price_change_reasons_bloc.dart'
    as _i68;
import 'package:customer_connect/feature/state/bloc/promotion_customer/promotion_customer_bloc.dart'
    as _i69;
import 'package:customer_connect/feature/state/bloc/promotion_details/promotion_details_bloc.dart'
    as _i70;
import 'package:customer_connect/feature/state/bloc/promotion_header/promotion_header_bloc.dart'
    as _i71;
import 'package:customer_connect/feature/state/bloc/qualification_group/qualification_group_bloc.dart'
    as _i72;
import 'package:customer_connect/feature/state/bloc/returnapproval/return_approval_header_bloc.dart'
    as _i74;
import 'package:customer_connect/feature/state/bloc/returnapprovaldetail/return_approval_detail_bloc.dart'
    as _i73;
import 'package:customer_connect/feature/state/bloc/sales_order_count/sales_order_count_bloc.dart'
    as _i76;
import 'package:customer_connect/feature/state/bloc/scheduledreturnapproval/schduled_return_approval_bloc.dart'
    as _i77;
import 'package:customer_connect/feature/state/bloc/scheduledreturnheader/schduled_return_header_bloc.dart'
    as _i78;
import 'package:customer_connect/feature/state/bloc/scheuledreturndetail/scheduled_return_details_bloc.dart'
    as _i79;
import 'package:customer_connect/feature/state/bloc/special_price_customers/special_price_customers_bloc.dart'
    as _i80;
import 'package:customer_connect/feature/state/bloc/special_price_header/special_price_header_bloc.dart'
    as _i82;
import 'package:customer_connect/feature/state/bloc/specialpricedetails/special_price_details_bloc.dart'
    as _i81;
import 'package:customer_connect/feature/state/bloc/todays_delivery/todays_delivery_header_bloc.dart'
    as _i84;
import 'package:customer_connect/feature/state/bloc/todays_delivery_details/todays_delivery_details_bloc.dart'
    as _i83;
import 'package:customer_connect/feature/state/bloc/total_orders_details/total_orders_details_bloc.dart'
    as _i85;
import 'package:customer_connect/feature/state/bloc/total_orders_header/total_orders_header_bloc.dart'
    as _i86;
import 'package:customer_connect/feature/state/bloc/vantovanapproval/van_to_van_approval_bloc.dart'
    as _i89;
import 'package:customer_connect/feature/state/bloc/vantovandetails/van_to_van_details_bloc.dart'
    as _i90;
import 'package:customer_connect/feature/state/bloc/vantovanheader/van_to_van_header_bloc.dart'
    as _i91;
import 'package:customer_connect/feature/state/cubit/creditnoteapprovallevel/credit_note_approval_level_status_cubit.dart'
    as _i102;
import 'package:customer_connect/feature/state/cubit/disputeapprovalsatuslevel/dispute_approval_status_level_cubit_cubit.dart'
    as _i120;
import 'package:customer_connect/feature/state/cubit/routeforsc/route_for_sc_cubit.dart'
    as _i75;
import 'package:customer_connect/feature/state/cubit/updategeolocation/update_geo_location_cubit.dart'
    as _i87;
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
    gh.lazySingleton<_i3.IArCollectionRepo>(() => _i4.ArCollectionRepo());
    gh.lazySingleton<_i3.IAssetAddApprovalRepo>(
        () => _i5.AssetAddIngApprovalRepo());
    gh.lazySingleton<_i3.IAssetRemovalRequestRepo>(
        () => _i6.AssetRemovalRequestRepo());
    gh.lazySingleton<_i3.ICreditNoteApprovalRepo>(
        () => _i7.CreditNoteApprovalRepo());
    gh.lazySingleton<_i3.ICusGeoLocationRepo>(() => _i8.GeoLocationRepo());
    gh.lazySingleton<_i3.ICusInsArRepo>(() => _i9.CusInsArRepo());
    gh.lazySingleton<_i3.ICusInsInvoiceRepo>(() => _i10.CusInsInvoiceRepo());
    gh.lazySingleton<_i3.ICusInsightsCustomersRepo>(
        () => _i11.CusInsCustomersRepo());
    gh.lazySingleton<_i3.ICusItemsRepo>(() => _i12.CusItemsRepo());
    gh.lazySingleton<_i3.ICusOutstandingRepo>(() => _i13.CusOutStandingRepo());
    gh.lazySingleton<_i3.ICusProfileRepo>(() => _i14.CusProfileRepo());
    gh.lazySingleton<_i3.ICusProtionRepo>(() => _i15.CusPromotionsRepo());
    gh.lazySingleton<_i3.ICusSpPriceRepo>(() => _i16.CusSpPriceRepo());
    gh.lazySingleton<_i3.ICustomerTransactionRepo>(
        () => _i17.CustomerTransactionRepo());
    gh.lazySingleton<_i3.IDisputeNoteApprovalRepo>(
        () => _i18.DisputeNoteApprovalRepo());
    gh.lazySingleton<_i3.IFieldServiceInvoiceApprovalRepo>(
        () => _i19.FieldServiceInvoiceApprovalRepo());
    gh.lazySingleton<_i3.IInvoiceRepo>(() => _i20.InvoiceRepo());
    gh.lazySingleton<_i3.IJourneyPlanApprovalRepo>(
        () => _i21.JourneyPlanApprovalRepo());
    gh.lazySingleton<_i3.ILoadTransferApprovalRepo>(
        () => _i22.LoadTransferApprovalRepo());
    gh.lazySingleton<_i3.ILoadingRepo>(() => _i23.LoadinRepo());
    gh.lazySingleton<_i3.ILoginRepo>(() => _i24.UserLoginRepo());
    gh.lazySingleton<_i3.IMaterialReqHeaderRepo>(() => _i25.MaterialReqRepo());
    gh.lazySingleton<_i3.INotificationRepo>(() => _i26.NotificationRepo());
    gh.lazySingleton<_i3.IOutStandingHeaderRepo>(
        () => _i27.OutStandingHeadRepo());
    gh.lazySingleton<_i3.IPartialDeliveryRepo>(
        () => _i28.PartialDeliveryRepo());
    gh.lazySingleton<_i3.IPickingAndLoadinCountRepo>(
        () => _i29.PickingAndLoadinCountRepo());
    gh.lazySingleton<_i3.IPickingHeaderRepo>(() => _i30.PickingHeaderRepo());
    gh.lazySingleton<_i3.IPriceChangeRepo>(() => _i31.PriceChangeRepo());
    gh.lazySingleton<_i3.IProfileEditRepo>(() => _i32.ProfileEditingRepo());
    gh.lazySingleton<_i3.IPromotionHeaderRepo>(
        () => _i33.PromotionHeaderRepo());
    gh.lazySingleton<_i3.IQualificationGroupRepo>(
        () => _i34.QualificationGroupREpo());
    gh.lazySingleton<_i3.IReturnApprovalRepo>(() => _i35.ReturnApprovalRepo());
    gh.lazySingleton<_i3.ISalesOrderRepo>(() => _i36.SalesOrderCountRepo());
    gh.lazySingleton<_i3.ISalesOrdersRepo>(() => _i37.SalesOrdersRepo());
    gh.lazySingleton<_i3.IScheduledReturnApprovalRepo>(
        () => _i38.ScheduledReturnApprovalRepo());
    gh.lazySingleton<_i3.ISpecialPriceRepo>(() => _i39.SpecialPriceRepo());
    gh.lazySingleton<_i3.ITodaysDeliveryRepo>(() => _i40.TodaysDelivery());
    gh.lazySingleton<_i3.ITotalOrdersRepo>(() => _i41.TotalOrderRepo());
    gh.lazySingleton<_i3.IVanToVanApprovalRepo>(
        () => _i42.VanToVanApprovalRepo());
    gh.lazySingleton<_i3.IcusDocumentsModel>(() => _i43.CusDocumentsRepo());
    gh.lazySingleton<_i3.IcusInsCountsRepo>(() => _i44.CusTrnCOuntsRepo());
    gh.factory<_i45.InvoiceDetailsBloc>(
        () => _i45.InvoiceDetailsBloc(gh<_i3.IInvoiceRepo>()));
    gh.factory<_i46.InvoiceDetailsFooterBloc>(
        () => _i46.InvoiceDetailsFooterBloc(gh<_i3.IInvoiceRepo>()));
    gh.factory<_i47.InvoiceHeaderBloc>(
        () => _i47.InvoiceHeaderBloc(gh<_i3.IInvoiceRepo>()));
    gh.factory<_i48.JoureyPlanApprovalBloc>(
        () => _i48.JoureyPlanApprovalBloc(gh<_i3.IJourneyPlanApprovalRepo>()));
    gh.factory<_i49.JourneyPlanHeaderBloc>(
        () => _i49.JourneyPlanHeaderBloc(gh<_i3.IJourneyPlanApprovalRepo>()));
    gh.factory<_i50.LoadTransferApprovalBloc>(() =>
        _i50.LoadTransferApprovalBloc(gh<_i3.ILoadTransferApprovalRepo>()));
    gh.factory<_i51.LoadTransferDetailBloc>(
        () => _i51.LoadTransferDetailBloc(gh<_i3.ILoadTransferApprovalRepo>()));
    gh.factory<_i52.LoadTransferHeaderBloc>(
        () => _i52.LoadTransferHeaderBloc(gh<_i3.ILoadTransferApprovalRepo>()));
    gh.factory<_i53.LoadingDetailBloc>(
        () => _i53.LoadingDetailBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i54.LoadingDetailBloc>(
        () => _i54.LoadingDetailBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i55.LoadingHeaderBloc>(
        () => _i55.LoadingHeaderBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i56.MaterialReqDetailBloc>(
        () => _i56.MaterialReqDetailBloc(gh<_i3.IMaterialReqHeaderRepo>()));
    gh.factory<_i57.MaterialReqHeadBloc>(
        () => _i57.MaterialReqHeadBloc(gh<_i3.IMaterialReqHeaderRepo>()));
    gh.factory<_i58.NotiReadFlagUpdateBloc>(
        () => _i58.NotiReadFlagUpdateBloc(gh<_i3.INotificationRepo>()));
    gh.factory<_i59.NotificationListingBloc>(
        () => _i59.NotificationListingBloc(gh<_i3.INotificationRepo>()));
    gh.factory<_i60.NotificationReplayBlocBloc>(
        () => _i60.NotificationReplayBlocBloc(gh<_i3.INotificationRepo>()));
    gh.factory<_i61.OutstandingBloc>(
        () => _i61.OutstandingBloc(gh<_i3.IOutStandingHeaderRepo>()));
    gh.factory<_i62.PartialDeliveryHeaderBloc>(
        () => _i62.PartialDeliveryHeaderBloc(gh<_i3.IPartialDeliveryRepo>()));
    gh.factory<_i63.PickingAndLoadingCountBloc>(() =>
        _i63.PickingAndLoadingCountBloc(gh<_i3.IPickingAndLoadinCountRepo>()));
    gh.factory<_i64.PickingHeaderBloc>(
        () => _i64.PickingHeaderBloc(gh<_i3.IPickingHeaderRepo>()));
    gh.factory<_i65.PickingdetailBloc>(
        () => _i65.PickingdetailBloc(gh<_i3.IPickingHeaderRepo>()));
    gh.factory<_i66.PriceChangeDetailsBloc>(
        () => _i66.PriceChangeDetailsBloc(gh<_i3.IPriceChangeRepo>()));
    gh.factory<_i67.PriceChangeHeaderBloc>(
        () => _i67.PriceChangeHeaderBloc(gh<_i3.IPriceChangeRepo>()));
    gh.factory<_i68.PriceChangeReasonsBloc>(
        () => _i68.PriceChangeReasonsBloc(gh<_i3.IPriceChangeRepo>()));
    gh.factory<_i69.PromotionCustomerBloc>(
        () => _i69.PromotionCustomerBloc(gh<_i3.IPromotionHeaderRepo>()));
    gh.factory<_i70.PromotionDetailsBloc>(
        () => _i70.PromotionDetailsBloc(gh<_i3.IPromotionHeaderRepo>()));
    gh.factory<_i71.PromotionHeaderBloc>(
        () => _i71.PromotionHeaderBloc(gh<_i3.IPromotionHeaderRepo>()));
    gh.factory<_i72.QualificationGroupBloc>(
        () => _i72.QualificationGroupBloc(gh<_i3.IQualificationGroupRepo>()));
    gh.factory<_i73.ReturnApprovalDetailBloc>(
        () => _i73.ReturnApprovalDetailBloc(gh<_i3.IReturnApprovalRepo>()));
    gh.factory<_i74.ReturnApprovalHeaderBloc>(
        () => _i74.ReturnApprovalHeaderBloc(gh<_i3.IReturnApprovalRepo>()));
    gh.factory<_i75.RouteForScCubit>(
        () => _i75.RouteForScCubit(gh<_i3.IScheduledReturnApprovalRepo>()));
    gh.factory<_i76.SalesOrderCountBloc>(
        () => _i76.SalesOrderCountBloc(gh<_i3.ISalesOrderRepo>()));
    gh.factory<_i77.SchduledReturnApprovalBloc>(() =>
        _i77.SchduledReturnApprovalBloc(
            gh<_i3.IScheduledReturnApprovalRepo>()));
    gh.factory<_i78.SchduledReturnHeaderBloc>(() =>
        _i78.SchduledReturnHeaderBloc(gh<_i3.IScheduledReturnApprovalRepo>()));
    gh.factory<_i79.ScheduledReturnDetailsBloc>(() =>
        _i79.ScheduledReturnDetailsBloc(
            gh<_i3.IScheduledReturnApprovalRepo>()));
    gh.factory<_i80.SpecialPriceCustomersBloc>(
        () => _i80.SpecialPriceCustomersBloc(gh<_i3.ISpecialPriceRepo>()));
    gh.factory<_i81.SpecialPriceDetailsBloc>(
        () => _i81.SpecialPriceDetailsBloc(gh<_i3.ISpecialPriceRepo>()));
    gh.factory<_i82.SpecialPriceHeaderBloc>(
        () => _i82.SpecialPriceHeaderBloc(gh<_i3.ISpecialPriceRepo>()));
    gh.factory<_i83.TodaysDeliveryDetailsBloc>(
        () => _i83.TodaysDeliveryDetailsBloc(gh<_i3.ITodaysDeliveryRepo>()));
    gh.factory<_i84.TodaysDeliveryHeaderBloc>(
        () => _i84.TodaysDeliveryHeaderBloc(gh<_i3.ITodaysDeliveryRepo>()));
    gh.factory<_i85.TotalOrdersDetailsBloc>(
        () => _i85.TotalOrdersDetailsBloc(gh<_i3.ITotalOrdersRepo>()));
    gh.factory<_i86.TotalOrdersHeaderBloc>(
        () => _i86.TotalOrdersHeaderBloc(gh<_i3.ITotalOrdersRepo>()));
    gh.factory<_i87.UpdateGeoLocationCubit>(
        () => _i87.UpdateGeoLocationCubit(gh<_i3.ICusGeoLocationRepo>()));
    gh.factory<_i88.UserLoginBloc>(
        () => _i88.UserLoginBloc(gh<_i3.ILoginRepo>()));
    gh.factory<_i89.VanToVanApprovalBloc>(
        () => _i89.VanToVanApprovalBloc(gh<_i3.IVanToVanApprovalRepo>()));
    gh.factory<_i90.VanToVanDetailsBloc>(
        () => _i90.VanToVanDetailsBloc(gh<_i3.IVanToVanApprovalRepo>()));
    gh.factory<_i91.VanToVanHeaderBloc>(
        () => _i91.VanToVanHeaderBloc(gh<_i3.IVanToVanApprovalRepo>()));
    gh.factory<_i92.ApprovalReasonsBloc>(
        () => _i92.ApprovalReasonsBloc(gh<_i3.IReturnApprovalRepo>()));
    gh.factory<_i93.ApprovePriceChangeBloc>(
        () => _i93.ApprovePriceChangeBloc(gh<_i3.IPriceChangeRepo>()));
    gh.factory<_i94.ApproveReturnProductBloc>(
        () => _i94.ApproveReturnProductBloc(gh<_i3.IReturnApprovalRepo>()));
    gh.factory<_i95.ArDetailsBloc>(
        () => _i95.ArDetailsBloc(gh<_i3.IArCollectionRepo>()));
    gh.factory<_i96.ArHeaderBloc>(
        () => _i96.ArHeaderBloc(gh<_i3.IArCollectionRepo>()));
    gh.factory<_i97.AssetAddInApprovalHeaderBloc>(() =>
        _i97.AssetAddInApprovalHeaderBloc(gh<_i3.IAssetAddApprovalRepo>()));
    gh.factory<_i98.AssetAddingApprovalAndRjectBlocBloc>(() =>
        _i98.AssetAddingApprovalAndRjectBlocBloc(
            gh<_i3.IAssetAddApprovalRepo>()));
    gh.factory<_i99.AssetRemovalApprvalBloc>(
        () => _i99.AssetRemovalApprvalBloc(gh<_i3.IAssetRemovalRequestRepo>()));
    gh.factory<_i100.AssetRemovelRequestHeaderBloc>(() =>
        _i100.AssetRemovelRequestHeaderBloc(
            gh<_i3.IAssetRemovalRequestRepo>()));
    gh.factory<_i101.CreditNoteApprovalAndRejectBloc>(() =>
        _i101.CreditNoteApprovalAndRejectBloc(
            gh<_i3.ICreditNoteApprovalRepo>()));
    gh.factory<_i102.CreditNoteApprovalLevelStatusCubit>(() =>
        _i102.CreditNoteApprovalLevelStatusCubit(
            gh<_i3.ICreditNoteApprovalRepo>()));
    gh.factory<_i103.CreditNoteDetailBloc>(
        () => _i103.CreditNoteDetailBloc(gh<_i3.ICreditNoteApprovalRepo>()));
    gh.factory<_i104.CreditNoteHeaderBloc>(
        () => _i104.CreditNoteHeaderBloc(gh<_i3.ICreditNoteApprovalRepo>()));
    gh.factory<_i105.CusDocumentsBloc>(
        () => _i105.CusDocumentsBloc(gh<_i3.IcusDocumentsModel>()));
    gh.factory<_i106.CusGeoLocationBloc>(
        () => _i106.CusGeoLocationBloc(gh<_i3.ICusGeoLocationRepo>()));
    gh.factory<_i107.CusInsArHeaderBloc>(
        () => _i107.CusInsArHeaderBloc(gh<_i3.ICusInsArRepo>()));
    gh.factory<_i108.CusInsInvoiceHeaderBloc>(
        () => _i108.CusInsInvoiceHeaderBloc(gh<_i3.ICusInsInvoiceRepo>()));
    gh.factory<_i109.CusInsTrnCountBloc>(
        () => _i109.CusInsTrnCountBloc(gh<_i3.IcusInsCountsRepo>()));
    gh.factory<_i110.CusInvDetailBlocBloc>(
        () => _i110.CusInvDetailBlocBloc(gh<_i3.ICusInsInvoiceRepo>()));
    gh.factory<_i111.CusItemsBloc>(
        () => _i111.CusItemsBloc(gh<_i3.ICusItemsRepo>()));
    gh.factory<_i112.CusOutStandingBloc>(
        () => _i112.CusOutStandingBloc(gh<_i3.ICusOutstandingRepo>()));
    gh.factory<_i113.CusProfileBloc>(
        () => _i113.CusProfileBloc(gh<_i3.ICusProfileRepo>()));
    gh.factory<_i114.CusPromoDetailBloc>(
        () => _i114.CusPromoDetailBloc(gh<_i3.ICusProtionRepo>()));
    gh.factory<_i115.CusPromotionsHeaderBloc>(
        () => _i115.CusPromotionsHeaderBloc(gh<_i3.ICusProtionRepo>()));
    gh.factory<_i116.CusSalesOrdersBloc>(
        () => _i116.CusSalesOrdersBloc(gh<_i3.ISalesOrdersRepo>()));
    gh.factory<_i117.CusSpPriceBloc>(
        () => _i117.CusSpPriceBloc(gh<_i3.ICusSpPriceRepo>()));
    gh.factory<_i118.CustomerTransactionBloc>(() =>
        _i118.CustomerTransactionBloc(gh<_i3.ICustomerTransactionRepo>()));
    gh.factory<_i119.CustomersListBlocBloc>(
        () => _i119.CustomersListBlocBloc(gh<_i3.ICusInsightsCustomersRepo>()));
    gh.factory<_i120.DisputeApprovalStatusLevelCubitCubit>(() =>
        _i120.DisputeApprovalStatusLevelCubitCubit(
            gh<_i3.IDisputeNoteApprovalRepo>()));
    gh.factory<_i121.DisputeNoteApprovalAndRejectBloc>(() =>
        _i121.DisputeNoteApprovalAndRejectBloc(
            gh<_i3.IDisputeNoteApprovalRepo>()));
    gh.factory<_i122.DisputeNoteDetailBloc>(
        () => _i122.DisputeNoteDetailBloc(gh<_i3.IDisputeNoteApprovalRepo>()));
    gh.factory<_i123.DisputeNoteHeaderBloc>(
        () => _i123.DisputeNoteHeaderBloc(gh<_i3.IDisputeNoteApprovalRepo>()));
    gh.factory<_i124.EditCusProfileBloc>(
        () => _i124.EditCusProfileBloc(gh<_i3.IProfileEditRepo>()));
    gh.factory<_i125.FIeldServiceDetailBloc>(() => _i125.FIeldServiceDetailBloc(
        gh<_i3.IFieldServiceInvoiceApprovalRepo>()));
    gh.factory<_i126.FieldServiceHeaderBloc>(() => _i126.FieldServiceHeaderBloc(
        gh<_i3.IFieldServiceInvoiceApprovalRepo>()));
    return this;
  }
}
