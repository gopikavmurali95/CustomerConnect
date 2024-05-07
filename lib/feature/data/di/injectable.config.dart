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
    as _i42;
import 'package:customer_connect/feature/domain/repoImpls/cusinsights/cusinsarrepo.dart'
    as _i9;
import 'package:customer_connect/feature/domain/repoImpls/cusinsights/customersrepo.dart'
    as _i11;
import 'package:customer_connect/feature/domain/repoImpls/cusinsights/transactioncunts.dart'
    as _i43;
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
    as _i31;
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
import 'package:customer_connect/feature/domain/repoImpls/notifications/notificationsrepo.dart'
    as _i25;
import 'package:customer_connect/feature/domain/repoImpls/outstandingheaderrepo/outstandingheaderrepo.dart'
    as _i26;
import 'package:customer_connect/feature/domain/repoImpls/partialdeliveryrepo/partialdeliveryrepo.dart'
    as _i27;
import 'package:customer_connect/feature/domain/repoImpls/pickingandloadingrepo/pickingandloadincountrepo.dart'
    as _i28;
import 'package:customer_connect/feature/domain/repoImpls/pickingheaderrepo/pickingheaderrepo.dart'
    as _i29;
import 'package:customer_connect/feature/domain/repoImpls/pricechangerepo/pricechangerepo.dart'
    as _i30;
import 'package:customer_connect/feature/domain/repoImpls/promtionrepo/promotionrepo.dart'
    as _i32;
import 'package:customer_connect/feature/domain/repoImpls/qualificationgrouprepo/qualificationgrouprepo.dart'
    as _i33;
import 'package:customer_connect/feature/domain/repoImpls/returnapproval/returnapprovalrepo.dart'
    as _i34;
import 'package:customer_connect/feature/domain/repoImpls/salesorderrepo/salesorderrepo.dart'
    as _i35;
import 'package:customer_connect/feature/domain/repoImpls/salesorderrs/salesordersrepo.dart'
    as _i36;
import 'package:customer_connect/feature/domain/repoImpls/scheduledreturn/scheduledreturnrepo.dart'
    as _i37;
import 'package:customer_connect/feature/domain/repoImpls/specialpricerepo/specialpricerepo.dart'
    as _i38;
import 'package:customer_connect/feature/domain/repoImpls/todaysdeliveryrepo/todaysdeliveryrepo.dart'
    as _i39;
import 'package:customer_connect/feature/domain/repoImpls/totalordersrepo/totalorderrepo.dart'
    as _i40;
import 'package:customer_connect/feature/domain/repoImpls/vantovanapprovalrepo/vantovanapprovalrepo.dart'
    as _i41;
import 'package:customer_connect/feature/state/bloc/approvalreasons/approval_reasons_bloc.dart'
    as _i87;
import 'package:customer_connect/feature/state/bloc/approvepricechange/approve_price_change_bloc.dart'
    as _i88;
import 'package:customer_connect/feature/state/bloc/approvereturnprod/approve_return_product_bloc.dart'
    as _i89;
import 'package:customer_connect/feature/state/bloc/ardetails/ar_details_bloc.dart'
    as _i90;
import 'package:customer_connect/feature/state/bloc/arheader/ar_header_bloc.dart'
    as _i91;
import 'package:customer_connect/feature/state/bloc/asset_adding_approval_header/asset_add_in_approval_header_bloc.dart'
    as _i92;
import 'package:customer_connect/feature/state/bloc/assetaddapproval/asset_adding_approval_and_rject_bloc_bloc.dart'
    as _i93;
import 'package:customer_connect/feature/state/bloc/assetremovalapproval/asset_removal_apprval_bloc.dart'
    as _i94;
import 'package:customer_connect/feature/state/bloc/assetremovalheader/asset_removel_request_header_bloc.dart'
    as _i95;
import 'package:customer_connect/feature/state/bloc/creditnoteapproval/credit_note_approval_and_reject_bloc.dart'
    as _i96;
import 'package:customer_connect/feature/state/bloc/creditnotedetail/credit_note_detail_bloc.dart'
    as _i98;
