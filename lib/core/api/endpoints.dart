//Development

// const baseUrl = "https://sfa-muom.dev-ts.online/WS/";
// const approvalBaseUrl = 'https://sfa-muom.dev-ts.online/WS/';

//Demo
const baseUrl = "https://demo-sfa.dev-ts.online/WS/";
const approvalBaseUrl = "https://demo-sfa.dev-ts.online/WS/";
// Demo
// const baseUrl = "https://demo-sfa.dev-ts.online/WS/";
// const approvalBaseUrl = "https://demo-sfa.dev-ts.online/WS/";

//Meliha Diary UAT
// const baseUrl = "http://93.177.125.163:100/WS/";
// const approvalBaseUrl = "http://93.177.125.163:100/WS/";

const loginUrl = "Home/AppLogin";
const totalpickingandloadincountsurl = "Home/SelectTotalPickingAndLoadInCounts";
const customertransactioncountsurl = "Home/SelectCustomerTransactionCounts";
const salesorderscountsurl = "Home/SelectSalesOrdersCounts";
const loadingHeaderUrl = 'LoadIn/SelectLoadInHeader';
const loadingDetailUrl = 'LoadIn/SelectLoadInDetail';
const pickingHeaderUrl = "Picking/SelectPickingHeader";
const pickingDetailUrl = "Picking/SelectPickingDetail";
const invoiceheaderurl = 'Inv/SelectInvoiceHeader';
const invoicedetailsurl = 'Inv/SelectInvoiceDetail';
const invoicedetailtypeWiseurl = 'Inv/SelectInvoiceDetailTypeWise';
const totalordersurl = 'TotalOrder/SelectTotalOrders';
const totalorderdetailurl = 'TotalOrder/SelectTotalOrderDetail';
const arTotalCollectionUrl = 'AR/SelectARTotalCollection';
const arHeaderUrl = 'AR/SelectARHeader';
const arDeatilUrl = 'AR/SelectARDetail';
const customerInsightsCustomersUrl = "CusInsightshome/SelectAllCustomerInsight";
const cusinsTrnCountUrl = 'CusInsightshome/CusTransactioCount';
const cusInsArHeaderUrl = 'CusInsightAR/CusInsigntARHeader';
const todaysdeliveryheaderurl = 'TodayDelivery/SelectTodayDeliveyHeader';
const todaysdeliverydetailsurl = 'TodayDelivery/SelectTodayDelDetail';
const specialpriceheaderurl = 'SpecialPrice/SelectSpecialPriceHeader';
const specialPRiceCustomerurl = 'SpecialPrice/SelectCustomerForSpecialPrice';
const cusInsArTotalUrl = 'CusInsightAR/CusInsigntARCollectionCount';
const cusinsInvHUrl = 'CusInsInvoice/SelectCusInvoiceHeader';
const cusProfileUrl = 'CusInsightshome/CusInsightProfileDetail';
const cusInsInvDetailUrl = 'CusInsInvoice/SelectCusInvoiceDetail';
const cusInvTypeUrl = 'CusInsInvoice/SelectCusInvoiceDetailTypeWise';
const cusSalesOrdersUrl = 'CusInsightSalesOrder/SelectSalesOrders';
const promotionheaderurl = 'Promotion/SelectPromotionHeader';
const promotioncustomerurl = 'Promotion/SelectPromotionCustomer';
const promotiondetailsurl = 'Promotion/SelectPromotionDetail';
const cusInsOutStandingHeaderUrl =
    'CusInsightOutStanging/CusInsightOutstandingHeader';
const qualificationgroupurl = 'Promotion/SelectGroupItems';
const cusInsPromotionSelectGroupUrl = 'CusInsPromotion/SelectGroupItems';

const cusOutsandingCOuntUrl =
    'CusInsightOutStanging/CusInsightOutStandingCount';
