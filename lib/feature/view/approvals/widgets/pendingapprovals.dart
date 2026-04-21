import 'dart:io';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/pendingapprovallist/pending_approvals_list_bloc.dart';
import 'package:customer_connect/feature/view/approvals/approvalscreen.dart';
import 'package:customer_connect/feature/view/asset_adding/assetaddingheaderscreen.dart';
import 'package:customer_connect/feature/view/assetremoval/assetremovalscreen.dart';
import 'package:customer_connect/feature/view/creditnote/creditnoteheaderscreen.dart';
import 'package:customer_connect/feature/view/customerfoc/customerfocheader.dart';
import 'package:customer_connect/feature/view/customeroverrideapproval/cusoverideheader.dart';
import 'package:customer_connect/feature/view/disputenote/disputenoteapprovalheader.dart';
import 'package:customer_connect/feature/view/fieldserviceinvoice/fieldserviceinoice.dart';
import 'package:customer_connect/feature/view/freesample/freesampleheaderscreen.dart';
import 'package:customer_connect/feature/view/inventoryreconfirm/inventoryreconfirmheaderscreen.dart';
import 'package:customer_connect/feature/view/journeyplan/journeyplanheaderscreen.dart';
import 'package:customer_connect/feature/view/loadrequest/loadrequestheaderscreen.dart';
import 'package:customer_connect/feature/view/loadtransfer/loadtransferheaderscreen.dart';
import 'package:customer_connect/feature/view/materialrequest/materialrequestdetailheader.dart';
import 'package:customer_connect/feature/view/mustsell/mustsellheaderscreen.dart';
import 'package:customer_connect/feature/view/partialdelivery/partialdeliveryheader.dart';
import 'package:customer_connect/feature/view/pricechangeapproval/pricechangeheader.dart';
import 'package:customer_connect/feature/view/returnapproval/returnapprovalheader.dart';
import 'package:customer_connect/feature/view/scheduled_return/scheduled_return_headerscreen.dart';
import 'package:customer_connect/feature/view/settlementapproval/settlementapprovalheader.dart';
import 'package:customer_connect/feature/view/vantovanapproval/vantovanapprovalheader.dart';
import 'package:customer_connect/feature/view/voidtransaction/voidtransactionheaderscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PendingApprovalsWidget extends StatefulWidget {
  final LoginUserModel user;

  const PendingApprovalsWidget({super.key, required this.user});

  @override
  State<PendingApprovalsWidget> createState() => _PendingApprovalsWidgetState();
}

