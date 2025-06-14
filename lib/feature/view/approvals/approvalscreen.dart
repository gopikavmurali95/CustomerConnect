import 'dart:io';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/approvalscountsbloc/approval_counts_bloc.dart';
import 'package:customer_connect/feature/state/bloc/customersettings/customer_settings_bloc.dart';
import 'package:customer_connect/feature/state/bloc/field_service_header/field_service_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/vantovanheader/van_to_van_header_bloc.dart';
import 'package:customer_connect/feature/view/approvals/widgets/approvaldynamicwidget.dart';
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
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../materialrequest/materialrequestdetailheader.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ApprovalScreen extends StatelessWidget {
  final LoginUserModel user;
  const ApprovalScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        titleSpacing: 0.5,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 20,
          ),
        ),
        title: Text(
          AppLocalizations.of(context)!.approvals,
          style: appHeading(),
        ),
      ),
      body: RefreshIndicator(
          triggerMode: RefreshIndicatorTriggerMode.anywhere,
          color: const Color.fromARGB(255, 181, 218, 245),
          displacement: BorderSide.strokeAlignCenter,
          onRefresh: () => _onRefreshApprovals(context, user),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child:
                      BlocBuilder<CustomerSettingsBloc, CustomerSettingsState>(
                    builder: (context, state) {
                      return ApprovalDynamicGridWidget(items: [
                        InkWell(
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
                          child: Container(
                            // height: 60,
                            // width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade300,
                                      spreadRadius: 1,
                                      blurRadius: 1)
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/pc.png",
                                        height: 15.h,
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      BlocBuilder<ApprovalCountsBloc,
                                          ApprovalCountsState>(
                                        builder: (context, state) {
                                          return state.when(
                                              getApprovalsCount: (count) => count ==
                                                      null
                                                  ? Text('0',
                                                      style:
                                                          approvalcountStyle())
                                                  : Text(
                                                      count.pendingPriceChangeApproval ??
                                                          '',
                                                      style:
                                                          approvalcountStyle()),
                                              getApprovalCountsFailed: () =>
                                                  Text('0',
                                                      style:
                                                          approvalcountStyle()));
                                        },
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.w,
                                  ),
                                  Text(
                                    AppLocalizations.of(context)!.price_change,
                                    style: headTextStyle(),
                                  ),
                                ],
                              ),
                            ),
                          ),
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
                        InkWell(
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
                          child: Container(
                            //height: 50,
                            // width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade300,
                                      spreadRadius: 1,
                                      blurRadius: 1)
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/pd.png",
                                        height: 17.h,
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      BlocBuilder<ApprovalCountsBloc,
                                          ApprovalCountsState>(
                                        builder: (context, state) {
                                          return state.when(
                                              getApprovalsCount: (count) => count ==
                                                      null
                                                  ? Text('0',
                                                      style:
                                                          approvalcountStyle())
                                                  : Text(
                                                      count
                                                          .pendingPartialDeliveryHeader!,
                                                      style:
                                                          approvalcountStyle()),
                                              getApprovalCountsFailed: () =>
                                                  Text('0',
                                                      style:
                                                          approvalcountStyle()));
                                        },
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.w,
                                  ),
                                  Text(
                                    AppLocalizations.of(context)!
                                        .partial_delivery,
                                    style: headTextStyle(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
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
                          child: Container(
                            // height: 50,
                            // width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade300,
                                      spreadRadius: 1,
                                      blurRadius: 1)
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/sr.png",
                                        height: 17.5.h,
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      BlocBuilder<ApprovalCountsBloc,
                                          ApprovalCountsState>(
                                        builder: (context, state) {
                                          return state.when(
                                              getApprovalsCount: (count) => count ==
                                                      null
                                                  ? Text('0',
                                                      style:
                                                          approvalcountStyle())
                                                  : Text(
                                                      count
                                                          .pendingReturnRequestSc!,
                                                      style:
                                                          approvalcountStyle()),
                                              getApprovalCountsFailed: () =>
                                                  Text('0',
                                                      style:
                                                          approvalcountStyle()));
                                        },
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.w,
                                  ),
                                  Text(
                                    maxLines: 2,
                                    AppLocalizations.of(context)!
                                        .scheduled_return,
                                    overflow: TextOverflow.ellipsis,
                                    style: headTextStyle(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
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
                          child: Container(
                            //height: 50,
                            // width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade300,
                                      spreadRadius: 1,
                                      blurRadius: 1)
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/rtn.png",
                                        height: 17.h,
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      BlocBuilder<ApprovalCountsBloc,
                                          ApprovalCountsState>(
                                        builder: (context, state) {
                                          return state.when(
                                              getApprovalsCount: (count) => count ==
                                                      null
                                                  ? Text('0',
                                                      style:
                                                          approvalcountStyle())
                                                  : Text(
                                                      count
                                                          .pendingReturnHeader!,
                                                      style:
                                                          approvalcountStyle()),
                                              getApprovalCountsFailed: () =>
                                                  Text('0',
                                                      style:
                                                          approvalcountStyle()));
                                        },
                                      )
                                    ],
                                  ),
                                  // fit: BoxFit.scaleDown,),
                                  SizedBox(
                                    height: 5.w,
                                  ),
                                  Text(
                                    maxLines: 2,
                                    AppLocalizations.of(context)!.ret_urn,
                                    style: headTextStyle(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
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
                          child: Container(
                            // height: 50,
                            // width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade300,
                                      spreadRadius: 1,
                                      blurRadius: 1)
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/dr.png",
                                        height: 17.h,
                                      ),
                                      SizedBox(
                                        width: 8.w,
                                      ),
                                      BlocBuilder<ApprovalCountsBloc,
                                          ApprovalCountsState>(
                                        builder: (context, state) {
                                          return state.when(
                                              getApprovalsCount: (count) => count ==
                                                      null
                                                  ? Text('0',
                                                      style:
                                                          approvalcountStyle())
                                                  : Text(
                                                      count
                                                          .pendingDisputeNoteReqHeader!,
                                                      style:
                                                          approvalcountStyle()),
                                              getApprovalCountsFailed: () =>
                                                  Text('0',
                                                      style:
                                                          approvalcountStyle()));
                                        },
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.w,
                                  ),
                                  Text(
                                    maxLines: 2,
                                    AppLocalizations.of(context)!
                                        .dispute_request,
                                    overflow: TextOverflow.ellipsis,
                                    style: headTextStyle(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
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
                          child: Container(
                            //height: 50,
                            // width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade300,
                                      spreadRadius: 1,
                                      blurRadius: 1)
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/cr.png",
                                        height: 17.h,
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      BlocBuilder<ApprovalCountsBloc,
                                          ApprovalCountsState>(
                                        builder: (context, state) {
                                          return state.when(
                                              getApprovalsCount: (count) => count ==
                                                      null
                                                  ? Text('0',
                                                      style:
                                                          approvalcountStyle())
                                                  : Text(
                                                      count
                                                          .pendingCreditNoteReqHeader!,
                                                      style:
                                                          approvalcountStyle()),
                                              getApprovalCountsFailed: () =>
                                                  Text('0',
                                                      style:
                                                          approvalcountStyle()));
                                        },
                                      )
                                    ],
                                  ),
                                  // fit: BoxFit.scaleDown,),
                                  SizedBox(
                                    height: 5.w,
                                  ),
                                  Text(
                                    AppLocalizations.of(context)!.credit_memo,
                                    style: headTextStyle(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
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
                          child: Container(
                            // height: 50,
                            // width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade300,
                                      spreadRadius: 1,
                                      blurRadius: 1)
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/aa.png",
                                        height: 17.2.h,
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      BlocBuilder<ApprovalCountsBloc,
                                          ApprovalCountsState>(
                                        builder: (context, state) {
                                          return state.when(
                                              getApprovalsCount: (count) => count ==
                                                      null
                                                  ? Text('0',
                                                      style:
                                                          approvalcountStyle())
                                                  : Text(
                                                      count
                                                          .pendingAssetAddReqHeader!,
                                                      style:
                                                          approvalcountStyle()),
                                              getApprovalCountsFailed: () =>
                                                  Text('0',
                                                      style:
                                                          approvalcountStyle()));
                                        },
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.w,
                                  ),
                                  Text(
                                    AppLocalizations.of(context)!.add_assets,
                                    overflow: TextOverflow.ellipsis,
                                    style: headTextStyle(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
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
                          child: Container(
                            //height: 50,
                            // width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade300,
                                      spreadRadius: 1,
                                      blurRadius: 1)
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/ar2.png",
                                        height: 17.h,
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      BlocBuilder<ApprovalCountsBloc,
                                          ApprovalCountsState>(
                                        builder: (context, state) {
                                          return state.when(
                                              getApprovalsCount: (count) => count ==
                                                      null
                                                  ? Text('0',
                                                      style:
                                                          approvalcountStyle())
                                                  : Text(
                                                      count
                                                          .pendingAssetRemovalReqHeader!,
                                                      style:
                                                          approvalcountStyle()),
                                              getApprovalCountsFailed: () =>
                                                  Text('0',
                                                      style:
                                                          approvalcountStyle()));
                                        },
                                      )
                                    ],
                                  ),
                                  // fit: BoxFit.scaleDown,),
                                  SizedBox(
                                    height: 5.w,
                                  ),
                                  Text(
                                    AppLocalizations.of(context)!.remove_assets,
                                    overflow: TextOverflow.ellipsis,
                                    style: headTextStyle(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
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
                          child: Container(
                            // height: 50,
                            // width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade300,
                                      spreadRadius: 1,
                                      blurRadius: 1)
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/vv.png",
                                        height: 17.2.h,
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      BlocBuilder<ApprovalCountsBloc,
                                          ApprovalCountsState>(
                                        builder: (context, state) {
                                          return state.when(
                                              getApprovalsCount: (count) => count ==
                                                      null
                                                  ? Text('0',
                                                      style:
                                                          approvalcountStyle())
                                                  : Text(
                                                      count
                                                          .pendingVanToVanHeader!,
                                                      style:
                                                          approvalcountStyle()),
                                              getApprovalCountsFailed: () =>
                                                  Text('0',
                                                      style:
                                                          approvalcountStyle()));
                                        },
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.w,
                                  ),
                                  Text(
                                    AppLocalizations.of(context)!
                                        .truck_to_truck,
                                    style: headTextStyle(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
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
                          child: Container(
                            //height: 50,
                            // width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade300,
                                      spreadRadius: 1,
                                      blurRadius: 1)
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/lt.png",
                                        height: 15.5.h,
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      BlocBuilder<ApprovalCountsBloc,
                                          ApprovalCountsState>(
                                        builder: (context, state) {
                                          return state.when(
                                              getApprovalsCount: (count) => count ==
                                                      null
                                                  ? Text('0',
                                                      style:
                                                          approvalcountStyle())
                                                  : Text(
                                                      count
                                                          .pendingLodTransRequest!,
                                                      style:
                                                          approvalcountStyle()),
                                              getApprovalCountsFailed: () =>
                                                  Text('0',
                                                      style:
                                                          approvalcountStyle()));
                                        },
                                      )
                                    ],
                                  ),
                                  // fit: BoxFit.scaleDown,),
                                  SizedBox(
                                    height: 5.w,
                                  ),
                                  Text(
                                    AppLocalizations.of(context)!.load_transfer,
                                    style: headTextStyle(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
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
                          child: Container(
                            // height: 50,
                            // width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade300,
                                      spreadRadius: 1,
                                      blurRadius: 1)
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/jp.png",
                                        height: 17.h,
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      BlocBuilder<ApprovalCountsBloc,
                                          ApprovalCountsState>(
                                        builder: (context, state) {
                                          return state.when(
                                              getApprovalsCount: (count) => count ==
                                                      null
                                                  ? Text('0',
                                                      style:
                                                          approvalcountStyle())
                                                  : Text(
                                                      count
                                                          .pendingJurneyPlanSeqApprvl!,
                                                      style:
                                                          approvalcountStyle()),
                                              getApprovalCountsFailed: () =>
                                                  Text('0',
                                                      style:
                                                          approvalcountStyle()));
                                        },
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.w,
                                  ),
                                  Text(
                                    AppLocalizations.of(context)!.journeyPlan,
                                    style: headTextStyle(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
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
                          child: Container(
                            //height: 50,
                            // width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade300,
                                      spreadRadius: 1,
                                      blurRadius: 1)
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/fs.png",
                                        height: 18.3.h,
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      BlocBuilder<ApprovalCountsBloc,
                                          ApprovalCountsState>(
                                        builder: (context, state) {
                                          return state.when(
                                              getApprovalsCount: (count) => count ==
                                                      null
                                                  ? Text('0',
                                                      style:
                                                          approvalcountStyle())
                                                  : Text(
                                                      count
                                                          .pendingInvoiceApprovalHeader!,
                                                      style:
                                                          approvalcountStyle()),
                                              getApprovalCountsFailed: () =>
                                                  Text('0',
                                                      style:
                                                          approvalcountStyle()));
                                        },
                                      )
                                    ],
                                  ),
                                  // fit: BoxFit.scaleDown,),
                                  SizedBox(
                                    height: 5.w,
                                  ),
                                  Text(
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    AppLocalizations.of(context)!
                                        .fieldServiceInvoice,
                                    style: headTextStyle(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
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
                          child: Container(
                            // height: 50,
                            // width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade300,
                                      spreadRadius: 1,
                                      blurRadius: 1)
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/mr.png",
                                        height: 17.h,
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      BlocBuilder<ApprovalCountsBloc,
                                          ApprovalCountsState>(
                                        builder: (context, state) {
                                          return state.when(
                                              getApprovalsCount: (count) => count ==
                                                      null
                                                  ? Text('0',
                                                      style:
                                                          approvalcountStyle())
                                                  : Text(
                                                      count
                                                          .pendingMaterialReqApproval!,
                                                      style:
                                                          approvalcountStyle()),
                                              getApprovalCountsFailed: () =>
                                                  Text('0',
                                                      style:
                                                          approvalcountStyle()));
                                        },
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.w,
                                  ),
                                  Text(
                                    AppLocalizations.of(context)!
                                        .materialRequest,
                                    style: headTextStyle(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
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
                          child: Container(
                            //height: 50,
                            // width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade300,
                                      spreadRadius: 1,
                                      blurRadius: 1)
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/lr.png",
                                        height: 18.3.h,
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      BlocBuilder<ApprovalCountsBloc,
                                          ApprovalCountsState>(
                                        builder: (context, state) {
                                          return state.when(
                                              getApprovalsCount: (count) => count ==
                                                      null
                                                  ? Text('0',
                                                      style:
                                                          approvalcountStyle())
                                                  : Text(
                                                      count
                                                          .pendingLoadRequestHeader!,
                                                      style:
                                                          approvalcountStyle()),
                                              getApprovalCountsFailed: () =>
                                                  Text('0',
                                                      style:
                                                          approvalcountStyle()));
                                        },
                                      )
                                    ],
                                  ),
                                  // fit: BoxFit.scaleDown,),
                                  SizedBox(
                                    height: 5.w,
                                  ),
                                  Text(
                                    overflow: TextOverflow.ellipsis,
                                    AppLocalizations.of(context)!.loadRequest,
                                    style: headTextStyle(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
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
                          child: Container(
                            // height: 50,
                            // width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade300,
                                      spreadRadius: 1,
                                      blurRadius: 1)
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/incre@2x.png",
                                        height: 17.h,
                                      ),
                                      SizedBox(
                                        width: 8.w,
                                      ),
                                      BlocBuilder<ApprovalCountsBloc,
                                          ApprovalCountsState>(
                                        builder: (context, state) {
                                          return state.when(
                                              getApprovalsCount: (count) => count ==
                                                      null
                                                  ? Text('0',
                                                      style:
                                                          approvalcountStyle())
                                                  : Text(
                                                      count.inventoryReconfirm ??
                                                          '0',
                                                      style:
                                                          approvalcountStyle()),
                                              getApprovalCountsFailed: () =>
                                                  Text('0',
                                                      style:
                                                          approvalcountStyle()));
                                        },
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    maxLines: 2,
                                    AppLocalizations.of(context)!
                                        .inventoryReconfirmation,
                                    overflow: TextOverflow.ellipsis,
                                    style: headTextStyle(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
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
                          child: Container(
                            // height: 50,
                            // width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade300,
                                      spreadRadius: 1,
                                      blurRadius: 1)
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/vta@2x.png",
                                        height: 17.h,
                                      ),
                                      SizedBox(
                                        width: 8.w,
                                      ),
                                      BlocBuilder<ApprovalCountsBloc,
                                          ApprovalCountsState>(
                                        builder: (context, state) {
                                          return state.when(
                                              getApprovalsCount: (count) => count ==
                                                      null
                                                  ? Text('0',
                                                      style:
                                                          approvalcountStyle())
                                                  : Text(
                                                      count.voidTransactionHead ??
                                                          '0',
                                                      style:
                                                          approvalcountStyle()),
                                              getApprovalCountsFailed: () =>
                                                  Text('0',
                                                      style:
                                                          approvalcountStyle()));
                                        },
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    AppLocalizations.of(context)!
                                        .voidTransaction,
                                    //"Inventory Recon",
                                    style: headTextStyle(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
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
                          child: Container(
                            // height: 50,
                            // width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade300,
                                      spreadRadius: 1,
                                      blurRadius: 1)
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/msa@2x.png",
                                        height: 17.h,
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      BlocBuilder<ApprovalCountsBloc,
                                          ApprovalCountsState>(
                                        builder: (context, state) {
                                          return state.when(
                                              getApprovalsCount: (count) => count ==
                                                      null
                                                  ? Text('0',
                                                      style:
                                                          approvalcountStyle())
                                                  : Text(
                                                      count.mustSellHead ?? '0',
                                                      style:
                                                          approvalcountStyle()),
                                              getApprovalCountsFailed: () =>
                                                  Text('0',
                                                      style:
                                                          approvalcountStyle()));
                                        },
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    maxLines: 2,
                                    AppLocalizations.of(context)!
                                        .msutSellApproval,
                                    overflow: TextOverflow.ellipsis,
                                    style: headTextStyle(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
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
                          child: Container(
                            //height: 50,
                            // width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade300,
                                      spreadRadius: 1,
                                      blurRadius: 1)
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/sev@2x.png",
                                        height: 18.3.h,
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      BlocBuilder<ApprovalCountsBloc,
                                          ApprovalCountsState>(
                                        builder: (context, state) {
                                          return state.when(
                                              getApprovalsCount: (count) => count ==
                                                      null
                                                  ? Text('0',
                                                      style:
                                                          approvalcountStyle())
                                                  : Text(
                                                      count.settlementApprovalHead ??
                                                          '0',
                                                      style:
                                                          approvalcountStyle()),
                                              getApprovalCountsFailed: () =>
                                                  Text('0',
                                                      style:
                                                          approvalcountStyle()));
                                        },
                                      )
                                    ],
                                  ),
                                  // fit: BoxFit.scaleDown,),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    AppLocalizations.of(context)!
                                        .settlementApproval,
                                    style: headTextStyle(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
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
                          child: Container(
                            //height: 50,
                            // width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade300,
                                      spreadRadius: 1,
                                      blurRadius: 1)
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/project.png",
                                        height: 18.3.h,
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      BlocBuilder<ApprovalCountsBloc,
                                          ApprovalCountsState>(
                                        builder: (context, state) {
                                          return state.when(
                                              getApprovalsCount: (count) => count ==
                                                      null
                                                  ? Text('0',
                                                      style:
                                                          approvalcountStyle())
                                                  : Text(
                                                      count.unschVisit ?? '0',
                                                      style:
                                                          approvalcountStyle()),
                                              getApprovalCountsFailed: () =>
                                                  Text('0',
                                                      style:
                                                          approvalcountStyle()));
                                        },
                                      )
                                    ],
                                  ),
                                  // fit: BoxFit.scaleDown,),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    AppLocalizations.of(context)!
                                        .unscheduledVisit,
                                    style: headTextStyle(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
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
                          child: Container(
                            //height: 50,
                            // width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade300,
                                      spreadRadius: 1,
                                      blurRadius: 1)
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/project.png",
                                        height: 18.3.h,
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      BlocBuilder<ApprovalCountsBloc,
                                          ApprovalCountsState>(
                                        builder: (context, state) {
                                          return state.when(
                                              getApprovalsCount: (count) => count ==
                                                      null
                                                  ? Text('0',
                                                      style:
                                                          approvalcountStyle())
                                                  : Text(
                                                      count.pendingCustomerFOCApprovalHeader ??
                                                          '0',
                                                      style:
                                                          approvalcountStyle()),
                                              getApprovalCountsFailed: () =>
                                                  Text('0',
                                                      style:
                                                          approvalcountStyle()));
                                        },
                                      )
                                    ],
                                  ),
                                  // fit: BoxFit.scaleDown,),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    'Customer FOC Approval',
                                    style: headTextStyle(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
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
                          child: Container(
                            //height: 50,
                            // width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade300,
                                      spreadRadius: 1,
                                      blurRadius: 1)
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/project.png",
                                        height: 18.3.h,
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      BlocBuilder<ApprovalCountsBloc,
                                          ApprovalCountsState>(
                                        builder: (context, state) {
                                          return state.when(
                                              getApprovalsCount: (count) => count ==
                                                      null
                                                  ? Text('0',
                                                      style:
                                                          approvalcountStyle())
                                                  : Text(
                                                      count.pendingOverRideApprovalHeader ??
                                                          '0',
                                                      style:
                                                          approvalcountStyle()),
                                              getApprovalCountsFailed: () =>
                                                  Text('0',
                                                      style:
                                                          approvalcountStyle()));
                                        },
                                      )
                                    ],
                                  ),
                                  // fit: BoxFit.scaleDown,),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    'Customer Override Approval',
                                    style: headTextStyle(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
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
                          child: Container(
                            //height: 50,
                            // width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade300,
                                      spreadRadius: 1,
                                      blurRadius: 1)
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/project.png",
                                        height: 18.3.h,
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      BlocBuilder<ApprovalCountsBloc,
                                          ApprovalCountsState>(
                                        builder: (context, state) {
                                          return state.when(
                                              getApprovalsCount: (count) => count ==
                                                      null
                                                  ? Text('0',
                                                      style:
                                                          approvalcountStyle())
                                                  : Text(
                                                      count.pendingSampleApprovalHeader ??
                                                          '0',
                                                      style:
                                                          approvalcountStyle()),
                                              getApprovalCountsFailed: () =>
                                                  Text('0',
                                                      style:
                                                          approvalcountStyle()));
                                        },
                                      )
                                    ],
                                  ),
                                  // fit: BoxFit.scaleDown,),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    'Free Sample Approval',
                                    style: headTextStyle(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                       visibility: [
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
                              settings?.settleAppr == null ||
                                      settings?.settleAppr != 'Y'
                                  ? false
                                  : true,
                          customerSettingsFailedState: () => true,
                        ),
                        true,
                        true,
                        true
                      ]);
                    },
                  )),
            ),
          )),
    );
  }

  Future<void> _onRefreshApprovals(
      BuildContext context, LoginUserModel model) async {
    context
        .read<ApprovalCountsBloc>()
        .add(GetApprovalsCountEvent(userID: user.usrId ?? ''));

    await Future.delayed(const Duration(seconds: 2));
  }
}