import 'package:customer_connect/feature/state/bloc/creditnoteheader/credit_note_header_bloc.dart'
    as _i99;
import 'package:customer_connect/feature/state/bloc/cusdocuments/cus_documents_bloc.dart'
    as _i100;
import 'package:customer_connect/feature/state/bloc/cusgeolocation/cus_geo_location_bloc.dart'
    as _i101;
import 'package:customer_connect/feature/state/bloc/cusinsarheader/cus_ins_ar_header_bloc.dart'
    as _i102;
import 'package:customer_connect/feature/state/bloc/cusinsinv/cus_ins_invoice_header_bloc.dart'
    as _i103;
import 'package:customer_connect/feature/state/bloc/cusinstrnscount/cus_ins_trn_count_bloc.dart'
    as _i104;
import 'package:customer_connect/feature/state/bloc/cusinvdetail/cus_inv_detail_bloc_bloc.dart'
    as _i105;
import 'package:customer_connect/feature/state/bloc/cusitems/cus_items_bloc.dart'
    as _i106;
import 'package:customer_connect/feature/state/bloc/cusoutstanding/cus_out_standing_bloc.dart'
    as _i107;
import 'package:customer_connect/feature/state/bloc/cusprofile/cus_profile_bloc.dart'
    as _i108;
import 'package:customer_connect/feature/state/bloc/cuspromodetail/cus_promo_detail_bloc.dart'
    as _i109;
import 'package:customer_connect/feature/state/bloc/cuspromotionsheader/cus_promotions_header_bloc.dart'
    as _i110;
import 'package:customer_connect/feature/state/bloc/cussalesorders/cus_sales_orders_bloc.dart'
    as _i111;
import 'package:customer_connect/feature/state/bloc/cussppriceheader/cus_sp_price_bloc.dart'
    as _i112;
import 'package:customer_connect/feature/state/bloc/customer_transaction/customer_transaction_bloc.dart'
    as _i113;
import 'package:customer_connect/feature/state/bloc/customers/customers_list_bloc_bloc.dart'
    as _i114;
import 'package:customer_connect/feature/state/bloc/disputeapproval/dispute_note_approval_and_reject_bloc.dart'
    as _i116;
import 'package:customer_connect/feature/state/bloc/disputenotedetail/dispute_note_detail_bloc.dart'
    as _i117;
import 'package:customer_connect/feature/state/bloc/disputenoteheader/dispute_note_header_bloc.dart'
    as _i118;
import 'package:customer_connect/feature/state/bloc/editcusprofile/edit_cus_profile_bloc.dart'
    as _i119;
import 'package:customer_connect/feature/state/bloc/field_service_detail/f_ield_service_detail_bloc.dart'
    as _i120;
import 'package:customer_connect/feature/state/bloc/field_service_header/field_service_header_bloc.dart'
    as _i121;
import 'package:customer_connect/feature/state/bloc/Invoice_details/invoice_details_bloc.dart'
    as _i44;
import 'package:customer_connect/feature/state/bloc/invoice_details_footer/invoice_details_footer_bloc.dart'
    as _i45;
import 'package:customer_connect/feature/state/bloc/invoice_header/invoice_header_bloc.dart'
    as _i46;
import 'package:customer_connect/feature/state/bloc/loading/loading_detail_bloc.dart'
    as _i50;
import 'package:customer_connect/feature/state/bloc/loadingdetail/loading_detail_bloc.dart'
    as _i51;
import 'package:customer_connect/feature/state/bloc/loadingheader/loading_header_bloc.dart'
    as _i52;
import 'package:customer_connect/feature/state/bloc/loadtransferapproval/load_transfer_approval_bloc.dart'
    as _i47;
import 'package:customer_connect/feature/state/bloc/loadtransferdetail/load_transfer_detail_bloc.dart'
    as _i48;
import 'package:customer_connect/feature/state/bloc/loadtransferheader/load_transfer_header_bloc.dart'
    as _i49;
import 'package:customer_connect/feature/state/bloc/login/user_login_bloc.dart'
    as _i83;