class _PendingApprovalsWidgetState extends State<PendingApprovalsWidget> {
  @override
  void initState() {
    super.initState();
    context.read<PendingApprovalsListBloc>().add(
          GetPendingApprovalsListEvent(userId: widget.user.usrId ?? ''),
        );
  }
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    const horizontalPadding = 10.0;
    const gridGap = 7.0;
    final cardWidth = (screenWidth - (horizontalPadding * 2) - gridGap) / 2.2;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text("Pending Approvals", style: approvalcountStyle()),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                     Navigator.push(
                                context,
                                Platform.isIOS
                                    ? CupertinoPageRoute(
                                        builder: (context) =>
                                            ApprovalScreen(user: widget.user))
                                    : MaterialPageRoute(
                                        builder: (context) => ApprovalScreen(user: widget.user)));
                  
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xffF0F9FF),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "View All",
                      style: ifontstyle(
                          color: const Color(0xff0284C7), fontSize: 14),
                    ),
                  ),
                )),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding, vertical: 6.h),
          child: SizedBox(
            height: 180.h,
            child: BlocBuilder<PendingApprovalsListBloc,
                PendingApprovalsListState>(
              builder: (context, state) {
                return state.when(
                    getPendingApprovalsListState: (approvals) => approvals ==
                            null
                        ? const Center(child: Text("No Pending Approvals"))
                        : ListView.builder(
                            scrollDirection: Axis.horizontal,
                            physics: const ClampingScrollPhysics(),
                            itemCount: approvals.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(
                                    right: index == 3 ? 0 : gridGap),
                                child: SizedBox(
                                  width: cardWidth < 160.w ? 160.w : cardWidth,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(10.r),
                                      border: Border.all(
                                          color: const Color(0xFFE2E8F0),
                                          width: 1.w),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Color(0x08000000),
                                          offset: Offset(0, 4),
                                          blurRadius: 20,
                                          spreadRadius: 0,
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 12.w, vertical: 10.h),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SvgPicture.asset(
                                              'assets/svg/Component 1.svg'),
                                          SizedBox(height: 10.h),
                                          Text(
                                           approvals[index].approvalType??"",
                                            style: pfontstyle(
                                                color: const Color(0xff64748B),
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          SizedBox(height: 6.h),
                                          Text(
                                             approvals[index].customer??"No Customer Name",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: pfontstyle(
                                                color: const Color(0xff1E293B),
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          SizedBox(height: 12.h),
                                          SizedBox(
                                            width: double.infinity,
                                            height: 34.h,
                                            child: ElevatedButton(
                                              onPressed: () {
                                                _navigateToApprovalType(
                                                  approvals[index].approvalType ??
                                                      '',
                                                );
                                              },
                                              style: ElevatedButton.styleFrom(
                                                elevation: 0,
                                                backgroundColor:
                                                    const Color(0xFF0B1736),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.r),
                                                ),
                                              ),
                                              child: Text(
                                                'Review',
                                                style: ifontstyle(
                                                    color: Colors.white,
                                                    fontSize: 14.sp,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                    pendingApprovalsListFailedState:
                        () => const Center(child: Text("No Pending Approvals")),);
              },
            ),
          ),
        ),
      ],
    );
  }

  void _navigateToApprovalType(String approvalType) {
    final type = approvalType.toLowerCase().trim();
    Widget screen;

    if (type.contains('price')) {
      screen = PriceChangeHeader(user: widget.user);
    } else if (type.contains('partial')) {
      screen = PartialDeliveryHeader(user: widget.user);
    } else if (type.contains('scheduled')) {
      screen = ScheduledReturnHEaderScreen(user: widget.user);
    } else if (type.contains('return')) {
      screen = ReturnApprovalHeader(user: widget.user);
    } else if (type.contains('dispute')) {
      screen = DisputeNoteApprovalHEaderScreen(user: widget.user);
    } else if (type.contains('credit')) {
      screen = CreditNoteHeaderScreen(user: widget.user);
    } else if (type.contains('add asset') || type.contains('asset add')) {
      screen = AssetAddingApprovalHeaderScreen(user: widget.user);
    } else if (type.contains('remove asset') || type.contains('asset removal')) {
      screen = AssetRemovalApprovalScreen(user: widget.user);
    } else if (type.contains('truck') || type.contains('van to van')) {
      screen = VanToVanApprovalHeader(user: widget.user);
    } else if (type.contains('load transfer')) {
      screen = LoadTransferApprovalHeaderScreen(user: widget.user);
    } else if (type.contains('journey')) {
      screen = JourneyPlanHeaderScreen(user: widget.user);
    } else if (type.contains('field')) {
      screen = FieldServiceInvoiceHeader(user: widget.user);
    } else if (type.contains('material')) {
      screen = MaterialRequestHeaderScreen(user: widget.user);
    } else if (type.contains('load request')) {
      screen = LoadRequestHeaderScreen(user: widget.user);
    } else if (type.contains('inventory')) {
      screen = InventoryReconfirmHeadersScreen(user: widget.user);
    } else if (type.contains('void')) {
      screen = VoidTranscactioHeaderScreen(user: widget.user);
    } else if (type.contains('must')) {
      screen = MustSellHeaderScreen(user: widget.user);
    } else if (type.contains('settlement')) {
      screen = SettlementApprovalHeaderScreen(
        user: widget.user,
        users: widget.user,
      );
    } else if (type.contains('foc')) {
      screen = CustomerFocHeaderScreen(user: widget.user);
    } else if (type.contains('override')) {
      screen = CustomerOverrideApprovalHeaderScreen(user: widget.user);
    } else if (type.contains('sample')) {
      screen = FreeSampleApprovalHeader(user: widget.user);
    } else {
      screen = ApprovalScreen(user: widget.user);
    }

    Navigator.push(
      context,
      Platform.isIOS
          ? CupertinoPageRoute(builder: (context) => screen)
          : MaterialPageRoute(builder: (context) => screen),
    );
  }
}
