import 'dart:io';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/approvalscountsbloc/approval_counts_bloc.dart';
import 'package:customer_connect/feature/state/bloc/customersettings/customer_settings_bloc.dart';
import 'package:customer_connect/feature/state/bloc/field_service_header/field_service_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/vantovanheader/van_to_van_header_bloc.dart';
import 'package:customer_connect/feature/view/approvals/widgets/approvaldynamicwidget.dart';
import 'package:customer_connect/feature/view/approvals/widgets/approvals_header_section.dart';
import 'package:customer_connect/feature/view/approvals/widgets/pendingapprovals.dart';
import 'package:customer_connect/feature/view/asset_adding/assetaddingheaderscreen.dart';
import 'package:customer_connect/feature/view/assetremoval/assetremovalscreen.dart';
import 'package:customer_connect/feature/view/creditnote/creditnoteheaderscreen.dart';
import 'package:customer_connect/feature/view/customerfoc/customerfocheader.dart';
import 'package:customer_connect/feature/view/customeroverrideapproval/cusoverideheader.dart';
import 'package:customer_connect/feature/view/disputenote/disputenoteapprovalheader.dart';
import 'package:customer_connect/feature/view/fieldserviceinvoice/fieldserviceinoice.dart';
import 'package:customer_connect/feature/view/freesample/freesampleheaderscreen.dart';
// import 'package:customer_connect/feature/view/freesample/freesampleheaderscreen.dart';
import 'package:customer_connect/feature/view/inventoryreconfirm/inventoryreconfirmheaderscreen.dart';
import 'package:customer_connect/feature/view/journeyplan/journeyplanheaderscreen.dart';
import 'package:customer_connect/feature/view/loadrequest/loadrequestheaderscreen.dart';
import 'package:customer_connect/feature/view/loadtransfer/loadtransferheaderscreen.dart';
import 'package:customer_connect/feature/view/mustsell/mustsellheaderscreen.dart';
import 'package:customer_connect/feature/view/partialdelivery/partialdeliveryheader.dart';
import 'package:customer_connect/feature/view/pricechangeapproval/pricechangeheader.dart';
import 'package:customer_connect/feature/view/returnapproval/returnapprovalheader.dart';
import 'package:customer_connect/feature/view/scheduled_return/scheduled_return_headerscreen.dart';
import 'package:customer_connect/feature/view/settlementapproval/settlementapprovalheader.dart';
import 'package:customer_connect/feature/view/unscheduledvisit/unscheduledvisitappoval.dart';
import 'package:customer_connect/feature/view/vantovanapproval/vantovanapprovalheader.dart';
import 'package:customer_connect/feature/view/voidtransaction/voidtransactionheaderscreen.dart';
import 'package:customer_connect/l10n/app_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../materialrequest/materialrequestdetailheader.dart';

class ApprovalScreen extends StatefulWidget {
  final LoginUserModel user;
  const ApprovalScreen({super.key, required this.user});

  @override
  State<ApprovalScreen> createState() => _ApprovalScreenState();
}

class _ApprovalScreenState extends State<ApprovalScreen> {
  int _tabIndex = 0;

  /// Sales-related approval tiles (by index in [approvalItems]).
  static const Set<int> _salesIndices = {
    0,
    1,
    2,
    3,
    4,
    5,
    16,
    17,
    19,
    20,
    21,
  };

  /// Logistics, assets, field, and inventory-related tiles.
  static const Set<int> _operationsIndices = {
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    18,
  };

