import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/approvalscountsbloc/approval_counts_bloc.dart';
import 'package:customer_connect/feature/state/bloc/field_service_header/field_service_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/vantovanheader/van_to_van_header_bloc.dart';
import 'package:customer_connect/feature/view/asset_adding/assetaddingheaderscreen.dart';
import 'package:customer_connect/feature/view/assetremoval/assetremovalscreen.dart';
import 'package:customer_connect/feature/view/creditnote/creditnoteheaderscreen.dart';
import 'package:customer_connect/feature/view/disputenote/disputenoteapprovalheader.dart';
import 'package:customer_connect/feature/view/fieldserviceinvoice/fieldserviceinoice.dart';
import 'package:customer_connect/feature/view/inventoryreconfirm/inventoryreconfirmheaderscreen.dart';
import 'package:customer_connect/feature/view/journeyplan/journeyplanheaderscreen.dart';
import 'package:customer_connect/feature/view/loadrequest/loadrequestheaderscreen.dart';
import 'package:customer_connect/feature/view/loadtransfer/loadtransferheaderscreen.dart';
import 'package:customer_connect/feature/view/partialdelivery/partialdeliveryheader.dart';
import 'package:customer_connect/feature/view/pricechangeapproval/pricechangeheader.dart';
import 'package:customer_connect/feature/view/returnapproval/returnapprovalheader.dart';
import 'package:customer_connect/feature/view/scheduled_return/scheduled_return_headerscreen.dart';
import 'package:customer_connect/feature/view/settlementapproval/settlementapprovalheader.dart';
import 'package:customer_connect/feature/view/vantovanapproval/vantovanapprovalheader.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../materialrequest/materialrequestdetailheader.dart';

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
          "Approval",
          style: appHeading(),
        ),
      ),
      body: RefreshIndicator(
        triggerMode: RefreshIndicatorTriggerMode.anywhere,
        color: const Color.fromARGB(255, 181, 218, 245),
        displacement: BorderSide.strokeAlignCenter,
        onRefresh: () => _onRefreshApprovals(context, user),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 5, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PriceChangeHeader(
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
                                horizontal: 20, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Image.asset(
                                    "assets/images/pc.png",
                                    height: 17.h,
                                  ),
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Expanded(
                                  child: Text(
                                    "Price Change",
                                    style: headTextStyle(),
                                  ),
                                ),
                                BlocBuilder<ApprovalCountsBloc,
                                    ApprovalCountsState>(
                                  builder: (context, state) {
                                    return state.when(
                                        getApprovalsCount: (count) => count ==
                                                null
                                            ? Text(
                                                '0',
                                                style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              )
                                            : Text(
                                                count.pendingPriceChangeApproval ??
                                                    '',
                                                style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                        getApprovalCountsFailed: () => Text(
                                              '0',
                                              style: kfontstyle(
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black87,
                                              ),
                                            ));
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PartialDeliveryHeader(
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
                                horizontal: 20, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: Image.asset(
                                    "assets/images/pd.png",
                                    height: 17.h,
                                  ),
                                ),
                                // fit: BoxFit.scaleDown,),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Expanded(
                                  child: Text(
                                    "Partial Delivery",
                                    style: headTextStyle(),
                                  ),
                                ),

                                BlocBuilder<ApprovalCountsBloc,
                                    ApprovalCountsState>(
                                  builder: (context, state) {
                                    return state.when(
                                        getApprovalsCount: (count) => count ==
                                                null
                                            ? Text(
                                                '0',
                                                style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              )
                                            : Text(
                                                count
                                                    .pendingPartialDeliveryHeader!,
                                                style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                        getApprovalCountsFailed: () => Text(
                                              '0',
                                              style: kfontstyle(
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black87,
                                              ),
                                            ));
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 5, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ScheduledReturnHEaderScreen(
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
                                horizontal: 20, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Image.asset(
                                    "assets/images/sr.png",
                                    height: 17.5.h,
                                  ),
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Expanded(
                                  child: Text(
                                    "Scheduled Return",
                                    overflow: TextOverflow.ellipsis,
                                    style: headTextStyle(),
                                  ),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                BlocBuilder<ApprovalCountsBloc,
                                    ApprovalCountsState>(
                                  builder: (context, state) {
                                    return state.when(
                                        getApprovalsCount: (count) => count ==
                                                null
                                            ? Text(
                                                '0',
                                                style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              )
                                            : Text(
                                                count.pendingReturnRequestSc!,
                                                style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                        getApprovalCountsFailed: () => Text(
                                              '0',
                                              style: kfontstyle(
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black87,
                                              ),
                                            ));
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ReturnApprovalHeader(
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
                                horizontal: 20, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Image.asset(
                                    "assets/images/rtn.png",
                                    height: 17.h,
                                  ),
                                ),
                                // fit: BoxFit.scaleDown,),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Expanded(
                                  child: Text(
                                    "Return",
                                    style: headTextStyle(),
                                  ),
                                ),

                                BlocBuilder<ApprovalCountsBloc,
                                    ApprovalCountsState>(
                                  builder: (context, state) {
                                    return state.when(
                                        getApprovalsCount: (count) => count ==
                                                null
                                            ? Text(
                                                '0',
                                                style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              )
                                            : Text(
                                                count.pendingReturnHeader!,
                                                style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                        getApprovalCountsFailed: () => Text(
                                              '0',
                                              style: kfontstyle(
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black87,
                                              ),
                                            ));
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 5, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
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
                                horizontal: 20, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Image.asset(
                                    "assets/images/dr.png",
                                    height: 17.h,
                                  ),
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Expanded(
                                  child: Text(
                                    "Dispute Request",
                                    overflow: TextOverflow.ellipsis,
                                    style: headTextStyle(),
                                  ),
                                ),
                                BlocBuilder<ApprovalCountsBloc,
                                    ApprovalCountsState>(
                                  builder: (context, state) {
                                    return state.when(
                                        getApprovalsCount: (count) => count ==
                                                null
                                            ? Text(
                                                '0',
                                                style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              )
                                            : Text(
                                                count
                                                    .pendingDisputeNoteReqHeader!,
                                                style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                        getApprovalCountsFailed: () => Text(
                                              '0',
                                              style: kfontstyle(
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black87,
                                              ),
                                            ));
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CreditNoteHeaderScreen(
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
                                horizontal: 20, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Image.asset(
                                    "assets/images/cr.png",
                                    height: 17.h,
                                  ),
                                ),
                                // fit: BoxFit.scaleDown,),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Expanded(
                                  child: Text(
                                    "Credit Note",
                                    style: headTextStyle(),
                                  ),
                                ),

                                BlocBuilder<ApprovalCountsBloc,
                                    ApprovalCountsState>(
                                  builder: (context, state) {
                                    return state.when(
                                        getApprovalsCount: (count) => count ==
                                                null
                                            ? Text(
                                                '0',
                                                style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              )
                                            : Text(
                                                count
                                                    .pendingCreditNoteReqHeader!,
                                                style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                        getApprovalCountsFailed: () => Text(
                                              '0',
                                              style: kfontstyle(
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black87,
                                              ),
                                            ));
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 5, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
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
                                horizontal: 20, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Image.asset(
                                    "assets/images/aa.png",
                                    height: 17.2.h,
                                  ),
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Expanded(
                                  child: Text(
                                    "Asset Adding",
                                    overflow: TextOverflow.ellipsis,
                                    style: headTextStyle(),
                                  ),
                                ),
                                BlocBuilder<ApprovalCountsBloc,
                                    ApprovalCountsState>(
                                  builder: (context, state) {
                                    return state.when(
                                        getApprovalsCount: (count) => count ==
                                                null
                                            ? Text(
                                                '0',
                                                style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              )
                                            : Text(
                                                count.pendingAssetAddReqHeader!,
                                                style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                        getApprovalCountsFailed: () => Text(
                                              '0',
                                              style: kfontstyle(
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black87,
                                              ),
                                            ));
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AssetRemovalApprovalScreen(
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
                                horizontal: 20, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Image.asset(
                                    "assets/images/ar2.png",
                                    height: 17.h,
                                  ),
                                ),
                                // fit: BoxFit.scaleDown,),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Expanded(
                                  child: Text(
                                    "Asset Removal",
                                    overflow: TextOverflow.ellipsis,
                                    style: headTextStyle(),
                                  ),
                                ),

                                BlocBuilder<ApprovalCountsBloc,
                                    ApprovalCountsState>(
                                  builder: (context, state) {
                                    return state.when(
                                        getApprovalsCount: (count) => count ==
                                                null
                                            ? Text(
                                                '0',
                                                style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              )
                                            : Text(
                                                count
                                                    .pendingAssetRemovalReqHeader!,
                                                style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                        getApprovalCountsFailed: () => Text(
                                              '0',
                                              style: kfontstyle(
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black87,
                                              ),
                                            ));
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 5, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          context.read<VanToVanHeaderBloc>().add(
                              getVanToVanHeaderEvent(
                                  userID: user.usrId ?? '',
                                  mode: "P",
                                  searchQuery: ''));
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VanToVanApprovalHeader(
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
                                horizontal: 20, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Image.asset(
                                    "assets/images/vv.png",
                                    height: 17.2.h,
                                  ),
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Expanded(
                                  child: Text(
                                    "Van To Van",
                                    style: headTextStyle(),
                                  ),
                                ),
                                BlocBuilder<ApprovalCountsBloc,
                                    ApprovalCountsState>(
                                  builder: (context, state) {
                                    return state.when(
                                        getApprovalsCount: (count) => count ==
                                                null
                                            ? Text(
                                                '0',
                                                style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              )
                                            : Text(
                                                count.pendingVanToVanHeader!,
                                                style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                        getApprovalCountsFailed: () => Text(
                                              '0',
                                              style: kfontstyle(
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black87,
                                              ),
                                            ));
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
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
                                horizontal: 20, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Image.asset(
                                    "assets/images/lt.png",
                                    height: 15.5.h,
                                  ),
                                ),
                                // fit: BoxFit.scaleDown,),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Expanded(
                                  child: Text(
                                    "Load Transfer",
                                    style: headTextStyle(),
                                  ),
                                ),

                                BlocBuilder<ApprovalCountsBloc,
                                    ApprovalCountsState>(
                                  builder: (context, state) {
                                    return state.when(
                                        getApprovalsCount: (count) => count ==
                                                null
                                            ? Text(
                                                '0',
                                                style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              )
                                            : Text(
                                                count.pendingLodTransRequest!,
                                                style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                        getApprovalCountsFailed: () => Text(
                                              '0',
                                              style: kfontstyle(
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black87,
                                              ),
                                            ));
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 5, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => JourneyPlanHeaderScreen(
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
                                horizontal: 20, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Image.asset(
                                    "assets/images/jp.png",
                                    height: 17.h,
                                  ),
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Expanded(
                                  child: Text(
                                    "Journey Plan",
                                    style: headTextStyle(),
                                  ),
                                ),
                                BlocBuilder<ApprovalCountsBloc,
                                    ApprovalCountsState>(
                                  builder: (context, state) {
                                    return state.when(
                                        getApprovalsCount: (count) => count ==
                                                null
                                            ? Text(
                                                '0',
                                                style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              )
                                            : Text(
                                                count
                                                    .pendingJurneyPlanSeqApprvl!,
                                                style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                        getApprovalCountsFailed: () => Text(
                                              '0',
                                              style: kfontstyle(
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black87,
                                              ),
                                            ));
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          context
                              .read<FieldServiceHeaderBloc>()
                              .add(const ClearFieldServiceHeaderEvent());
                          context.read<FieldServiceHeaderBloc>().add(
                              GetAllFieldServiceHeadersEvent(
                                  userId: user.usrId ?? '', searchQuery: ''));
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FieldServiceInvoiceHeader(
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
                                horizontal: 20, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Image.asset(
                                    "assets/images/fs.png",
                                    height: 18.3.h,
                                  ),
                                ),
                                // fit: BoxFit.scaleDown,),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Expanded(
                                  child: Text(
                                    overflow: TextOverflow.ellipsis,
                                    "Field Service Invoice",
                                    style: headTextStyle(),
                                  ),
                                ),

                                BlocBuilder<ApprovalCountsBloc,
                                    ApprovalCountsState>(
                                  builder: (context, state) {
                                    return state.when(
                                        getApprovalsCount: (count) => count ==
                                                null
                                            ? Text(
                                                '0',
                                                style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              )
                                            : Text(
                                                count
                                                    .pendingInvoiceApprovalHeader!,
                                                style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                        getApprovalCountsFailed: () => Text(
                                              '0',
                                              style: kfontstyle(
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black87,
                                              ),
                                            ));
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 5, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MaterialRequestHeaderScreen(
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
                                horizontal: 20, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Image.asset(
                                    "assets/images/mr.png",
                                    height: 17.h,
                                  ),
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Expanded(
                                  child: Text(
                                    "Material Request",
                                    style: headTextStyle(),
                                  ),
                                ),
                                BlocBuilder<ApprovalCountsBloc,
                                    ApprovalCountsState>(
                                  builder: (context, state) {
                                    return state.when(
                                        getApprovalsCount: (count) => count ==
                                                null
                                            ? Text(
                                                '0',
                                                style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              )
                                            : Text(
                                                count
                                                    .pendingMaterialReqApproval!,
                                                style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                        getApprovalCountsFailed: () => Text(
                                              '0',
                                              style: kfontstyle(
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black87,
                                              ),
                                            ));
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          context.read<FieldServiceHeaderBloc>().add(
                              GetAllFieldServiceHeadersEvent(
                                  userId: user.usrId ?? '', searchQuery: ''));
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoadRequestHeaderScreen(
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
                                horizontal: 20, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Image.asset(
                                    "assets/images/lr.png",
                                    height: 18.3.h,
                                  ),
                                ),
                                // fit: BoxFit.scaleDown,),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Expanded(
                                  child: Text(
                                    overflow: TextOverflow.ellipsis,
                                    "Load Request",
                                    style: headTextStyle(),
                                  ),
                                ),

                                BlocBuilder<ApprovalCountsBloc,
                                    ApprovalCountsState>(
                                  builder: (context, state) {
                                    return state.when(
                                        getApprovalsCount: (count) => count ==
                                                null
                                            ? Text(
                                                '0',
                                                style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              )
                                            : Text(
                                                count.pendingLoadRequestHeader!,
                                                style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                        getApprovalCountsFailed: () => Text(
                                              '0',
                                              style: kfontstyle(
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black87,
                                              ),
                                            ));
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.w,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 5, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
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
                                horizontal: 20, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Image.asset(
                                    "assets/images/mr.png",
                                    height: 17.h,
                                  ),
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Expanded(
                                  child: Text(
                                    "Inventory Recon",
                                    style: headTextStyle(),
                                  ),
                                ),
                                BlocBuilder<ApprovalCountsBloc,
                                    ApprovalCountsState>(
                                  builder: (context, state) {
                                    return state.when(
                                        getApprovalsCount: (count) => count ==
                                                null
                                            ? Text(
                                                '0',
                                                style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              )
                                            : Text(
                                                count
                                                    .pendingMaterialReqApproval!,
                                                style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                        getApprovalCountsFailed: () => Text(
                                              '0',
                                              style: kfontstyle(
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black87,
                                              ),
                                            ));
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          context.read<FieldServiceHeaderBloc>().add(
                              GetAllFieldServiceHeadersEvent(
                                  userId: user.usrId ?? '', searchQuery: ''));
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    SettlementApprovalHeaderScreen(
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
                                horizontal: 20, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Image.asset(
                                    "assets/images/lr.png",
                                    height: 18.3.h,
                                  ),
                                ),
                                // fit: BoxFit.scaleDown,),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Expanded(
                                  child: Text(
                                    //  overflow: TextOverflow.ellipsis,
                                    "Settlement Approval",
                                    style: headTextStyle(),
                                  ),
                                ),

                                BlocBuilder<ApprovalCountsBloc,
                                    ApprovalCountsState>(
                                  builder: (context, state) {
                                    return state.when(
                                        getApprovalsCount: (count) => count ==
                                                null
                                            ? Text(
                                                '0',
                                                style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              )
                                            : Text(
                                                count.pendingLoadRequestHeader!,
                                                style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                        getApprovalCountsFailed: () => Text(
                                              '0',
                                              style: kfontstyle(
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black87,
                                              ),
                                            ));
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                    // const Expanded(child: SizedBox())
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
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