import 'package:customer_connect/feature/state/bloc/notificationlisting/notification_listing_bloc.dart'
    as _i54;
import 'package:customer_connect/feature/state/bloc/notificationreplay/notification_replay_bloc_bloc.dart'
    as _i55;
import 'package:customer_connect/feature/state/bloc/notireadflagupdate/noti_read_flag_update_bloc.dart'
    as _i53;
import 'package:customer_connect/feature/state/bloc/outstanding/outstanding_bloc.dart'
    as _i56;
import 'package:customer_connect/feature/state/bloc/partialdeliveryheader/partial_delivery_header_bloc.dart'
    as _i57;
import 'package:customer_connect/feature/state/bloc/picking_and_loading_count/picking_and_loading_count_bloc.dart'
    as _i58;
import 'package:customer_connect/feature/state/bloc/picking_detail/pickingdetail_bloc.dart'
    as _i60;
import 'package:customer_connect/feature/state/bloc/picking_header/picking_header_bloc.dart'
    as _i59;
import 'package:customer_connect/feature/state/bloc/pricechangedetails/price_change_details_bloc.dart'
    as _i61;
import 'package:customer_connect/feature/state/bloc/pricechangeheader/price_change_header_bloc.dart'
    as _i62;
import 'package:customer_connect/feature/state/bloc/pricechangereasons/price_change_reasons_bloc.dart'
    as _i63;
import 'package:customer_connect/feature/state/bloc/promotion_customer/promotion_customer_bloc.dart'
    as _i64;
import 'package:customer_connect/feature/state/bloc/promotion_details/promotion_details_bloc.dart'
    as _i65;
import 'package:customer_connect/feature/state/bloc/promotion_header/promotion_header_bloc.dart'
    as _i66;
import 'package:customer_connect/feature/state/bloc/qualification_group/qualification_group_bloc.dart'
    as _i67;
import 'package:customer_connect/feature/state/bloc/returnapproval/return_approval_header_bloc.dart'
    as _i69;
import 'package:customer_connect/feature/state/bloc/returnapprovaldetail/return_approval_detail_bloc.dart'
    as _i68;
import 'package:customer_connect/feature/state/bloc/sales_order_count/sales_order_count_bloc.dart'
    as _i71;
import 'package:customer_connect/feature/state/bloc/scheduledreturnapproval/schduled_return_approval_bloc.dart'
    as _i72;
import 'package:customer_connect/feature/state/bloc/scheduledreturnheader/schduled_return_header_bloc.dart'
    as _i73;
import 'package:customer_connect/feature/state/bloc/scheuledreturndetail/scheduled_return_details_bloc.dart'
    as _i74;
import 'package:customer_connect/feature/state/bloc/special_price_customers/special_price_customers_bloc.dart'
    as _i75;
import 'package:customer_connect/feature/state/bloc/special_price_header/special_price_header_bloc.dart'
    as _i77;
import 'package:customer_connect/feature/state/bloc/specialpricedetails/special_price_details_bloc.dart'
    as _i76;
import 'package:customer_connect/feature/state/bloc/todays_delivery/todays_delivery_header_bloc.dart'
    as _i79;
import 'package:customer_connect/feature/state/bloc/todays_delivery_details/todays_delivery_details_bloc.dart'
    as _i78;
import 'package:customer_connect/feature/state/bloc/total_orders_details/total_orders_details_bloc.dart'
    as _i80;
import 'package:customer_connect/feature/state/bloc/total_orders_header/total_orders_header_bloc.dart'
    as _i81;
import 'package:customer_connect/feature/state/bloc/vantovanapproval/van_to_van_approval_bloc.dart'
    as _i84;
import 'package:customer_connect/feature/state/bloc/vantovandetails/van_to_van_details_bloc.dart'
    as _i85;
import 'package:customer_connect/feature/state/bloc/vantovanheader/van_to_van_header_bloc.dart'
    as _i86;
import 'package:customer_connect/feature/state/cubit/creditnoteapprovallevel/credit_note_approval_level_status_cubit.dart'
    as _i97;
