import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ar')
  ];

  /// No description provided for @languageSelection.
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get languageSelection;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @arabic.
  ///
  /// In en, this message translates to:
  /// **'Arabic'**
  String get arabic;

  /// No description provided for @changeLanguage.
  ///
  /// In en, this message translates to:
  /// **'Change Language'**
  String get changeLanguage;

  /// No description provided for @inventory_transactions.
  ///
  /// In en, this message translates to:
  /// **'Inventory Transactions'**
  String get inventory_transactions;

  /// No description provided for @customer_transactions.
  ///
  /// In en, this message translates to:
  /// **'Customer Transactions'**
  String get customer_transactions;

  /// No description provided for @sales_orders.
  ///
  /// In en, this message translates to:
  /// **'Sales Orders'**
  String get sales_orders;

  /// No description provided for @other_options.
  ///
  /// In en, this message translates to:
  /// **'Other Options'**
  String get other_options;

  /// No description provided for @powered_by.
  ///
  /// In en, this message translates to:
  /// **'POWERED BY'**
  String get powered_by;

  /// No description provided for @picking.
  ///
  /// In en, this message translates to:
  /// **'Picking'**
  String get picking;

  /// No description provided for @not_started.
  ///
  /// In en, this message translates to:
  /// **'Not Started'**
  String get not_started;

  /// No description provided for @ongoing.
  ///
  /// In en, this message translates to:
  /// **'Ongoing'**
  String get ongoing;

  /// No description provided for @completed.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get completed;

  /// No description provided for @load_in.
  ///
  /// In en, this message translates to:
  /// **'Load in'**
  String get load_in;

  /// No description provided for @pending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get pending;

  /// No description provided for @rejected.
  ///
  /// In en, this message translates to:
  /// **'Rejected'**
  String get rejected;

  /// No description provided for @routes.
  ///
  /// In en, this message translates to:
  /// **'Routes'**
  String get routes;

  /// No description provided for @aed.
  ///
  /// In en, this message translates to:
  /// **'AED'**
  String get aed;

  /// No description provided for @invoices.
  ///
  /// In en, this message translates to:
  /// **'Invoices'**
  String get invoices;

  /// No description provided for @ar_collection.
  ///
  /// In en, this message translates to:
  /// **'Ar Collection'**
  String get ar_collection;

  /// No description provided for @total_orders.
  ///
  /// In en, this message translates to:
  /// **'Total Orders'**
  String get total_orders;

  /// No description provided for @todays_deliveries.
  ///
  /// In en, this message translates to:
  /// **'Today\'s Deliveries'**
  String get todays_deliveries;

  /// No description provided for @approvals.
  ///
  /// In en, this message translates to:
  /// **'Approvals'**
  String get approvals;

  /// No description provided for @customer_insights.
  ///
  /// In en, this message translates to:
  /// **'Customer Insights'**
  String get customer_insights;

  /// No description provided for @tracking.
  ///
  /// In en, this message translates to:
  /// **'Tracking'**
  String get tracking;

  /// No description provided for @promotions.
  ///
  /// In en, this message translates to:
  /// **'Promotions'**
  String get promotions;

  /// No description provided for @special_price.
  ///
  /// In en, this message translates to:
  /// **'Special Price'**
  String get special_price;

  /// No description provided for @outstanding.
  ///
  /// In en, this message translates to:
  /// **'Outstanding'**
  String get outstanding;

  /// No description provided for @target.
  ///
  /// In en, this message translates to:
  /// **'Target'**
  String get target;

  /// No description provided for @activity_review.
  ///
  /// In en, this message translates to:
  /// **'Activity Review'**
  String get activity_review;

  /// No description provided for @merchandising.
  ///
  /// In en, this message translates to:
  /// **'Merchandising'**
  String get merchandising;

  /// No description provided for @journeyPlan.
  ///
  /// In en, this message translates to:
  /// **'Journey plan'**
  String get journeyPlan;

  /// No description provided for @searchItems.
  ///
  /// In en, this message translates to:
  /// **'Search Items'**
  String get searchItems;

  /// No description provided for @pendingApprovals.
  ///
  /// In en, this message translates to:
  /// **'Pending Approvals'**
  String get pendingApprovals;

  /// No description provided for @approvedRequests.
  ///
  /// In en, this message translates to:
  /// **'Approved Requests'**
  String get approvedRequests;

  /// No description provided for @canceledRequests.
  ///
  /// In en, this message translates to:
  /// **'Cancelled Requests'**
  String get canceledRequests;

  /// No description provided for @rejectedRequests.
  ///
  /// In en, this message translates to:
  /// **'Rejected Requests'**
  String get rejectedRequests;

  /// No description provided for @noDataAvailable.
  ///
  /// In en, this message translates to:
  /// **'No Data Available'**
  String get noDataAvailable;

  /// No description provided for @alert.
  ///
  /// In en, this message translates to:
  /// **'Alert'**
  String get alert;

  /// No description provided for @proceed.
  ///
  /// In en, this message translates to:
  /// **'Proceed'**
  String get proceed;

  /// No description provided for @somethingWentWrong.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong, please try again later'**
  String get somethingWentWrong;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'Ok'**
  String get ok;

  /// No description provided for @doYouWantToApproveThisProduct.
  ///
  /// In en, this message translates to:
  /// **'Do you Want to Approve this product?'**
  String get doYouWantToApproveThisProduct;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @approve.
  ///
  /// In en, this message translates to:
  /// **'Approve'**
  String get approve;

  /// No description provided for @doYouWantToRejectThisProduct.
  ///
  /// In en, this message translates to:
  /// **'Do you Want to Reject this product?'**
  String get doYouWantToRejectThisProduct;

  /// No description provided for @reject.
  ///
  /// In en, this message translates to:
  /// **'Reject'**
  String get reject;

  /// No description provided for @approved.
  ///
  /// In en, this message translates to:
  /// **'Approved'**
  String get approved;

  /// No description provided for @fieldServices.
  ///
  /// In en, this message translates to:
  /// **'Field Services'**
  String get fieldServices;

  /// No description provided for @fieldServicesDetail.
  ///
  /// In en, this message translates to:
  /// **'Field Service Detail'**
  String get fieldServicesDetail;

  /// No description provided for @item.
  ///
  /// In en, this message translates to:
  /// **'Item'**
  String get item;

  /// No description provided for @uom.
  ///
  /// In en, this message translates to:
  /// **'UOM'**
  String get uom;

  /// No description provided for @qty.
  ///
  /// In en, this message translates to:
  /// **'Qty'**
  String get qty;

  /// No description provided for @searchhere.
  ///
  /// In en, this message translates to:
  /// **'Search Here'**
  String get searchhere;

  /// No description provided for @allpromotions.
  ///
  /// In en, this message translates to:
  /// **'All Promotions'**
  String get allpromotions;

  /// No description provided for @details.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get details;

  /// No description provided for @promotiondetails.
  ///
  /// In en, this message translates to:
  /// **'Promotion Details'**
  String get promotiondetails;

  /// No description provided for @customers.
  ///
  /// In en, this message translates to:
  /// **'Customers'**
  String get customers;

  /// No description provided for @qualificationgroup.
  ///
  /// In en, this message translates to:
  /// **'Qualification Group'**
  String get qualificationgroup;

  /// No description provided for @viewitems.
  ///
  /// In en, this message translates to:
  /// **'View Items'**
  String get viewitems;

  /// No description provided for @assignmentgroup.
  ///
  /// In en, this message translates to:
  /// **'Assignment Group'**
  String get assignmentgroup;

  /// No description provided for @minquaqty.
  ///
  /// In en, this message translates to:
  /// **'Min Qua. Qty'**
  String get minquaqty;

  /// No description provided for @maxquaqty.
  ///
  /// In en, this message translates to:
  /// **'Max Qua Qty'**
  String get maxquaqty;

  /// No description provided for @assigmntqty.
  ///
  /// In en, this message translates to:
  /// **'Ass Qty'**
  String get assigmntqty;

  /// No description provided for @specialpricing.
  ///
  /// In en, this message translates to:
  /// **'Special Pricing'**
  String get specialpricing;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @specialpricingcustomers.
  ///
  /// In en, this message translates to:
  /// **'Special Pricing Customers'**
  String get specialpricingcustomers;

  /// No description provided for @searchcustomers.
  ///
  /// In en, this message translates to:
  /// **'Search Customers'**
  String get searchcustomers;

  /// No description provided for @assignedcustomers.
  ///
  /// In en, this message translates to:
  /// **'Assigned Customers'**
  String get assignedcustomers;

  /// No description provided for @searchproduct.
  ///
  /// In en, this message translates to:
  /// **'Search Product'**
  String get searchproduct;

  /// No description provided for @items.
  ///
  /// In en, this message translates to:
  /// **'Items'**
  String get items;

  /// No description provided for @stdPrice.
  ///
  /// In en, this message translates to:
  /// **'Std Price'**
  String get stdPrice;

  /// No description provided for @spclprice.
  ///
  /// In en, this message translates to:
  /// **'Spcl Price'**
  String get spclprice;

  /// No description provided for @promotioncustomers.
  ///
  /// In en, this message translates to:
  /// **'Promotion Customers'**
  String get promotioncustomers;

  /// No description provided for @materialRequest.
  ///
  /// In en, this message translates to:
  /// **'Material Request'**
  String get materialRequest;

  /// No description provided for @materialRequestDetails.
  ///
  /// In en, this message translates to:
  /// **'Material Request Detail'**
  String get materialRequestDetails;

  /// No description provided for @productStatusUpdate.
  ///
  /// In en, this message translates to:
  /// **'Product Status Update'**
  String get productStatusUpdate;

  /// No description provided for @reqQty.
  ///
  /// In en, this message translates to:
  /// **'Req Qty'**
  String get reqQty;

  /// No description provided for @apprQty.
  ///
  /// In en, this message translates to:
  /// **'Appr Qty'**
  String get apprQty;

  /// No description provided for @loadRequest.
  ///
  /// In en, this message translates to:
  /// **'Load Request'**
  String get loadRequest;

  /// No description provided for @loadRequestDetails.
  ///
  /// In en, this message translates to:
  /// **'Load Request Details'**
  String get loadRequestDetails;

  /// No description provided for @expDate.
  ///
  /// In en, this message translates to:
  /// **'Exp Date'**
  String get expDate;

  /// No description provided for @trAgain.
  ///
  /// In en, this message translates to:
  /// **'Try Again'**
  String get trAgain;

  /// No description provided for @pleaseMakeSureToApproveAndReject.
  ///
  /// In en, this message translates to:
  /// **'Please make sure you have approved or rejected all the products'**
  String get pleaseMakeSureToApproveAndReject;

  /// No description provided for @doyouWantToProceed.
  ///
  /// In en, this message translates to:
  /// **'Do you Want to Proceed'**
  String get doyouWantToProceed;

  /// No description provided for @inventoryReconfirmation.
  ///
  /// In en, this message translates to:
  /// **'Inventory Reconfirmation'**
  String get inventoryReconfirmation;

  /// No description provided for @searchHere.
  ///
  /// In en, this message translates to:
  /// **'Search Here'**
  String get searchHere;

  /// No description provided for @inventoryReconfirmationDetails.
  ///
  /// In en, this message translates to:
  /// **'Inventory Reconfirmation Detail'**
  String get inventoryReconfirmationDetails;

  /// No description provided for @short.
  ///
  /// In en, this message translates to:
  /// **'Short'**
  String get short;

  /// No description provided for @excess.
  ///
  /// In en, this message translates to:
  /// **'Excess'**
  String get excess;

  /// No description provided for @selectReason.
  ///
  /// In en, this message translates to:
  /// **'Select Reason'**
  String get selectReason;

  /// No description provided for @youShouldApproveOrRejectAndSpecifyReason.
  ///
  /// In en, this message translates to:
  /// **'You should approve or reject all the items listed here. In case of rejection, please specify the reason.'**
  String get youShouldApproveOrRejectAndSpecifyReason;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @voidTransaction.
  ///
  /// In en, this message translates to:
  /// **'Void Transaction Approval'**
  String get voidTransaction;

  /// No description provided for @rejectedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Rejected Successfully'**
  String get rejectedSuccessfully;

  /// No description provided for @rejectSelected.
  ///
  /// In en, this message translates to:
  /// **'Reject Selected'**
  String get rejectSelected;

  /// No description provided for @approvedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Approved Successfully'**
  String get approvedSuccessfully;

  /// No description provided for @approveSelected.
  ///
  /// In en, this message translates to:
  /// **'Approve Selected'**
  String get approveSelected;

  /// No description provided for @phyStock.
  ///
  /// In en, this message translates to:
  /// **'Phy Stk'**
  String get phyStock;

  /// No description provided for @mustSell.
  ///
  /// In en, this message translates to:
  /// **'Must Sell'**
  String get mustSell;

  /// No description provided for @route.
  ///
  /// In en, this message translates to:
  /// **'Route'**
  String get route;

  /// No description provided for @msutSellApproval.
  ///
  /// In en, this message translates to:
  /// **'Must Sell Approval'**
  String get msutSellApproval;

  /// No description provided for @mustSellDetail.
  ///
  /// In en, this message translates to:
  /// **'Must Sell Detail'**
  String get mustSellDetail;

  /// No description provided for @noDataFound.
  ///
  /// In en, this message translates to:
  /// **'No Data Found'**
  String get noDataFound;

  /// No description provided for @settlementApproval.
  ///
  /// In en, this message translates to:
  /// **'Settlement Approval'**
  String get settlementApproval;

  /// No description provided for @allRouteTypes.
  ///
  /// In en, this message translates to:
  /// **'All Route Types'**
  String get allRouteTypes;

  /// No description provided for @settlementApprovalDetail.
  ///
  /// In en, this message translates to:
  /// **'Settlement Approval Detail'**
  String get settlementApprovalDetail;

  /// No description provided for @varianceLimit.
  ///
  /// In en, this message translates to:
  /// **'Variance Limit'**
  String get varianceLimit;

  /// No description provided for @noDataAvailableInVariance.
  ///
  /// In en, this message translates to:
  /// **'No Data Available in Variance'**
  String get noDataAvailableInVariance;

  /// No description provided for @totalChecks.
  ///
  /// In en, this message translates to:
  /// **'Total Checks'**
  String get totalChecks;

  /// No description provided for @cashInvoices.
  ///
  /// In en, this message translates to:
  /// **'Cash Invoices'**
  String get cashInvoices;

  /// No description provided for @arCollectionCash.
  ///
  /// In en, this message translates to:
  /// **'AR Collection Cash'**
  String get arCollectionCash;

  /// No description provided for @advanceCollectionCash.
  ///
  /// In en, this message translates to:
  /// **'Advance Collection Cash'**
  String get advanceCollectionCash;

  /// No description provided for @inventoryVarianceDebit.
  ///
  /// In en, this message translates to:
  /// **'Inventory Variance - Debit Note'**
  String get inventoryVarianceDebit;

  /// No description provided for @cumulativeVarience.
  ///
  /// In en, this message translates to:
  /// **'Cumulative Variance'**
  String get cumulativeVarience;

  /// No description provided for @pettyCash.
  ///
  /// In en, this message translates to:
  /// **'Petty Cash'**
  String get pettyCash;

  /// No description provided for @totalCash.
  ///
  /// In en, this message translates to:
  /// **'Total Cash'**
  String get totalCash;

  /// No description provided for @noDataAvailableInCashDetails.
  ///
  /// In en, this message translates to:
  /// **'No Data Available in Cash Details'**
  String get noDataAvailableInCashDetails;

  /// No description provided for @collected.
  ///
  /// In en, this message translates to:
  /// **'Collected'**
  String get collected;

  /// No description provided for @variance.
  ///
  /// In en, this message translates to:
  /// **'Variance'**
  String get variance;

  /// No description provided for @noDataAvailableInPaymentMode.
  ///
  /// In en, this message translates to:
  /// **'No Data Available in Payment Mode'**
  String get noDataAvailableInPaymentMode;

  /// No description provided for @actionTakenRequests.
  ///
  /// In en, this message translates to:
  /// **'Action Taken Requests'**
  String get actionTakenRequests;

  /// No description provided for @approvedAndHold.
  ///
  /// In en, this message translates to:
  /// **'Approved and Hold Requests'**
  String get approvedAndHold;

  /// No description provided for @total_invoice_amount.
  ///
  /// In en, this message translates to:
  /// **'Total Invoice Amount'**
  String get total_invoice_amount;

  /// No description provided for @invoice_details.
  ///
  /// In en, this message translates to:
  /// **'Invoice Details'**
  String get invoice_details;

  /// No description provided for @total_amount.
  ///
  /// In en, this message translates to:
  /// **'Total Amount'**
  String get total_amount;

  /// No description provided for @total_collection.
  ///
  /// In en, this message translates to:
  /// **'Total Collection'**
  String get total_collection;

  /// No description provided for @hard_cash.
  ///
  /// In en, this message translates to:
  /// **'Hard Cash'**
  String get hard_cash;

  /// No description provided for @online_payment.
  ///
  /// In en, this message translates to:
  /// **'Online Payment'**
  String get online_payment;

  /// No description provided for @pos.
  ///
  /// In en, this message translates to:
  /// **'POS'**
  String get pos;

  /// No description provided for @cheque.
  ///
  /// In en, this message translates to:
  /// **'Cheque'**
  String get cheque;

  /// No description provided for @ar_detail.
  ///
  /// In en, this message translates to:
  /// **'AR Detail'**
  String get ar_detail;

  /// No description provided for @collected_amount.
  ///
  /// In en, this message translates to:
  /// **'Collected Amount'**
  String get collected_amount;

  /// No description provided for @preview_image.
  ///
  /// In en, this message translates to:
  /// **'Preview Image'**
  String get preview_image;

  /// No description provided for @mode.
  ///
  /// In en, this message translates to:
  /// **'Mode'**
  String get mode;

  /// No description provided for @bank.
  ///
  /// In en, this message translates to:
  /// **'Bank'**
  String get bank;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// No description provided for @invoice_no.
  ///
  /// In en, this message translates to:
  /// **'Invoice No.'**
  String get invoice_no;

  /// No description provided for @inv_amt.
  ///
  /// In en, this message translates to:
  /// **'Inv Amt'**
  String get inv_amt;

  /// No description provided for @alct_amt.
  ///
  /// In en, this message translates to:
  /// **'Alct Amt'**
  String get alct_amt;

  /// No description provided for @partial_delivery.
  ///
  /// In en, this message translates to:
  /// **'Partial Delivery'**
  String get partial_delivery;

  /// No description provided for @price_change.
  ///
  /// In en, this message translates to:
  /// **'Price Change'**
  String get price_change;

  /// No description provided for @ret_urn.
  ///
  /// In en, this message translates to:
  /// **'Return'**
  String get ret_urn;

  /// No description provided for @scheduled_return.
  ///
  /// In en, this message translates to:
  /// **'Scheduled Return'**
  String get scheduled_return;

  /// No description provided for @dispute_request.
  ///
  /// In en, this message translates to:
  /// **'Dispute Request'**
  String get dispute_request;

  /// No description provided for @credit_memo.
  ///
  /// In en, this message translates to:
  /// **'Credit Note'**
  String get credit_memo;

  /// No description provided for @add_assets.
  ///
  /// In en, this message translates to:
  /// **'Asset Adding'**
  String get add_assets;

  /// No description provided for @remove_assets.
  ///
  /// In en, this message translates to:
  /// **'Assets Removal'**
  String get remove_assets;

  /// No description provided for @truck_to_truck.
  ///
  /// In en, this message translates to:
  /// **'Van to Van'**
  String get truck_to_truck;

  /// No description provided for @load_transfer.
  ///
  /// In en, this message translates to:
  /// **'Load Transfer'**
  String get load_transfer;

  /// No description provided for @outStandingInvoices.
  ///
  /// In en, this message translates to:
  /// **'Outstanding Invoices'**
  String get outStandingInvoices;

  /// No description provided for @due.
  ///
  /// In en, this message translates to:
  /// **'Due'**
  String get due;

  /// No description provided for @overdue.
  ///
  /// In en, this message translates to:
  /// **'Overdue'**
  String get overdue;

  /// No description provided for @totaloutstanding.
  ///
  /// In en, this message translates to:
  /// **'Total Outstanding'**
  String get totaloutstanding;

  /// No description provided for @typeyourReply.
  ///
  /// In en, this message translates to:
  /// **'Type Your Reply'**
  String get typeyourReply;

  /// No description provided for @notification.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification;

  /// No description provided for @dailyActivityReview.
  ///
  /// In en, this message translates to:
  /// **'Daily Activity Review'**
  String get dailyActivityReview;

  /// No description provided for @pendingReview.
  ///
  /// In en, this message translates to:
  /// **'Pending Review'**
  String get pendingReview;

  /// No description provided for @start.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get start;

  /// No description provided for @end.
  ///
  /// In en, this message translates to:
  /// **'End'**
  String get end;

  /// No description provided for @duration.
  ///
  /// In en, this message translates to:
  /// **'Duration'**
  String get duration;

  /// No description provided for @visits.
  ///
  /// In en, this message translates to:
  /// **'Visits'**
  String get visits;

  /// No description provided for @sales.
  ///
  /// In en, this message translates to:
  /// **'Sales'**
  String get sales;

  /// No description provided for @cash.
  ///
  /// In en, this message translates to:
  /// **'Cash'**
  String get cash;

  /// No description provided for @credit.
  ///
  /// In en, this message translates to:
  /// **'Credit'**
  String get credit;

  /// No description provided for @returns.
  ///
  /// In en, this message translates to:
  /// **'Return'**
  String get returns;

  /// No description provided for @collection.
  ///
  /// In en, this message translates to:
  /// **'Collection'**
  String get collection;

  /// No description provided for @productiveVisits.
  ///
  /// In en, this message translates to:
  /// **'Productive Visits'**
  String get productiveVisits;

  /// No description provided for @totalVisits.
  ///
  /// In en, this message translates to:
  /// **'Total Visits'**
  String get totalVisits;

  /// No description provided for @todaysSales.
  ///
  /// In en, this message translates to:
  /// **'Today\'s Sales'**
  String get todaysSales;

  /// No description provided for @daytoAcieveTarget.
  ///
  /// In en, this message translates to:
  /// **'Day to Achieve Target'**
  String get daytoAcieveTarget;

  /// No description provided for @shortage.
  ///
  /// In en, this message translates to:
  /// **'Shortage'**
  String get shortage;

  /// No description provided for @proRatedTarget.
  ///
  /// In en, this message translates to:
  /// **'Pro Rated Target'**
  String get proRatedTarget;

  /// No description provided for @totalworkingDays.
  ///
  /// In en, this message translates to:
  /// **'Total Working Days'**
  String get totalworkingDays;

  /// No description provided for @workingDays.
  ///
  /// In en, this message translates to:
  /// **'Working Days'**
  String get workingDays;

  /// No description provided for @totalTarget.
  ///
  /// In en, this message translates to:
  /// **'Total Target'**
  String get totalTarget;

  /// No description provided for @online.
  ///
  /// In en, this message translates to:
  /// **'Online'**
  String get online;

  /// No description provided for @approvedTransaction.
  ///
  /// In en, this message translates to:
  /// **'Approved Transaction'**
  String get approvedTransaction;

  /// No description provided for @rejectedTransaction.
  ///
  /// In en, this message translates to:
  /// **'Rejected Transactions'**
  String get rejectedTransaction;

  /// No description provided for @fieldServiceInvoice.
  ///
  /// In en, this message translates to:
  /// **'Field Service Invoice'**
  String get fieldServiceInvoice;

  /// No description provided for @customer.
  ///
  /// In en, this message translates to:
  /// **'Customer'**
  String get customer;

  /// No description provided for @kindlySelectRouteToViewTheCustomers.
  ///
  /// In en, this message translates to:
  /// **'Kindly select a route to view the customers'**
  String get kindlySelectRouteToViewTheCustomers;

  /// No description provided for @searchRoute.
  ///
  /// In en, this message translates to:
  /// **'Search route'**
  String get searchRoute;

  /// No description provided for @noRoutesAvailable.
  ///
  /// In en, this message translates to:
  /// **'No routes available'**
  String get noRoutesAvailable;

  /// No description provided for @selectRoute.
  ///
  /// In en, this message translates to:
  /// **'Select a Route'**
  String get selectRoute;

  /// No description provided for @searchRoutes.
  ///
  /// In en, this message translates to:
  /// **'Search routes'**
  String get searchRoutes;

  /// No description provided for @routeWisetargets.
  ///
  /// In en, this message translates to:
  /// **'Route wise Targets'**
  String get routeWisetargets;

  /// No description provided for @targetAmount.
  ///
  /// In en, this message translates to:
  /// **'Target Amount'**
  String get targetAmount;

  /// No description provided for @targetQuantity.
  ///
  /// In en, this message translates to:
  /// **'Target Quantity'**
  String get targetQuantity;

  /// No description provided for @targetPackage.
  ///
  /// In en, this message translates to:
  /// **'Target Package'**
  String get targetPackage;

  /// No description provided for @achvdAmt.
  ///
  /// In en, this message translates to:
  /// **'Achvd Amt'**
  String get achvdAmt;

  /// No description provided for @achvdQty.
  ///
  /// In en, this message translates to:
  /// **'Achvd Qty'**
  String get achvdQty;

  /// No description provided for @routeTarget.
  ///
  /// In en, this message translates to:
  /// **'Route Target'**
  String get routeTarget;

  /// No description provided for @searchPackages.
  ///
  /// In en, this message translates to:
  /// **'Search Packages'**
  String get searchPackages;

  /// No description provided for @packageWiseTarget.
  ///
  /// In en, this message translates to:
  /// **'Package wise target'**
  String get packageWiseTarget;

  /// No description provided for @achievedQuantity.
  ///
  /// In en, this message translates to:
  /// **'Achieved Quantity'**
  String get achievedQuantity;

  /// No description provided for @achievedAmount.
  ///
  /// In en, this message translates to:
  /// **'Achieved Amount'**
  String get achievedAmount;

  /// No description provided for @month.
  ///
  /// In en, this message translates to:
  /// **'Month'**
  String get month;

  /// No description provided for @working.
  ///
  /// In en, this message translates to:
  /// **'Working'**
  String get working;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @days.
  ///
  /// In en, this message translates to:
  /// **'Days'**
  String get days;

  /// No description provided for @gapAmount.
  ///
  /// In en, this message translates to:
  /// **'Gap Amount'**
  String get gapAmount;

  /// No description provided for @monthlyGapAmount.
  ///
  /// In en, this message translates to:
  /// **'Monthly Gap Amount'**
  String get monthlyGapAmount;

  /// No description provided for @gapQuantity.
  ///
  /// In en, this message translates to:
  /// **'Gap Quantity'**
  String get gapQuantity;

  /// No description provided for @monthlyGapQuantity.
  ///
  /// In en, this message translates to:
  /// **'Monthly Gap Quantity'**
  String get monthlyGapQuantity;

  /// No description provided for @achieved.
  ///
  /// In en, this message translates to:
  /// **'Achieved'**
  String get achieved;

  /// No description provided for @monthlyGap.
  ///
  /// In en, this message translates to:
  /// **'Monthly Gap'**
  String get monthlyGap;

  /// No description provided for @gap.
  ///
  /// In en, this message translates to:
  /// **'Gap'**
  String get gap;

  /// No description provided for @gapQty.
  ///
  /// In en, this message translates to:
  /// **'Gap Qty'**
  String get gapQty;

  /// No description provided for @order_details.
  ///
  /// In en, this message translates to:
  /// **'Order Details'**
  String get order_details;

  /// No description provided for @sub_total.
  ///
  /// In en, this message translates to:
  /// **'Subtotal'**
  String get sub_total;

  /// No description provided for @customerInsights.
  ///
  /// In en, this message translates to:
  /// **'Customer Insights'**
  String get customerInsights;

  /// No description provided for @customerTransaction.
  ///
  /// In en, this message translates to:
  /// **'Customer Transactions'**
  String get customerTransaction;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @from.
  ///
  /// In en, this message translates to:
  /// **'From'**
  String get from;

  /// No description provided for @to.
  ///
  /// In en, this message translates to:
  /// **'To'**
  String get to;

  /// No description provided for @serviceJobs.
  ///
  /// In en, this message translates to:
  /// **'Service Jobs'**
  String get serviceJobs;

  /// No description provided for @otherOptions.
  ///
  /// In en, this message translates to:
  /// **'Other Options'**
  String get otherOptions;

  /// No description provided for @profileDetails.
  ///
  /// In en, this message translates to:
  /// **'Profile Details'**
  String get profileDetails;

  /// No description provided for @editProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get editProfile;

  /// No description provided for @customerItemList.
  ///
  /// In en, this message translates to:
  /// **'Customer Item list'**
  String get customerItemList;

  /// No description provided for @documents.
  ///
  /// In en, this message translates to:
  /// **'Documents'**
  String get documents;

  /// No description provided for @geolocation.
  ///
  /// In en, this message translates to:
  /// **'Geolocation'**
  String get geolocation;

  /// No description provided for @phoneNumberNotAvailable.
  ///
  /// In en, this message translates to:
  /// **'Phone number not available'**
  String get phoneNumberNotAvailable;

  /// No description provided for @whatsAppNtAvailable.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp not available'**
  String get whatsAppNtAvailable;

  /// No description provided for @locationNotAvailable.
  ///
  /// In en, this message translates to:
  /// **'Location not available'**
  String get locationNotAvailable;

  /// No description provided for @merchandisingDashBoard.
  ///
  /// In en, this message translates to:
  /// **'Merchandising Dashboard'**
  String get merchandisingDashBoard;

  /// No description provided for @inventoryMonitoring.
  ///
  /// In en, this message translates to:
  /// **'Inventory Monitoring'**
  String get inventoryMonitoring;

  /// No description provided for @outOfStocks.
  ///
  /// In en, this message translates to:
  /// **'Out of Stock'**
  String get outOfStocks;

  /// No description provided for @outletActivities.
  ///
  /// In en, this message translates to:
  /// **'Outlet Activities'**
  String get outletActivities;

  /// No description provided for @customerServices.
  ///
  /// In en, this message translates to:
  /// **'Customer Services'**
  String get customerServices;

  /// No description provided for @customerRequests.
  ///
  /// In en, this message translates to:
  /// **'Customer Requests'**
  String get customerRequests;

  /// No description provided for @newRequests.
  ///
  /// In en, this message translates to:
  /// **'New Requests'**
  String get newRequests;

  /// No description provided for @respondedRequests.
  ///
  /// In en, this message translates to:
  /// **'Responded Requests'**
  String get respondedRequests;

  /// No description provided for @creditNoteRequests.
  ///
  /// In en, this message translates to:
  /// **'Credit Note Request'**
  String get creditNoteRequests;

  /// No description provided for @requested.
  ///
  /// In en, this message translates to:
  /// **'Requested'**
  String get requested;

  /// No description provided for @disputeNoteRequest.
  ///
  /// In en, this message translates to:
  /// **'Dispute Note Request'**
  String get disputeNoteRequest;

  /// No description provided for @returnRequest.
  ///
  /// In en, this message translates to:
  /// **'Return Request'**
  String get returnRequest;

  /// No description provided for @outOfStockCustomers.
  ///
  /// In en, this message translates to:
  /// **'Out Of Stock Customers'**
  String get outOfStockCustomers;

  /// No description provided for @outOfStockItems.
  ///
  /// In en, this message translates to:
  /// **'Out Of Stock Items'**
  String get outOfStockItems;

  /// No description provided for @completedActivities.
  ///
  /// In en, this message translates to:
  /// **'Completed Activities'**
  String get completedActivities;

  /// No description provided for @openActivities.
  ///
  /// In en, this message translates to:
  /// **'Open Activities'**
  String get openActivities;

  /// No description provided for @customerActivities.
  ///
  /// In en, this message translates to:
  /// **'Customer Activities'**
  String get customerActivities;

  /// No description provided for @activeAgreements.
  ///
  /// In en, this message translates to:
  /// **'Active Agreements'**
  String get activeAgreements;

  /// No description provided for @newAgreements.
  ///
  /// In en, this message translates to:
  /// **'New Agreements'**
  String get newAgreements;

  /// No description provided for @displayAgreement.
  ///
  /// In en, this message translates to:
  /// **'Display Agreements'**
  String get displayAgreement;

  /// No description provided for @completedSurveys.
  ///
  /// In en, this message translates to:
  /// **'Completed Surveys'**
  String get completedSurveys;

  /// No description provided for @assignedSurveys.
  ///
  /// In en, this message translates to:
  /// **'Assigned Surveys'**
  String get assignedSurveys;

  /// No description provided for @survey.
  ///
  /// In en, this message translates to:
  /// **'Survey'**
  String get survey;

  /// No description provided for @tasks.
  ///
  /// In en, this message translates to:
  /// **'Task'**
  String get tasks;

  /// No description provided for @assignedTasks.
  ///
  /// In en, this message translates to:
  /// **'Assigned Tasks'**
  String get assignedTasks;

  /// No description provided for @completedTasks.
  ///
  /// In en, this message translates to:
  /// **'Completed Tasks'**
  String get completedTasks;

  /// No description provided for @allInvoices.
  ///
  /// In en, this message translates to:
  /// **'All invoices'**
  String get allInvoices;

  /// No description provided for @totalInvoiceAmount.
  ///
  /// In en, this message translates to:
  /// **'Total Invoice Amount'**
  String get totalInvoiceAmount;

  /// No description provided for @invoiceDetails.
  ///
  /// In en, this message translates to:
  /// **'Invoice Detail'**
  String get invoiceDetails;

  /// No description provided for @type.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get type;

  /// No description provided for @totalAmount.
  ///
  /// In en, this message translates to:
  /// **'Total Amount'**
  String get totalAmount;

  /// No description provided for @value.
  ///
  /// In en, this message translates to:
  /// **'Value'**
  String get value;

  /// No description provided for @discount.
  ///
  /// In en, this message translates to:
  /// **'Discount'**
  String get discount;

  /// No description provided for @vat.
  ///
  /// In en, this message translates to:
  /// **'Vat'**
  String get vat;

  /// No description provided for @subTotal.
  ///
  /// In en, this message translates to:
  /// **'Subtotal'**
  String get subTotal;

  /// No description provided for @totalCollection.
  ///
  /// In en, this message translates to:
  /// **'Total Collection'**
  String get totalCollection;

  /// No description provided for @hardCash.
  ///
  /// In en, this message translates to:
  /// **'Hard Cash'**
  String get hardCash;

  /// No description provided for @onlinePAyment.
  ///
  /// In en, this message translates to:
  /// **'Online Payment'**
  String get onlinePAyment;

  /// No description provided for @searchARCollections.
  ///
  /// In en, this message translates to:
  /// **'Search AR Collections'**
  String get searchARCollections;

  /// No description provided for @collectedAmount.
  ///
  /// In en, this message translates to:
  /// **'Collected Amount'**
  String get collectedAmount;

  /// No description provided for @previewImage.
  ///
  /// In en, this message translates to:
  /// **'Preview Image'**
  String get previewImage;

  /// No description provided for @chequeDate.
  ///
  /// In en, this message translates to:
  /// **'Cheque Date'**
  String get chequeDate;

  /// No description provided for @invoiceNumber.
  ///
  /// In en, this message translates to:
  /// **'Invoice No'**
  String get invoiceNumber;

  /// No description provided for @invoiceAmount.
  ///
  /// In en, this message translates to:
  /// **'Inv Amt'**
  String get invoiceAmount;

  /// No description provided for @tryAgain.
  ///
  /// In en, this message translates to:
  /// **'Try Again'**
  String get tryAgain;

  /// No description provided for @reqPrice.
  ///
  /// In en, this message translates to:
  /// **'Req Price'**
  String get reqPrice;

  /// No description provided for @apprPrice.
  ///
  /// In en, this message translates to:
  /// **'Appr Price'**
  String get apprPrice;

  /// No description provided for @ordQty.
  ///
  /// In en, this message translates to:
  /// **'Ord Qty'**
  String get ordQty;

  /// No description provided for @remarks.
  ///
  /// In en, this message translates to:
  /// **'Remarks'**
  String get remarks;

  /// No description provided for @slNo.
  ///
  /// In en, this message translates to:
  /// **'Sl:No'**
  String get slNo;

  /// No description provided for @pleaseEnterSlNo.
  ///
  /// In en, this message translates to:
  /// **'Please Enter Sl:No'**
  String get pleaseEnterSlNo;

  /// No description provided for @dueon.
  ///
  /// In en, this message translates to:
  /// **'Due on'**
  String get dueon;

  /// No description provided for @completedon.
  ///
  /// In en, this message translates to:
  /// **'Completed on'**
  String get completedon;

  /// No description provided for @allTasks.
  ///
  /// In en, this message translates to:
  /// **'All Tasks'**
  String get allTasks;

  /// No description provided for @pendingTasks.
  ///
  /// In en, this message translates to:
  /// **'Pending Tasks'**
  String get pendingTasks;

  /// No description provided for @allSurveys.
  ///
  /// In en, this message translates to:
  /// **'All Surveys'**
  String get allSurveys;

  /// No description provided for @pendingSurveys.
  ///
  /// In en, this message translates to:
  /// **'Pending Surveys'**
  String get pendingSurveys;

  /// No description provided for @neww.
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get neww;

  /// No description provided for @allAgreements.
  ///
  /// In en, this message translates to:
  /// **'All Agreements'**
  String get allAgreements;

  /// No description provided for @approvedAgreements.
  ///
  /// In en, this message translates to:
  /// **'Approved Agreements'**
  String get approvedAgreements;

  /// No description provided for @allActivities.
  ///
  /// In en, this message translates to:
  /// **'All Activities'**
  String get allActivities;

  /// No description provided for @pendingActivities.
  ///
  /// In en, this message translates to:
  /// **'Pending Activities'**
  String get pendingActivities;

  /// No description provided for @allRequests.
  ///
  /// In en, this message translates to:
  /// **'All Requests'**
  String get allRequests;

  /// No description provided for @requestedRequest.
  ///
  /// In en, this message translates to:
  /// **'Requested Requests'**
  String get requestedRequest;

  /// No description provided for @responded.
  ///
  /// In en, this message translates to:
  /// **'Responded'**
  String get responded;

  /// No description provided for @del_qty.
  ///
  /// In en, this message translates to:
  /// **'Del.Qty'**
  String get del_qty;

  /// No description provided for @price.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get price;

  /// No description provided for @attachments.
  ///
  /// In en, this message translates to:
  /// **'Attachments'**
  String get attachments;

  /// No description provided for @viewFile.
  ///
  /// In en, this message translates to:
  /// **'View File'**
  String get viewFile;

  /// No description provided for @startDate.
  ///
  /// In en, this message translates to:
  /// **'Start Date'**
  String get startDate;

  /// No description provided for @expiryDate.
  ///
  /// In en, this message translates to:
  /// **'Expiry Date'**
  String get expiryDate;

  /// No description provided for @other.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get other;

  /// No description provided for @attachedDocumentType.
  ///
  /// In en, this message translates to:
  /// **'Attached document type'**
  String get attachedDocumentType;

  /// No description provided for @userLicenseAgreement.
  ///
  /// In en, this message translates to:
  /// **'User license agreement'**
  String get userLicenseAgreement;

  /// No description provided for @updateGeocode.
  ///
  /// In en, this message translates to:
  /// **'Update Geocode'**
  String get updateGeocode;

  /// No description provided for @updateGeocodeFailed.
  ///
  /// In en, this message translates to:
  /// **'Update Geocode Failed'**
  String get updateGeocodeFailed;

  /// No description provided for @viewOnMap.
  ///
  /// In en, this message translates to:
  /// **'View On Map'**
  String get viewOnMap;

  /// No description provided for @doYouWantToConfirmThisGeocode.
  ///
  /// In en, this message translates to:
  /// **'This geocode will be considered as the customer\'s final location, and other geocodes will be ignored after confirming the geocode. Do you want to confirm this geocode?'**
  String get doYouWantToConfirmThisGeocode;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @confirmGeocode.
  ///
  /// In en, this message translates to:
  /// **'Confirm Geocode'**
  String get confirmGeocode;

  /// No description provided for @yourProfileHasbeenUpdated.
  ///
  /// In en, this message translates to:
  /// **'Your profile has been updated'**
  String get yourProfileHasbeenUpdated;

  /// No description provided for @yourProfileUpdationFailed.
  ///
  /// In en, this message translates to:
  /// **'Your profile updation has been Failed'**
  String get yourProfileUpdationFailed;

  /// No description provided for @mailId.
  ///
  /// In en, this message translates to:
  /// **'Mail ID'**
  String get mailId;

  /// No description provided for @mobileNumber.
  ///
  /// In en, this message translates to:
  /// **'Mobile Number'**
  String get mobileNumber;

  /// No description provided for @whatspNo.
  ///
  /// In en, this message translates to:
  /// **'Whatsapp Number'**
  String get whatspNo;

  /// No description provided for @update.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get update;

  /// No description provided for @cantBeEmpty.
  ///
  /// In en, this message translates to:
  /// **'can\'t be empty'**
  String get cantBeEmpty;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @selectdate.
  ///
  /// In en, this message translates to:
  /// **'Select date'**
  String get selectdate;

  /// No description provided for @pleaseMakeSureYouHaveSelectedaRouteAndDate.
  ///
  /// In en, this message translates to:
  /// **'Please make sure you have selected a route and date'**
  String get pleaseMakeSureYouHaveSelectedaRouteAndDate;

  /// No description provided for @pleaseMakeSureYouHaveSelectedaDate.
  ///
  /// In en, this message translates to:
  /// **'Please make sure you have selected a date'**
  String get pleaseMakeSureYouHaveSelectedaDate;

  /// No description provided for @trackCustomers.
  ///
  /// In en, this message translates to:
  /// **'Track Customers'**
  String get trackCustomers;

  /// No description provided for @showRoute.
  ///
  /// In en, this message translates to:
  /// **'Show Route'**
  String get showRoute;

  /// No description provided for @current.
  ///
  /// In en, this message translates to:
  /// **'Current'**
  String get current;

  /// No description provided for @time.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get time;

  /// No description provided for @unscheduledVisit.
  ///
  /// In en, this message translates to:
  /// **'UnScheduled Visit'**
  String get unscheduledVisit;

  /// No description provided for @unschedVisitApproval.
  ///
  /// In en, this message translates to:
  /// **'Unscheduled Visit Approval'**
  String get unschedVisitApproval;

  /// No description provided for @unscheduledVisitRejection.
  ///
  /// In en, this message translates to:
  /// **'Unscheduled Visit Rejection'**
  String get unscheduledVisitRejection;

  /// No description provided for @sysQty.
  ///
  /// In en, this message translates to:
  /// **'Sys Qty'**
  String get sysQty;

  /// No description provided for @pkdQty.
  ///
  /// In en, this message translates to:
  /// **'Pkd Qty'**
  String get pkdQty;

  /// No description provided for @liQty.
  ///
  /// In en, this message translates to:
  /// **'LI Qty'**
  String get liQty;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @doYouWantToLogout.
  ///
  /// In en, this message translates to:
  /// **'Do you want to logout'**
  String get doYouWantToLogout;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @actionedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Your request has been successfully actioned'**
  String get actionedSuccessfully;

  /// No description provided for @dontgoback.
  ///
  /// In en, this message translates to:
  /// **'Please do not attempt to go back from this screen'**
  String get dontgoback;

  /// No description provided for @updatefailed.
  ///
  /// In en, this message translates to:
  /// **'Version update failed'**
  String get updatefailed;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @appupdate.
  ///
  /// In en, this message translates to:
  /// **'App Update'**
  String get appupdate;

  /// No description provided for @version.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get version;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'ar'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'ar': return AppLocalizationsAr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