  bool _matchesTab(int itemIndex) {
    switch (_tabIndex) {
      case 1:
        return _salesIndices.contains(itemIndex);
      case 2:
        return _operationsIndices.contains(itemIndex);
      default:
        return true;
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      context
          .read<ApprovalCountsBloc>()
          .add(GetApprovalsCountEvent(userID: widget.user.usrId ?? ''));
    });
  }

  @override
  Widget build(BuildContext context) {
    final user = widget.user;
    return Scaffold(
      backgroundColor: const Color(0xffF9FAFB),
      body: RefreshIndicator(
        triggerMode: RefreshIndicatorTriggerMode.anywhere,
        color: const Color.fromARGB(255, 181, 218, 245),
        displacement: BorderSide.strokeAlignCenter,
        onRefresh: () => _onRefreshApprovals(context, user),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ApprovalsHeaderSection(
                  user: user,
                  selectedTabIndex: _tabIndex,
                  onTabSelected: (i) => setState(() => _tabIndex = i),
                  tabLabels: [
                    AppLocalizations.of(context)!.all,
                    AppLocalizations.of(context)!.sales,
                    AppLocalizations.of(context)!.approval_category_operations,
                  ],
                  tabGradients: ApprovalsHeaderSection.defaultTabGradients,
                ),
                const SizedBox(height: 10),
               // PendingApprovalsWidget(user: user),
                const SizedBox(height: 10),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text("All Approvals", style: approvalcountStyle()),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child:
                      BlocBuilder<CustomerSettingsBloc, CustomerSettingsState>(
                    builder: (context, state) {
                      final approvalItems = <Widget>[
                        ApprovalGridTile(
                          imageAsset: "assets/images/pc.png",
                          title: Text(
                            AppLocalizations.of(context)!.price_change,
                            style: headTextStyle(),
                          ),
                          count: BlocBuilder<ApprovalCountsBloc,
                              ApprovalCountsState>(
                            builder: (context, state) {
                              return state.when(
                                  getApprovalsCount: (count) => count == null
                                      ? Text('0', style: approvalcountStyle())
                                      : Text(
                                          count.pendingPriceChangeApproval ??
                                              '',
                                          style: approvalcountStyle()),
                                  getApprovalCountsFailed: () =>
                                      Text('0', style: approvalcountStyle()));
                            },
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                Platform.isIOS
                                    ? CupertinoPageRoute(
                                        builder: (context) =>
                                            PriceChangeHeader(user: user))
                                    : MaterialPageRoute(
                                        builder: (context) => PriceChangeHeader(
                                              user: user,
                                            )));
                          },
                        ),
                        // GestureDetector(
                        //   onTap: () {
                        //     Navigator.push(
                        //         context,
                        //         MaterialPageRoute(
                        //             builder: (context) => PriceChangeHeader(
                        //                   user: user,
                        //                 )));
                        //   },
                        //   child: Container(
                        //     // height: 50,
                        //     // width: MediaQuery.of(context).size.width / 2,
                        //     decoration: BoxDecoration(
                        //         border: Border.all(color: Colors.white),
                        //         borderRadius: BorderRadius.circular(10),
                        //         color: Colors.white,
                        //         boxShadow: [
                        //           BoxShadow(
                        //               color: Colors.grey.shade300,
                        //               spreadRadius: 1,
                        //               blurRadius: 1)
                        //         ]),
                        //     child: Padding(
                        //       padding: const EdgeInsets.symmetric(
                        //           horizontal: 20, vertical: 15),
                        //       child: Row(
                        //         mainAxisAlignment: MainAxisAlignment.start,
                        //         children: [
                        //           Padding(
                        //             padding: const EdgeInsets.only(right: 5),
                        //             child: Image.asset(
                        //               "assets/images/pc.png",
                        //               height: 17.h,
                        //             ),
                        //           ),
                        //           SizedBox(
                        //             width: 8.w,
                        //           ),
                        //           Expanded(
                        //             child: Text(
                        //               AppLocalizations.of(context)!
                        //                   .price_change,
                        //               style: headTextStyle(),
                        //             ),
                        //           ),
                        //           BlocBuilder<ApprovalCountsBloc,
                        //               ApprovalCountsState>(
                        //             builder: (context, state) {
                        //               return state.when(
                        //                   getApprovalsCount: (count) => count ==
                        //                           null
                        //                       ? Text(
                        //                           '0',
                        //                           style: kfontstyle(
                        //                             fontSize: 11.sp,
                        //                             fontWeight: FontWeight.w500,
                        //                             color: Colors.black87,
                        //                           ),
                        //                         )
                        //                       : Text(
                        //                           count.pendingPriceChangeApproval ??
                        //                               '',
                        //                           style: kfontstyle(
                        //                             fontSize: 11.sp,
                        //                             fontWeight: FontWeight.w500,
                        //                             color: Colors.black87,
                        //                           ),
                        //                         ),
                        //                   getApprovalCountsFailed: () => Text(
                        //                         '0',
                        //                         style: kfontstyle(
                        //                           fontSize: 11.sp,
                        //                           fontWeight: FontWeight.w500,
                        //                           color: Colors.black87,
                        //                         ),
                        //                       ));
                        //             },
                        //           )
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        ApprovalGridTile(
                          imageAsset: "assets/images/pd.png",
                          title: Text(
                            AppLocalizations.of(context)!.partial_delivery,
                            style: headTextStyle(),
                          ),
                          count: BlocBuilder<ApprovalCountsBloc,
                              ApprovalCountsState>(
                            builder: (context, state) {
                              return state.when(
                                  getApprovalsCount: (count) => count == null
                                      ? Text('0', style: approvalcountStyle())
                                      : Text(
                                          count.pendingPartialDeliveryHeader!,
                                          style: approvalcountStyle()),
                                  getApprovalCountsFailed: () =>
                                      Text('0', style: approvalcountStyle()));
                            },
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              Platform.isIOS
                                  ? CupertinoPageRoute(
                                      builder: (context) =>
                                          PartialDeliveryHeader(user: user))
                                  : MaterialPageRoute(
                                      builder: (context) =>
                                          PartialDeliveryHeader(
                                        user: user,
                                      ),
                                    ),
                            );
                          },
                        ),
                        ApprovalGridTile(
                          imageAsset: "assets/images/sr.png",
                          title: Text(
                            maxLines: 2,
                            AppLocalizations.of(context)!.scheduled_return,
                            overflow: TextOverflow.ellipsis,
                            style: headTextStyle(),
                          ),
                          count: BlocBuilder<ApprovalCountsBloc,
                              ApprovalCountsState>(
                            builder: (context, state) {
                              return state.when(
                                  getApprovalsCount: (count) => count == null
                                      ? Text('0', style: approvalcountStyle())
                                      : Text(count.pendingReturnRequestSc!,
                                          style: approvalcountStyle()),
                                  getApprovalCountsFailed: () =>
                                      Text('0', style: approvalcountStyle()));
                            },
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              Platform.isIOS
                                  ? CupertinoPageRoute(
                                      builder: (context) =>
                                          ScheduledReturnHEaderScreen(
                                              user: user))
                                  : MaterialPageRoute(
                                      builder: (context) =>
                                          ScheduledReturnHEaderScreen(
                                        user: user,
                                      ),
                                    ),
                            );
                          },
                        ),

                        //  ApprovalGridTile(
                        //   imageAsset: '',
                        //   title: Text(''),
                        //   count: Text('0'),
                        //   onTap: () {},
                        // ),
                        ApprovalGridTile(
                          imageAsset: "assets/images/rtn.png",
                          title: Text(
                            maxLines: 2,
                            AppLocalizations.of(context)!.ret_urn,
                            style: headTextStyle(),
                          ),
                          count: BlocBuilder<ApprovalCountsBloc,
                              ApprovalCountsState>(
                            builder: (context, state) {
                              return state.when(
                                  getApprovalsCount: (count) => count == null
                                      ? Text('0', style: approvalcountStyle())
                                      : Text(count.pendingReturnHeader!,
                                          style: approvalcountStyle()),
                                  getApprovalCountsFailed: () =>
                                      Text('0', style: approvalcountStyle()));
                            },
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              Platform.isIOS
                                  ? CupertinoPageRoute(
                                      builder: (context) =>
                                          ReturnApprovalHeader(user: user))
                                  : MaterialPageRoute(
                                      builder: (context) =>
                                          ReturnApprovalHeader(
                                        user: user,
                                      ),
                                    ),
                            );
                          },
                        ),
                        ApprovalGridTile(
                          imageAsset: "assets/images/dr.png",
                          title: Text(
                            maxLines: 2,
                            AppLocalizations.of(context)!.dispute_request,
                            overflow: TextOverflow.ellipsis,
                            style: headTextStyle(),
                          ),
                          count: BlocBuilder<ApprovalCountsBloc,
                              ApprovalCountsState>(
                            builder: (context, state) {
                              return state.when(
                                  getApprovalsCount: (count) => count == null
                                      ? Text('0', style: approvalcountStyle())
                                      : Text(count.pendingDisputeNoteReqHeader!,
                                          style: approvalcountStyle()),
                                  getApprovalCountsFailed: () =>
                                      Text('0', style: approvalcountStyle()));
                            },
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                Platform.isIOS
                                    ? CupertinoPageRoute(
                                        builder: (context) =>
                                            DisputeNoteApprovalHEaderScreen(
                                                user: user))
                                    : MaterialPageRoute(
                                        builder: (context) =>
                                            DisputeNoteApprovalHEaderScreen(
                                              user: user,
                                            )));
                          },
                        ),
                        ApprovalGridTile(
                          imageAsset: "assets/images/cr.png",
                          title: Text(
                            AppLocalizations.of(context)!.credit_memo,
                            style: headTextStyle(),
                          ),
                          count: BlocBuilder<ApprovalCountsBloc,
                              ApprovalCountsState>(
                            builder: (context, state) {
                              return state.when(
                                  getApprovalsCount: (count) => count == null
                                      ? Text('0', style: approvalcountStyle())
                                      : Text(count.pendingCreditNoteReqHeader!,
                                          style: approvalcountStyle()),
                                  getApprovalCountsFailed: () =>
                                      Text('0', style: approvalcountStyle()));
                            },
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              Platform.isIOS
                                  ? CupertinoPageRoute(
                                      builder: (context) =>
                                          CreditNoteHeaderScreen(user: user))
                                  : MaterialPageRoute(
                                      builder: (context) =>
                                          CreditNoteHeaderScreen(
                                        user: user,
                                      ),
                                    ),
                            );
                          },
                        ),
                        ApprovalGridTile(
                          imageAsset: "assets/images/aa.png",
                          title: Text(
                            AppLocalizations.of(context)!.add_assets,
                            overflow: TextOverflow.ellipsis,
                            style: headTextStyle(),
                          ),
                          count: BlocBuilder<ApprovalCountsBloc,
                              ApprovalCountsState>(
                            builder: (context, state) {
                              return state.when(
                                  getApprovalsCount: (count) => count == null
                                      ? Text('0', style: approvalcountStyle())
                                      : Text(count.pendingAssetAddReqHeader!,
                                          style: approvalcountStyle()),
                                  getApprovalCountsFailed: () =>
                                      Text('0', style: approvalcountStyle()));
                            },
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              Platform.isIOS
                                  ? CupertinoPageRoute(
                                      builder: (context) =>
                                          AssetAddingApprovalHeaderScreen(
                                              user: user))
                                  : MaterialPageRoute(
                                      builder: (context) =>
                                          AssetAddingApprovalHeaderScreen(
                                        user: user,
                                      ),
                                    ),
                            );
                          },
                        ),
                        ApprovalGridTile(
                          imageAsset: "assets/images/ar2.png",
                          title: Text(
                            AppLocalizations.of(context)!.remove_assets,
                            overflow: TextOverflow.ellipsis,
                            style: headTextStyle(),
                          ),
                          count: BlocBuilder<ApprovalCountsBloc,
                              ApprovalCountsState>(
                            builder: (context, state) {
                              return state.when(
                                  getApprovalsCount: (count) => count == null
                                      ? Text('0', style: approvalcountStyle())
                                      : Text(
                                          count.pendingAssetRemovalReqHeader!,
                                          style: approvalcountStyle()),
                                  getApprovalCountsFailed: () =>
                                      Text('0', style: approvalcountStyle()));
                            },
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              Platform.isIOS
                                  ? CupertinoPageRoute(
                                      builder: (context) =>
                                          AssetRemovalApprovalScreen(
                                              user: user))
                                  : MaterialPageRoute(
                                      builder: (context) =>
                                          AssetRemovalApprovalScreen(
                                        user: user,
                                      ),
                                    ),
                            );
                          },
                        ),
                        ApprovalGridTile(
                          imageAsset: "assets/images/vv.png",
                          title: Text(
                            AppLocalizations.of(context)!.truck_to_truck,
                            style: headTextStyle(),
                          ),
                          count: BlocBuilder<ApprovalCountsBloc,
                              ApprovalCountsState>(
                            builder: (context, state) {
                              return state.when(
                                  getApprovalsCount: (count) => count == null
                                      ? Text('0', style: approvalcountStyle())
                                      : Text(count.pendingVanToVanHeader!,
                                          style: approvalcountStyle()),
                                  getApprovalCountsFailed: () =>
                                      Text('0', style: approvalcountStyle()));
                            },
                          ),
                          onTap: () {
                            context
                                .read<VanToVanHeaderBloc>()
                                .add(const ClearVanToVanHeaderEvent());
                            context.read<VanToVanHeaderBloc>().add(
                                getVanToVanHeaderEvent(
                                    userID: user.usrId ?? '',
                                    mode: "P",
                                    searchQuery: ''));
                            Navigator.push(
                              context,
                              Platform.isIOS
                                  ? CupertinoPageRoute(
                                      builder: (context) =>
                                          VanToVanApprovalHeader(user: user))
                                  : MaterialPageRoute(
                                      builder: (context) =>
                                          VanToVanApprovalHeader(
                                        user: user,
                                      ),
                                    ),
                            );
                          },
                        ),
                        ApprovalGridTile(
                          imageAsset: "assets/images/lt.png",
                          title: Text(
                            AppLocalizations.of(context)!.load_transfer,
                            style: headTextStyle(),
                          ),
                          count: BlocBuilder<ApprovalCountsBloc,
                              ApprovalCountsState>(
                            builder: (context, state) {
                              return state.when(
                                  getApprovalsCount: (count) => count == null
                                      ? Text('0', style: approvalcountStyle())
                                      : Text(count.pendingLodTransRequest!,
                                          style: approvalcountStyle()),
                                  getApprovalCountsFailed: () =>
                                      Text('0', style: approvalcountStyle()));
                            },
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              Platform.isIOS
                                  ? CupertinoPageRoute(
                                      builder: (context) =>
                                          LoadTransferApprovalHeaderScreen(
                                              user: user))
                                  : MaterialPageRoute(
                                      builder: (context) =>
                                          LoadTransferApprovalHeaderScreen(
                                        user: user,
                                      ),
                                    ),
                            );
                          },
                        ),
                        ApprovalGridTile(
                          imageAsset: "assets/images/jp.png",
                          title: Text(
                            AppLocalizations.of(context)!.journeyPlan,
                            style: headTextStyle(),
                          ),
                          count: BlocBuilder<ApprovalCountsBloc,
                              ApprovalCountsState>(
                            builder: (context, state) {
                              return state.when(
                                  getApprovalsCount: (count) => count == null
                                      ? Text('0', style: approvalcountStyle())
                                      : Text(count.pendingJurneyPlanSeqApprvl!,
                                          style: approvalcountStyle()),
                                  getApprovalCountsFailed: () =>
                                      Text('0', style: approvalcountStyle()));
                            },
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              Platform.isIOS
                                  ? CupertinoPageRoute(
                                      builder: (context) =>
                                          JourneyPlanHeaderScreen(user: user))
                                  : MaterialPageRoute(
                                      builder: (context) =>
                                          JourneyPlanHeaderScreen(
                                        user: user,
                                      ),
                                    ),
                            );
                          },
                        ),
                        ApprovalGridTile(
                          imageAsset: "assets/images/fs.png",
                          title: Text(
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            AppLocalizations.of(context)!.fieldServiceInvoice,
                            style: headTextStyle(),
                          ),
                          count: BlocBuilder<ApprovalCountsBloc,
                              ApprovalCountsState>(
                            builder: (context, state) {
                              return state.when(
                                  getApprovalsCount: (count) => count == null
                                      ? Text('0', style: approvalcountStyle())
                                      : Text(
                                          count.pendingInvoiceApprovalHeader!,
                                          style: approvalcountStyle()),
                                  getApprovalCountsFailed: () =>
                                      Text('0', style: approvalcountStyle()));
                            },
                          ),
                          onTap: () {
                            context
                                .read<FieldServiceHeaderBloc>()
                                .add(const ClearFieldServiceHeaderEvent());
                            context.read<FieldServiceHeaderBloc>().add(
                                GetAllFieldServiceHeadersEvent(
                                    userId: user.usrId ?? '', searchQuery: ''));
                            Navigator.push(
                              context,
                              Platform.isIOS
                                  ? CupertinoPageRoute(
                                      builder: (context) =>
                                          FieldServiceInvoiceHeader(user: user))
                                  : MaterialPageRoute(
                                      builder: (context) =>
                                          FieldServiceInvoiceHeader(
                                        user: user,
                                      ),
                                    ),
                            );
                          },
                        ),
                        ApprovalGridTile(
                          imageAsset: "assets/images/mr.png",
                          title: Text(
                            AppLocalizations.of(context)!.materialRequest,
                            style: headTextStyle(),
                          ),
                          count: BlocBuilder<ApprovalCountsBloc,
                              ApprovalCountsState>(
                            builder: (context, state) {
                              return state.when(
                                  getApprovalsCount: (count) => count == null
                                      ? Text('0', style: approvalcountStyle())
                                      : Text(count.pendingMaterialReqApproval!,
                                          style: approvalcountStyle()),
                                  getApprovalCountsFailed: () =>
                                      Text('0', style: approvalcountStyle()));
                            },
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              Platform.isIOS
                                  ? CupertinoPageRoute(
                                      builder: (context) =>
                                          MaterialRequestHeaderScreen(
                                              user: user))
                                  : MaterialPageRoute(
                                      builder: (context) =>
                                          MaterialRequestHeaderScreen(
                                        user: user,
                                      ),
                                    ),
                            );
                          },
                        ),
                        ApprovalGridTile(
                          imageAsset: "assets/images/lr.png",
                          title: Text(
                            overflow: TextOverflow.ellipsis,
                            AppLocalizations.of(context)!.loadRequest,
                            style: headTextStyle(),
                          ),
                          count: BlocBuilder<ApprovalCountsBloc,
                              ApprovalCountsState>(
                            builder: (context, state) {
                              return state.when(
                                  getApprovalsCount: (count) => count == null
                                      ? Text('0', style: approvalcountStyle())
                                      : Text(count.pendingLoadRequestHeader!,
                                          style: approvalcountStyle()),
                                  getApprovalCountsFailed: () =>
                                      Text('0', style: approvalcountStyle()));
                            },
                          ),
                          onTap: () {
                            context.read<FieldServiceHeaderBloc>().add(
                                GetAllFieldServiceHeadersEvent(
                                    userId: user.usrId ?? '', searchQuery: ''));
                            Navigator.push(
                              context,
                              Platform.isIOS
                                  ? CupertinoPageRoute(
                                      builder: (context) =>
                                          LoadRequestHeaderScreen(user: user))
                                  : MaterialPageRoute(
                                      builder: (context) =>
                                          LoadRequestHeaderScreen(
                                        user: user,
                                      ),
                                    ),
                            );
                          },
                        ),
                        ApprovalGridTile(
                          imageAsset: "assets/images/incre@2x.png",
                          title: Text(
                            maxLines: 2,
                            AppLocalizations.of(context)!
                                .inventoryReconfirmation,
                            overflow: TextOverflow.ellipsis,
                            style: headTextStyle(),
                          ),
                          count: BlocBuilder<ApprovalCountsBloc,
                              ApprovalCountsState>(
                            builder: (context, state) {
                              return state.when(
                                  getApprovalsCount: (count) => count == null
                                      ? Text('0', style: approvalcountStyle())
                                      : Text(count.inventoryReconfirm ?? '0',
                                          style: approvalcountStyle()),
                                  getApprovalCountsFailed: () =>
                                      Text('0', style: approvalcountStyle()));
                            },
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              Platform.isIOS
                                  ? CupertinoPageRoute(
                                      builder: (context) =>
                                          InventoryReconfirmHeadersScreen(
                                              user: user))
                                  : MaterialPageRoute(
                                      builder: (context) =>
                                          InventoryReconfirmHeadersScreen(
                                        user: user,
                                      ),
                                    ),
                            );
                          },
                        ),
                        ApprovalGridTile(
                          imageAsset: "assets/images/vta@2x.png",
                          title: Text(
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            AppLocalizations.of(context)!.voidTransaction,
                            style: headTextStyle(),
                          ),
                          count: BlocBuilder<ApprovalCountsBloc,
                              ApprovalCountsState>(
                            builder: (context, state) {
                              return state.when(
                                  getApprovalsCount: (count) => count == null
                                      ? Text('0', style: approvalcountStyle())
                                      : Text(count.voidTransactionHead ?? '0',
                                          style: approvalcountStyle()),
                                  getApprovalCountsFailed: () =>
                                      Text('0', style: approvalcountStyle()));
                            },
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              Platform.isIOS
                                  ? CupertinoPageRoute(
                                      builder: (context) =>
                                          VoidTranscactioHeaderScreen(
                                              user: user))
                                  : MaterialPageRoute(
                                      builder: (context) =>
                                          VoidTranscactioHeaderScreen(
                                        user: user,
                                      ),
                                    ),
                            );
                          },
                        ),
                        ApprovalGridTile(
                          imageAsset: "assets/images/msa@2x.png",
                          title: Text(
                            maxLines: 2,
                            AppLocalizations.of(context)!.msutSellApproval,
                            overflow: TextOverflow.ellipsis,
                            style: headTextStyle(),
                          ),
                          count: BlocBuilder<ApprovalCountsBloc,
                              ApprovalCountsState>(
                            builder: (context, state) {
                              return state.when(
                                  getApprovalsCount: (count) => count == null
                                      ? Text('0', style: approvalcountStyle())
                                      : Text(count.mustSellHead ?? '0',
                                          style: approvalcountStyle()),
                                  getApprovalCountsFailed: () =>
                                      Text('0', style: approvalcountStyle()));
                            },
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              Platform.isIOS
                                  ? CupertinoPageRoute(
                                      builder: (context) =>
                                          MustSellHeaderScreen(user: user))
                                  : MaterialPageRoute(
                                      builder: (context) =>
                                          MustSellHeaderScreen(
                                        user: user,
                                      ),
                                    ),
                            );
                          },
                        ),
                        ApprovalGridTile(
                          imageAsset: "assets/images/sev@2x.png",
                          title: Text(
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            AppLocalizations.of(context)!.settlementApproval,
                            style: headTextStyle(),
                          ),
                          count: BlocBuilder<ApprovalCountsBloc,
                              ApprovalCountsState>(
                            builder: (context, state) {
                              return state.when(
                                  getApprovalsCount: (count) => count == null
                                      ? Text('0', style: approvalcountStyle())
                                      : Text(
                                          count.settlementApprovalHead ?? '0',
                                          style: approvalcountStyle()),
                                  getApprovalCountsFailed: () =>
                                      Text('0', style: approvalcountStyle()));
                            },
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              Platform.isIOS
                                  ? CupertinoPageRoute(
                                      builder: (context) =>
                                          SettlementApprovalHeaderScreen(
                                              user: user, users: user))
                                  : MaterialPageRoute(
                                      builder: (context) =>
                                          SettlementApprovalHeaderScreen(
                                            users: user,
                                            user: user,
                                          )),
                            );
                          },
                        ),
                        ApprovalGridTile(
                          imageAsset: "assets/images/project.png",
                          title: Text(
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            AppLocalizations.of(context)!.unscheduledVisit,
                            style: headTextStyle(),
                          ),
                          count: BlocBuilder<ApprovalCountsBloc,
                              ApprovalCountsState>(
                            builder: (context, state) {
                              return state.when(
                                  getApprovalsCount: (count) => count == null
                                      ? Text('0', style: approvalcountStyle())
                                      : Text(count.unschVisit ?? '0',
                                          style: approvalcountStyle()),
                                  getApprovalCountsFailed: () =>
                                      Text('0', style: approvalcountStyle()));
                            },
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              Platform.isIOS
                                  ? CupertinoPageRoute(
                                      builder: (context) =>
                                          const UnScheduledVisitScreen())
                                  : MaterialPageRoute(
                                      builder: (context) =>
                                          const UnScheduledVisitScreen()),
                            );
                          },
                        ),
                        ApprovalGridTile(
                          imageAsset: "assets/images/project.png",
                          title: Text(
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            'Customer FOC Approval',
                            style: headTextStyle(),
                          ),
                          count: BlocBuilder<ApprovalCountsBloc,
                              ApprovalCountsState>(
                            builder: (context, state) {
                              return state.when(
                                  getApprovalsCount: (count) => count == null
                                      ? Text('0', style: approvalcountStyle())
                                      : Text(
                                          count.pendingCustomerFOCApprovalHeader ??
                                              '0',
                                          style: approvalcountStyle()),
                                  getApprovalCountsFailed: () =>
                                      Text('0', style: approvalcountStyle()));
                            },
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              Platform.isIOS
                                  ? CupertinoPageRoute(
                                      builder: (context) =>
                                          CustomerFocHeaderScreen(user: user))
                                  : MaterialPageRoute(
                                      builder: (context) =>
                                          CustomerFocHeaderScreen(
                                            user: user,
                                          )),
                            );
                          },
                        ),
                        ApprovalGridTile(
                          imageAsset: "assets/images/project.png",
                          title: Text(
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            'Customer Override Approval',
                            style: headTextStyle(),
                          ),
                          count: BlocBuilder<ApprovalCountsBloc,
                              ApprovalCountsState>(
                            builder: (context, state) {
                              return state.when(
                                  getApprovalsCount: (count) => count == null
                                      ? Text('0', style: approvalcountStyle())
                                      : Text(
                                          count.pendingOverRideApprovalHeader ??
                                              '0',
                                          style: approvalcountStyle()),
                                  getApprovalCountsFailed: () =>
                                      Text('0', style: approvalcountStyle()));
                            },
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              Platform.isIOS
                                  ? CupertinoPageRoute(
                                      builder: (context) =>
                                          CustomerOverrideApprovalHeaderScreen(
                                              user: user))
                                  : MaterialPageRoute(
                                      builder: (context) =>
                                          CustomerOverrideApprovalHeaderScreen(
                                            user: user,
                                          )),
                            );
                          },
                        ),
                        ApprovalGridTile(
                          imageAsset: "assets/images/project.png",
                          title: Text(
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            'Free Sample Approval',
                            style: headTextStyle(),
                          ),
                          count: BlocBuilder<ApprovalCountsBloc,
                              ApprovalCountsState>(
                            builder: (context, state) {
                              return state.when(
                                  getApprovalsCount: (count) => count == null
                                      ? Text('0', style: approvalcountStyle())
                                      : Text(
                                          count.pendingSampleApprovalHeader ??
                                              '0',
                                          style: approvalcountStyle()),
                                  getApprovalCountsFailed: () =>
                                      Text('0', style: approvalcountStyle()));
                            },
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              Platform.isIOS
                                  ? CupertinoPageRoute(
                                      builder: (context) =>
                                          FreeSampleApprovalHeader(user: user))
                                  : MaterialPageRoute(
                                      builder: (context) =>
                                          FreeSampleApprovalHeader(
                                            user: user,
                                          )),
                            );
                          },
                        ),
                      ];
                      final approvalVisibility = <bool>[
                        state.when(
                          getCustomerSettingsState: (settings) =>
                              settings?.priceChangeAppr == null ||
                                      settings?.priceChangeAppr != 'Y'
                                  ? false
                                  : true,
                          customerSettingsFailedState: () => true,
                        ),
                        state.when(
                          getCustomerSettingsState: (settings) =>
                              settings?.partDelAppr == null ||
                                      settings?.partDelAppr != 'Y'
                                  ? false
                                  : true,
                          customerSettingsFailedState: () => true,
                        ),
                        state.when(
                          getCustomerSettingsState: (settings) =>
                              settings?.schReturnAppr == null ||
                                      settings?.schReturnAppr != 'Y'
                                  ? false
                                  : true,
                          customerSettingsFailedState: () => true,
                        ),
                        state.when(
                          getCustomerSettingsState: (settings) =>
                              settings?.retAppr == null ||
                                      settings?.retAppr != 'Y'
                                  ? false
                                  : true,
                          customerSettingsFailedState: () => true,
                        ),
                        state.when(
                          getCustomerSettingsState: (settings) =>
                              settings?.dispNoteAppr == null ||
                                      settings?.dispNoteAppr != 'Y'
                                  ? false
                                  : true,
                          customerSettingsFailedState: () => true,
                        ),
                        state.when(
                          getCustomerSettingsState: (settings) =>
                              settings?.credNoteAppr == null ||
                                      settings?.credNoteAppr != 'Y'
                                  ? false
                                  : true,
                          customerSettingsFailedState: () => true,
                        ),
                        state.when(
                          getCustomerSettingsState: (settings) =>
                              settings?.assAddAppr == null ||
                                      settings?.assAddAppr != 'Y'
                                  ? false
                                  : true,
                          customerSettingsFailedState: () => true,
                        ),
                        state.when(
                          getCustomerSettingsState: (settings) =>
                              settings?.assRemAppr == null ||
                                      settings?.assRemAppr != 'Y'
                                  ? false
                                  : true,
                          customerSettingsFailedState: () => true,
                        ),
                        state.when(
                          getCustomerSettingsState: (settings) =>
                              settings?.vantoVanAppr == null ||
                                      settings?.vantoVanAppr != 'Y'
                                  ? false
                                  : true,
                          customerSettingsFailedState: () => true,
                        ),
                        state.when(
                          getCustomerSettingsState: (settings) =>
                              settings?.loadTransAppr == null ||
                                      settings?.loadTransAppr != 'Y'
                                  ? false
                                  : true,
                          customerSettingsFailedState: () => true,
                        ),
                        state.when(
                          getCustomerSettingsState: (settings) =>
                              settings?.jourPlanAppr == null ||
                                      settings?.jourPlanAppr != 'Y'
                                  ? false
                                  : true,
                          customerSettingsFailedState: () => true,
                        ),
                        state.when(
                          getCustomerSettingsState: (settings) =>
                              settings?.fieldServAppr == null ||
                                      settings?.fieldServAppr != 'Y'
                                  ? false
                                  : true,
                          customerSettingsFailedState: () => true,
                        ),
                        state.when(
                          getCustomerSettingsState: (settings) =>
                              settings?.matReqAppr == null ||
                                      settings?.matReqAppr != 'Y'
                                  ? false
                                  : true,
                          customerSettingsFailedState: () => true,
                        ),
                        state.when(
                          getCustomerSettingsState: (settings) =>
                              settings?.loadReqAppr == null ||
                                      settings?.loadReqAppr != 'Y'
                                  ? false
                                  : true,
                          customerSettingsFailedState: () => true,
                        ),
                        state.when(
                          getCustomerSettingsState: (settings) =>
                              settings?.invReconfAppr == null ||
                                      settings?.invReconfAppr != 'Y'
                                  ? false
                                  : true,
                          customerSettingsFailedState: () => true,
                        ),
                        state.when(
                          getCustomerSettingsState: (settings) =>
                              settings?.voidTransAppr == null ||
                                      settings?.voidTransAppr != 'Y'
                                  ? false
                                  : true,
                          customerSettingsFailedState: () => true,
                        ),
                        state.when(
                          getCustomerSettingsState: (settings) =>
                              settings?.mustSellAppr == null ||
                                      settings?.mustSellAppr != 'Y'
                                  ? false
                                  : true,
                          customerSettingsFailedState: () => true,
                        ),
                        state.when(
                          getCustomerSettingsState: (settings) =>
                              settings?.settleAppr == null ||
                                      settings?.settleAppr != 'Y'
                                  ? false
                                  : true,
                          customerSettingsFailedState: () => true,
                        ),
                        state.when(
                          getCustomerSettingsState: (settings) =>
                              settings?.unschvisit == null ||
                                      settings?.unschvisit != 'Y'
                                  ? false
                                  : true,
                          customerSettingsFailedState: () => true,
                        ),
                        state.when(
                            getCustomerSettingsState: (settings) =>
                                settings?.cusfoc == null ||
                                        settings?.cusfoc != 'Y'
                                    ? false
                                    : true,
                            customerSettingsFailedState: () => true),
                        state.when(
                            getCustomerSettingsState: (settings) =>
                                settings?.cusovrride == null ||
                                        settings?.cusovrride != 'Y'
                                    ? false
                                    : true,
                            customerSettingsFailedState: () => true),
                        state.when(
                            getCustomerSettingsState: (settings) =>
                                settings?.freesample == null ||
                                        settings?.freesample != 'Y'
                                    ? false
                                    : true,
                            customerSettingsFailedState: () => true),
                      ];
                      final filteredTiles = <Widget>[];
                      for (var i = 0; i < approvalItems.length; i++) {
                        if (approvalVisibility[i] && _matchesTab(i)) {
                          filteredTiles.add(approvalItems[i]);
                        }
                      }
                      return ApprovalDynamicGridWidget(
                        items: filteredTiles,
                        visibility:
                            List<bool>.filled(filteredTiles.length, true),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _onRefreshApprovals(
      BuildContext context, LoginUserModel model) async {
    context
        .read<ApprovalCountsBloc>()
        .add(GetApprovalsCountEvent(userID: model.usrId ?? ''));

    await Future.delayed(const Duration(seconds: 2));
  }
}

/// Approval grid cell: bordered card, icon in tinted box, title under icon, count right.
class ApprovalGridTile extends StatelessWidget {
  const ApprovalGridTile({
    super.key,
    required this.imageAsset,
    required this.title,
    required this.count,
    required this.onTap,
  });

  final String imageAsset;
  final Widget title;
  final Widget count;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffE5E7EB)),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffEFF6FF),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: const Color(0xffEFF6FF)),
                      ),
                      height: 30.h,
                      width: 30.h,
                      padding: EdgeInsets.all(5.h),
                      child: Center(
                        child: Image.asset(
                          imageAsset,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.w),
                    title,
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, right: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [count],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