const cusItemsUrl = 'CusInsightCusItems/SelectCusItems';
const cusProfileEditUrl = 'CusInsightCusItems/CusEditProfile';
const cusDocumentsUrl = 'CusInsightCusItems/GetCustomerDocuments';
const cusGeoLocationUrl = 'InsightGeoLocation/CusInsightGeolocationHeader';
const updateGeoLocationUrl = 'InsightGeoLocation/UpdateCustomerGeoLocation';
const cusSpPriceHeaderUrl = 'CusInsSpecialPricing/SelectCusSPecPricingHeader';
const cusPromotionHeaderUrl = 'CusInsPromotion/SelectCusPromotionHeader';
const specialPriceDetailsUrl = 'SpecialPrice/SelectSpecialPriceDetail';
const cuspromotionDetailUrl = 'CusInsPromotion/SelectCusPromotionDetail';
const userNotificationsUrl = 'Notification/SelectUserNotifications';
const notificationReplayUrl = 'Notification/InsNotificationReply';
const notiReadFlagUpdateUrl = 'Notification/UpdateNotificationReadFlag';
const outStandingHeaderUrl = 'OutStanding/SelectOutstandingHeader';
const outStandingCountUrl = 'OutStanding/SelectOutStandingCount';
const pricechangeheaderurl = 'PriceChangeApproval/PriceChangeHeader';
const priceChamgeDetailsUrl = 'PriceChangeApproval/PriceChangeDetail';
const returnApprovalsHeaderUrl = 'ReturnApproval/GetReturnReqHeader';
const returnApprovalsDetailUrl = 'ReturnApproval/GetReturnReqDetail';
const approvalReasonUrl = 'ReturnApproval/GetReasonFromDrop';
const priceChangeReasonUrl = 'PriceChangeApproval/GetReason';
const approveReturnProductUrl = 'ReturnApproval/PostReturnRequestApproval';
const approvePriceChangeUrl = 'PriceChangeApproval/PostPriceChangeApproval';
const disputeNoteApprovalHeaderUrl = 'CusOperation/DisputeNoteHeader';
const disputeNoteDetailUrl = 'CusOperation/DisputeNoteDetail';
const disputeApprovalStatusUrl = 'CusOperation/GetDisputeApprovalLevelStatus';
const disputeRejectUrl = 'CusOperation/DisputeNoteReject';
const disputeApprovalUrl = 'CusOperation/DisputeNoteApproval';
const creditNoteApprovalHeaderUrl = 'CusOperation/CreditNoteHeader';
const creditnoteDetailUrl = 'CusOperation/CreditNoteDetail';
const creditNoteApprovalLevelStatusUrl =
    'CusOperation/GetCreditNoteApprovalLevelStatus';