import 'package:customer_connect/feature/state/cubit/disputeapprovalsatuslevel/dispute_approval_status_level_cubit_cubit.dart'
    as _i115;
import 'package:customer_connect/feature/state/cubit/routeforsc/route_for_sc_cubit.dart'
    as _i70;
import 'package:customer_connect/feature/state/cubit/updategeolocation/update_geo_location_cubit.dart'
    as _i82;
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
    gh.lazySingleton<_i3.INotificationRepo>(() => _i25.NotificationRepo());
    gh.lazySingleton<_i3.IOutStandingHeaderRepo>(
        () => _i26.OutStandingHeadRepo());
    gh.lazySingleton<_i3.IPartialDeliveryRepo>(
        () => _i27.PartialDeliveryRepo());
    gh.lazySingleton<_i3.IPickingAndLoadinCountRepo>(
        () => _i28.PickingAndLoadinCountRepo());
    gh.lazySingleton<_i3.IPickingHeaderRepo>(() => _i29.PickingHeaderRepo());
    gh.lazySingleton<_i3.IPriceChangeRepo>(() => _i30.PriceChangeRepo());
    gh.lazySingleton<_i3.IProfileEditRepo>(() => _i31.ProfileEditingRepo());
    gh.lazySingleton<_i3.IPromotionHeaderRepo>(
        () => _i32.PromotionHeaderRepo());
    gh.lazySingleton<_i3.IQualificationGroupRepo>(
        () => _i33.QualificationGroupREpo());
    gh.lazySingleton<_i3.IReturnApprovalRepo>(() => _i34.ReturnApprovalRepo());
    gh.lazySingleton<_i3.ISalesOrderRepo>(() => _i35.SalesOrderCountRepo());
    gh.lazySingleton<_i3.ISalesOrdersRepo>(() => _i36.SalesOrdersRepo());
    gh.lazySingleton<_i3.IScheduledReturnApprovalRepo>(
        () => _i37.ScheduledReturnApprovalRepo());
    gh.lazySingleton<_i3.ISpecialPriceRepo>(() => _i38.SpecialPriceRepo());
    gh.lazySingleton<_i3.ITodaysDeliveryRepo>(() => _i39.TodaysDelivery());
    gh.lazySingleton<_i3.ITotalOrdersRepo>(() => _i40.TotalOrderRepo());
    gh.lazySingleton<_i3.IVanToVanApprovalRepo>(
        () => _i41.VanToVanApprovalRepo());
    gh.lazySingleton<_i3.IcusDocumentsModel>(() => _i42.CusDocumentsRepo());
    gh.lazySingleton<_i3.IcusInsCountsRepo>(() => _i43.CusTrnCOuntsRepo());
    gh.factory<_i44.InvoiceDetailsBloc>(
        () => _i44.InvoiceDetailsBloc(gh<_i3.IInvoiceRepo>()));
    gh.factory<_i45.InvoiceDetailsFooterBloc>(
        () => _i45.InvoiceDetailsFooterBloc(gh<_i3.IInvoiceRepo>()));
    gh.factory<_i46.InvoiceHeaderBloc>(
        () => _i46.InvoiceHeaderBloc(gh<_i3.IInvoiceRepo>()));
    gh.factory<_i47.LoadTransferApprovalBloc>(() =>
        _i47.LoadTransferApprovalBloc(gh<_i3.ILoadTransferApprovalRepo>()));
    gh.factory<_i48.LoadTransferDetailBloc>(
        () => _i48.LoadTransferDetailBloc(gh<_i3.ILoadTransferApprovalRepo>()));
    gh.factory<_i49.LoadTransferHeaderBloc>(
        () => _i49.LoadTransferHeaderBloc(gh<_i3.ILoadTransferApprovalRepo>()));
    gh.factory<_i50.LoadingDetailBloc>(
        () => _i50.LoadingDetailBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i51.LoadingDetailBloc>(
        () => _i51.LoadingDetailBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i52.LoadingHeaderBloc>(
        () => _i52.LoadingHeaderBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i53.NotiReadFlagUpdateBloc>(
        () => _i53.NotiReadFlagUpdateBloc(gh<_i3.INotificationRepo>()));
    gh.factory<_i54.NotificationListingBloc>(
        () => _i54.NotificationListingBloc(gh<_i3.INotificationRepo>()));
    gh.factory<_i55.NotificationReplayBlocBloc>(
        () => _i55.NotificationReplayBlocBloc(gh<_i3.INotificationRepo>()));
    gh.factory<_i56.OutstandingBloc>(
        () => _i56.OutstandingBloc(gh<_i3.IOutStandingHeaderRepo>()));
    gh.factory<_i57.PartialDeliveryHeaderBloc>(
        () => _i57.PartialDeliveryHeaderBloc(gh<_i3.IPartialDeliveryRepo>()));
    gh.factory<_i58.PickingAndLoadingCountBloc>(() =>
        _i58.PickingAndLoadingCountBloc(gh<_i3.IPickingAndLoadinCountRepo>()));
    gh.factory<_i59.PickingHeaderBloc>(
        () => _i59.PickingHeaderBloc(gh<_i3.IPickingHeaderRepo>()));
    gh.factory<_i60.PickingdetailBloc>(
        () => _i60.PickingdetailBloc(gh<_i3.IPickingHeaderRepo>()));
    gh.factory<_i61.PriceChangeDetailsBloc>(
        () => _i61.PriceChangeDetailsBloc(gh<_i3.IPriceChangeRepo>()));
    gh.factory<_i62.PriceChangeHeaderBloc>(
        () => _i62.PriceChangeHeaderBloc(gh<_i3.IPriceChangeRepo>()));
    gh.factory<_i63.PriceChangeReasonsBloc>(
        () => _i63.PriceChangeReasonsBloc(gh<_i3.IPriceChangeRepo>()));
    gh.factory<_i64.PromotionCustomerBloc>(
        () => _i64.PromotionCustomerBloc(gh<_i3.IPromotionHeaderRepo>()));
    gh.factory<_i65.PromotionDetailsBloc>(
        () => _i65.PromotionDetailsBloc(gh<_i3.IPromotionHeaderRepo>()));
    gh.factory<_i66.PromotionHeaderBloc>(
        () => _i66.PromotionHeaderBloc(gh<_i3.IPromotionHeaderRepo>()));
    gh.factory<_i67.QualificationGroupBloc>(
        () => _i67.QualificationGroupBloc(gh<_i3.IQualificationGroupRepo>()));
    gh.factory<_i68.ReturnApprovalDetailBloc>(
        () => _i68.ReturnApprovalDetailBloc(gh<_i3.IReturnApprovalRepo>()));
    gh.factory<_i69.ReturnApprovalHeaderBloc>(
        () => _i69.ReturnApprovalHeaderBloc(gh<_i3.IReturnApprovalRepo>()));
    gh.factory<_i70.RouteForScCubit>(
        () => _i70.RouteForScCubit(gh<_i3.IScheduledReturnApprovalRepo>()));
    gh.factory<_i71.SalesOrderCountBloc>(
        () => _i71.SalesOrderCountBloc(gh<_i3.ISalesOrderRepo>()));
    gh.factory<_i72.SchduledReturnApprovalBloc>(() =>
        _i72.SchduledReturnApprovalBloc(
            gh<_i3.IScheduledReturnApprovalRepo>()));
    gh.factory<_i73.SchduledReturnHeaderBloc>(() =>
        _i73.SchduledReturnHeaderBloc(gh<_i3.IScheduledReturnApprovalRepo>()));
    gh.factory<_i74.ScheduledReturnDetailsBloc>(() =>
        _i74.ScheduledReturnDetailsBloc(
            gh<_i3.IScheduledReturnApprovalRepo>()));
    gh.factory<_i75.SpecialPriceCustomersBloc>(
        () => _i75.SpecialPriceCustomersBloc(gh<_i3.ISpecialPriceRepo>()));
    gh.factory<_i76.SpecialPriceDetailsBloc>(
        () => _i76.SpecialPriceDetailsBloc(gh<_i3.ISpecialPriceRepo>()));
    gh.factory<_i77.SpecialPriceHeaderBloc>(
        () => _i77.SpecialPriceHeaderBloc(gh<_i3.ISpecialPriceRepo>()));
    gh.factory<_i78.TodaysDeliveryDetailsBloc>(
        () => _i78.TodaysDeliveryDetailsBloc(gh<_i3.ITodaysDeliveryRepo>()));
    gh.factory<_i79.TodaysDeliveryHeaderBloc>(
        () => _i79.TodaysDeliveryHeaderBloc(gh<_i3.ITodaysDeliveryRepo>()));
    gh.factory<_i80.TotalOrdersDetailsBloc>(
        () => _i80.TotalOrdersDetailsBloc(gh<_i3.ITotalOrdersRepo>()));
    gh.factory<_i81.TotalOrdersHeaderBloc>(
        () => _i81.TotalOrdersHeaderBloc(gh<_i3.ITotalOrdersRepo>()));
    gh.factory<_i82.UpdateGeoLocationCubit>(
        () => _i82.UpdateGeoLocationCubit(gh<_i3.ICusGeoLocationRepo>()));
    gh.factory<_i83.UserLoginBloc>(
        () => _i83.UserLoginBloc(gh<_i3.ILoginRepo>()));
    gh.factory<_i84.VanToVanApprovalBloc>(
        () => _i84.VanToVanApprovalBloc(gh<_i3.IVanToVanApprovalRepo>()));
    gh.factory<_i85.VanToVanDetailsBloc>(
        () => _i85.VanToVanDetailsBloc(gh<_i3.IVanToVanApprovalRepo>()));
    gh.factory<_i86.VanToVanHeaderBloc>(
        () => _i86.VanToVanHeaderBloc(gh<_i3.IVanToVanApprovalRepo>()));
    gh.factory<_i87.ApprovalReasonsBloc>(
        () => _i87.ApprovalReasonsBloc(gh<_i3.IReturnApprovalRepo>()));
    gh.factory<_i88.ApprovePriceChangeBloc>(
        () => _i88.ApprovePriceChangeBloc(gh<_i3.IPriceChangeRepo>()));
    gh.factory<_i89.ApproveReturnProductBloc>(
        () => _i89.ApproveReturnProductBloc(gh<_i3.IReturnApprovalRepo>()));
    gh.factory<_i90.ArDetailsBloc>(
        () => _i90.ArDetailsBloc(gh<_i3.IArCollectionRepo>()));
    gh.factory<_i91.ArHeaderBloc>(
        () => _i91.ArHeaderBloc(gh<_i3.IArCollectionRepo>()));
    gh.factory<_i92.AssetAddInApprovalHeaderBloc>(() =>
        _i92.AssetAddInApprovalHeaderBloc(gh<_i3.IAssetAddApprovalRepo>()));
    gh.factory<_i93.AssetAddingApprovalAndRjectBlocBloc>(() =>
        _i93.AssetAddingApprovalAndRjectBlocBloc(
            gh<_i3.IAssetAddApprovalRepo>()));
    gh.factory<_i94.AssetRemovalApprvalBloc>(
        () => _i94.AssetRemovalApprvalBloc(gh<_i3.IAssetRemovalRequestRepo>()));
    gh.factory<_i95.AssetRemovelRequestHeaderBloc>(() =>
        _i95.AssetRemovelRequestHeaderBloc(gh<_i3.IAssetRemovalRequestRepo>()));
    gh.factory<_i96.CreditNoteApprovalAndRejectBloc>(() =>
        _i96.CreditNoteApprovalAndRejectBloc(
            gh<_i3.ICreditNoteApprovalRepo>()));
    gh.factory<_i97.CreditNoteApprovalLevelStatusCubit>(() =>
        _i97.CreditNoteApprovalLevelStatusCubit(
            gh<_i3.ICreditNoteApprovalRepo>()));
    gh.factory<_i98.CreditNoteDetailBloc>(
        () => _i98.CreditNoteDetailBloc(gh<_i3.ICreditNoteApprovalRepo>()));
    gh.factory<_i99.CreditNoteHeaderBloc>(
        () => _i99.CreditNoteHeaderBloc(gh<_i3.ICreditNoteApprovalRepo>()));
    gh.factory<_i100.CusDocumentsBloc>(
        () => _i100.CusDocumentsBloc(gh<_i3.IcusDocumentsModel>()));
    gh.factory<_i101.CusGeoLocationBloc>(
        () => _i101.CusGeoLocationBloc(gh<_i3.ICusGeoLocationRepo>()));
    gh.factory<_i102.CusInsArHeaderBloc>(
        () => _i102.CusInsArHeaderBloc(gh<_i3.ICusInsArRepo>()));
    gh.factory<_i103.CusInsInvoiceHeaderBloc>(
        () => _i103.CusInsInvoiceHeaderBloc(gh<_i3.ICusInsInvoiceRepo>()));
    gh.factory<_i104.CusInsTrnCountBloc>(
        () => _i104.CusInsTrnCountBloc(gh<_i3.IcusInsCountsRepo>()));
    gh.factory<_i105.CusInvDetailBlocBloc>(
        () => _i105.CusInvDetailBlocBloc(gh<_i3.ICusInsInvoiceRepo>()));
    gh.factory<_i106.CusItemsBloc>(
        () => _i106.CusItemsBloc(gh<_i3.ICusItemsRepo>()));
    gh.factory<_i107.CusOutStandingBloc>(
        () => _i107.CusOutStandingBloc(gh<_i3.ICusOutstandingRepo>()));
    gh.factory<_i108.CusProfileBloc>(
        () => _i108.CusProfileBloc(gh<_i3.ICusProfileRepo>()));
    gh.factory<_i109.CusPromoDetailBloc>(
        () => _i109.CusPromoDetailBloc(gh<_i3.ICusProtionRepo>()));
    gh.factory<_i110.CusPromotionsHeaderBloc>(
        () => _i110.CusPromotionsHeaderBloc(gh<_i3.ICusProtionRepo>()));
    gh.factory<_i111.CusSalesOrdersBloc>(
        () => _i111.CusSalesOrdersBloc(gh<_i3.ISalesOrdersRepo>()));
    gh.factory<_i112.CusSpPriceBloc>(
        () => _i112.CusSpPriceBloc(gh<_i3.ICusSpPriceRepo>()));
    gh.factory<_i113.CustomerTransactionBloc>(() =>
        _i113.CustomerTransactionBloc(gh<_i3.ICustomerTransactionRepo>()));
    gh.factory<_i114.CustomersListBlocBloc>(
        () => _i114.CustomersListBlocBloc(gh<_i3.ICusInsightsCustomersRepo>()));
    gh.factory<_i115.DisputeApprovalStatusLevelCubitCubit>(() =>
        _i115.DisputeApprovalStatusLevelCubitCubit(
            gh<_i3.IDisputeNoteApprovalRepo>()));
    gh.factory<_i116.DisputeNoteApprovalAndRejectBloc>(() =>
        _i116.DisputeNoteApprovalAndRejectBloc(
            gh<_i3.IDisputeNoteApprovalRepo>()));
    gh.factory<_i117.DisputeNoteDetailBloc>(
        () => _i117.DisputeNoteDetailBloc(gh<_i3.IDisputeNoteApprovalRepo>()));
    gh.factory<_i118.DisputeNoteHeaderBloc>(
        () => _i118.DisputeNoteHeaderBloc(gh<_i3.IDisputeNoteApprovalRepo>()));
    gh.factory<_i119.EditCusProfileBloc>(
        () => _i119.EditCusProfileBloc(gh<_i3.IProfileEditRepo>()));
    gh.factory<_i120.FIeldServiceDetailBloc>(() => _i120.FIeldServiceDetailBloc(
        gh<_i3.IFieldServiceInvoiceApprovalRepo>()));
    gh.factory<_i121.FieldServiceHeaderBloc>(() => _i121.FieldServiceHeaderBloc(
        gh<_i3.IFieldServiceInvoiceApprovalRepo>()));
    return this;
  }
}