const creditNoteAapprovalUrl = 'CusOperation/CreditNoteApproval';
const creditNoteRejectUrl = 'CusOperation/CreditNoteReject';
const sheduledReturnHeaderUrl = 'CusOperation/ReturnReqSCHeader';
const sheduledrRetunrDetailUrl = 'CusOperation/ReturnReqSCDetails';
const partialDeliverHeaderUrl = 'CusOperation/PartialDeliveryHeader';
const partialDeliveryDetailsUrl = 'CusOperation/PartialDeliveryDetail';
const partialDeliveryReasonUrl = 'CusOperation/ResonForPartialDelivery';
const partialDeliveryApprovalUrl = 'CusOperation/PostPartialDeliveryApprovals';
const getRoutesForScUrl = 'CusOperation/SelectRouteForReturnSC';
const approveScReturnUrl = 'CusOperation/PostReturnReqSCApprovals';
const fieldServicecHeaderUrl = 'FieldService/InvoiceApprovalHeader';
const fieldServiceDetailUrl = 'FieldService/InvoiceApprovalDetails';
const fieldServiceInvoiceApproval = 'FieldService/FieldServiceInvoiceApproval';
const fieldServiceInvoiceReject = 'FieldService/FieldServiceInvoiceReject';
const vanToVanHeaderUrl = 'InventoryApproval/VantoVanApprovalHeader';
const vanToVanDetailsUrl = 'InventoryApproval/VantoVanApprovalDetails';
const vanToVanApprovalUrl = 'InventoryApproval/PostVanToVanApproval';
const assetAddRequestHeaderUrl = 'FieldService/AssetAddReqHeader';
const assetAddApprovalUrl = 'FieldService/AssetAddReqHeaderApproval';
const assetAddRejectUrl = 'FieldService/AssetAddReqHeaderReject';
const assetRemovalHeaderUrl = 'FieldService/AssetRemoveReqHeader';
const assetRemovalApproveUrl = 'FieldService/PostAssetRemovalReqApproval';
const assetRemovalRejectUrl = 'FieldService/PostAssetRemovalReqReject';
const loadTransferHeaderUrl = 'InventoryApproval/LoadTranferApprovalHeader';
const loadTransferDetailUrl = 'InventoryApproval/LoadTranferApprovalDetails';
const loadTransferApprovalUrl = 'InventoryApproval/PostLoadTranferApproval';
const journeyPlanApprovalHeaders = 'Journeyplanseq/JourneyplanseqHeader';
const journeyPlanApprovalApproval = 'Journeyplanseq/PostJourneyplanseqApproval';
const journeyPlanRejectUrl = 'Journeyplanseq/PostJourneyplanseqReject';
const materialReqHeaderUrl = 'InventoryApproval/MaterialReqHeader';
const materialReqDetailUrl = 'InventoryApproval/MaterialReqDetails';
const allRoutesUrl = 'Home/GetRoute';
const loadReqHeaderUrl = 'InventoryApproval/LoadRequestApprovalHeader';
const loadReqDetailUrl = 'InventoryApproval/LoadRequestApprovalDetails';
const loadReqApprovalUrl = 'InventoryApproval/PostLoadReqApproval';
const materialReqRejectionUrl = 'InventoryApproval/PostMaterialReqReject';
const materialReqApprovalUrl = 'InventoryApproval/PostMaterialReqApproval';
const approvalCountUrl = 'InventoryApproval/SelectPendingStatusCounts';
const salesOrderDetailsUrl = 'CusInsightSalesOrder/OrderDetails';
const inventoryReconfirmHeaderUrl = 'CusOperation/InventoryReconfirm';
const inventoryReconfirmDetailUrl = 'CusOperation/InventoryReconfirmDetails';
const inventoryReconfirmResonurl =
    'CusOperation/GetReasonForInventoryReconfirm';
const inventoryReconfirmApprovalUrl = 'CusOperation/InventoryReconfirmApproval';
const getUserForChatUrl = 'Home/GetUsers';
const mustSellHeaderurl = 'MustSellApproval/MustSellApprovalHeader';
const mustsellDetailUrl = 'MustSellApproval/MustSellApprovalDetail';
const mustSellApproveUrl = 'MustSellApproval/PostMustSellApproval';
const settlementApprovalHeaderUrl =
    'SettlementApproval/SettlementApprovalHeader';
const voidTransactionApprovalHeaderUrl =
    'VoidTransApproval/VoidTransApprovalHeader';
const voidTransactionApprovalUrl = 'VoidTransApproval/PostVoidTransApproval';
const voidTransactionRejectUrl = 'VoidTransApproval/PostVoidTransReject';
const cusSettingUrl = 'CCUserSettings/GetCCUserSettings';
const targetHeaderCountUrl = 'CusTarget/TargetHeaderCount';
const targetHeaderListUrl = 'CusTarget/HeaderRouteWiseTargets'; //sdfghjkl
const targetDetailsCountUrl = 'CusTarget/TargetDaysCount';
const targetDetailsListUrl = 'CusTarget/RouteWiseTargetDetail';
const targetDetailsGraphAmtUrl = 'CusTarget/TargetDetailAmtCount';
const targetDetailsGraphQtyUrl = 'CusTarget/TargetDetailQtyCount';
const targetPachageListUrl = 'CusTarget/RouteWisePackageDetail';
const settlementApprovalCashDetailUrl =
    "SettlementApproval/SettlementApprovalCashDetail";
const settlementApprovalPayModeDetailUrl =
    "SettlementApproval/SettlementApprovalPaymodeDetail";
const settlementApprovalPaymentDetailUrl =
    "SettlementApproval/SettlementApprovalPaymentDetail";
const settlementApprovalPostUrl = "SettlementApproval/PostSettlementApproval";
const settlementApprovalRejectUrl = "SettlementApproval/PostSettlementReject";
const activtyReviewHeaderUrl = 'CusActReview/ActReviewHeaderList';
const activityTargetsUrl = 'CusActReview/ActReviewDetailChartData';
const activitytargetSalesurl = 'CusActReview/ActRevTodaysSaleData';
const activityReviewDetailListUrl = 'CusActReview/ActRevDetailVisitData';
const outOfStockitemsUrl = 'CusMerch/GetCCOutOfStockItems';
const outOfStockitemCustomersUrl = 'CusMerch/GetCCOutOfStockItemsDetail';
const outOfStockCustomersUrl = 'CusMerch/GetCCOutOfStockCustomers';
const outOfStockCustomerDetailUrl = 'CusMerch/GetCCOutOfStockCustomersDetail';
const merchandisingGetOutofStockCountUrl = "CusMerch/GetCCOutOfStockCount";
const getTaskCountUrl = "CusMerch/GetCCTasksCount";
const getSurveyCountUrl = "CusMerch/GetCCSurveyCount";
const getDisplayCountUrl = "CusMerch/GetCCDisplayCount";
const getCusActCountUrl = "CusMerch/GetCCCusActCount";
const merchandiseTaskHeaderUrl = "CusMerch/GetCCTask";
const merchandisingSurveyUrl = 'CusMerch/GetCCSurvey';
const chartRoutesUrl = 'CusChartDashboard/GetCCRouteCount';
const chartPlannedVisitsUrl = 'CusChartDashboard/GetCCPlanVisitCount';
const chartActualVisitsUrl = 'CusChartDashboard/GetCCActualVisitCount';
const chartProductiveVisitsUrl = 'CusChartDashboard/GetCCProductiveVisitCount';
const chartNonProductiveVistisUrl =
    'CusChartDashboard/GetCCNonProductiveVisitCount';
const merchDisplayAgreementUrl = 'CusMerch/GetCCDisplayagreement';
const merchCustomerActivitiesUrl = 'CusMerch/GetCCCustomerActivity';
const trackSalesManUrl = 'CusTracking/GetTrackingDetails';
const trackAllCustomersUrl = 'CusTracking/GetCurrentLocation';
const oosCustomersUrl = 'CusMerch/GetCCOutOfStockCustomers';
const oosCustomerdetailUrl = 'CusMerch/GetCCOutOfStockCustomersDetail';
const merchCustomerRequestUrl = 'CusService/SelectReqNewRequest';
const merchCusServiceCountUrl = "CusService/SelectCusServiceCount";
const merchCreditNoteReqUrl = 'CusService/SelectReqCreditNoteReq';
const merchReturnReqUrl = 'CusService/SelectReqReturnReq';
const merchDisputeRequestUrl = 'CusService/SelectReqDisputeNoteReq';
const unScheduledVisitApproveHeaderUrl =
    'UnshceduledCusVisitApproval/UnSchCusVisitApprovalHeader';
const unScheduledVisitApproveUrl =
    'UnshceduledCusVisitApproval/ApproveUnSchCusVisit';
const unScheduledVisitRejectUrl =
    'UnshceduledCusVisitApproval/RejectUnSchCusVisit';
const autoUpdateUrl = 'AppService/SelVersionDetails';
const cusInsightCustomersCount = 'CusInsightshome/SelectCustomerInsightCount';
const customerFocHeaderUrl = 'CusFreeSampleApproval/getFOCHeaderList';
const customerFocDetailUrl = 'CusFreeSampleApproval/getFOCDetailList';
const customerFocApprovalUrl = 'CusFreeSampleApproval/PostFOCApproval';
const customerFocRejectUrl = 'CusFreeSampleApproval/PostFOCRejection';
const freesampleApprovalHeaderUrl =
    'CusFreeSampleApproval/GetFreeSampleApprovalHeader';
const freesampleDetailUrl = 'CusFreeSampleApproval/getFreeSampleDetailList';
const submitfreesampleurl = 'CusFreeSampleApproval/PostFreeSamplApproval';
const freesampleReasonUrl = 'CusFreeSampleApproval/GetFreeSampleReason';
const cusOverrideApprovalUrl = 'CusFreeSampleApproval/GetOverRideDetails';
const cusOverApprovRejectUrl =
    'CusFreeSampleApproval/PostOverRideApproveReject';
const scheduleReturnApprovalReasonUrl = 'CusOperation/GetReasonForReturnSc';
