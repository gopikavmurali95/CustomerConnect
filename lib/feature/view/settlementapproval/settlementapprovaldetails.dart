import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/settlement_approval_header_out_model/settlement_approval_header_out_model.dart';
import 'package:customer_connect/feature/state/bloc/settlementapprovalpost/post_settlement_approval_bloc.dart';
import 'package:customer_connect/feature/state/bloc/settlementapprovalreject/settlement_approval_reject_bloc.dart';
import 'package:customer_connect/feature/state/bloc/settlementpaymentdetail/settlement_payment_detail_bloc.dart';
import 'package:customer_connect/feature/state/bloc/settlementpaymodedetail/settlement_pay_mode_detail_bloc.dart';
import 'package:customer_connect/feature/state/bloc/settlemetcashdetails/settlement_cash_details_bloc.dart';
import 'package:customer_connect/feature/view/settlementapproval/widgets/sacashdetails.dart';
import 'package:customer_connect/feature/view/settlementapproval/widgets/sacashmodecontainers.dart';
import 'package:customer_connect/feature/view/settlementapproval/widgets/sadetailstotalcheckslist.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettlementApprovalDetailScreen extends StatefulWidget {
  final SettlementApprovalHeaderOutModel header;
  const SettlementApprovalDetailScreen({super.key, required this.header});

  @override
  State<SettlementApprovalDetailScreen> createState() =>
      _SettlementApprovalDetailScreenState();
}

class _SettlementApprovalDetailScreenState
    extends State<SettlementApprovalDetailScreen> {
  @override
  void initState() {
    context
        .read<SettlementCashDetailsBloc>()
        .add(const ClearCashDetailsEvent());
    context
        .read<SettlementCashDetailsBloc>()
        .add(GetCashDetailEvent(udpID: widget.header.udpId ?? ""));

    context
        .read<SettlementPayModeDetailBloc>()
        .add(const ClearPaymodeDetailEvent());
    context
        .read<SettlementPayModeDetailBloc>()
        .add(GetPaymodeDetailEvent(udpID: widget.header.udpId ?? ""));

    context
        .read<SettlementPaymentDetailBloc>()
        .add(const ClearPaymentDetailEvent());

    context
        .read<SettlementPaymentDetailBloc>()
        .add(GetPaymentDetailEvent(udpID: widget.header.udpId ?? ''));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.5,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
          ),
        ),
        title: Text(
          AppLocalizations.of(context)!.settlementApprovalDetail,
          style: appHeading(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SizedBox(
          height: double.infinity,
          child: SingleChildScrollView(
            // physics: const NeverScrollableScrollPhysics(),
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 65,
                          width: 10,
                          decoration: BoxDecoration(
                              color: const Color(0xfffee8e0),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                            child: Row(
                          children: [
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${widget.header.rotCode} -${selectedLocale?.languageCode == "en" ? widget.header.rotName : widget.header.arrotName}",
                                  //'Tfsh003 - RTL route 03',
                                  style: kfontstyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xff2C6B9E),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "${selectedLocale?.languageCode == "en" ? widget.header.usrName : widget.header.arusrName}",
                                        overflow: TextOverflow.ellipsis,
                                        //'Tfsh03U03 - Fayis M ',
                                        style: kfontstyle(
                                            fontSize: 12.sp,
                                            color: const Color(0xff413434)),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "${widget.header.createdDate}",
                                        overflow: TextOverflow.ellipsis,
                                        // '31 May 2024 | 10:35',
                                        style: kfontstyle(
                                            fontSize: 12.sp,
                                            color: const Color(0xff413434)),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "${selectedLocale?.languageCode == "en" ? widget.header.rotType : widget.header.arrotType}",
                                  // 'Sales Route',
                                  style: kfontstyle(
                                      fontSize: 10.sp, color: Colors.grey),
                                ),
                              ],
                            ))
                          ],
                        )),
                      ],
                    ),
                    Divider(
                      color: Colors.grey[300],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                const SettlmntCashDetailsScreen(),
                const PaymentModeWidgets(),

                BlocBuilder<SettlementPayModeDetailBloc,
                    SettlementPayModeDetailState>(
                  builder: (context, state) {
                    return state.when(
                        getSettlementPayModeDetailState: (paymode) =>
                            paymode == null
                                ? ShimmerContainers(
                                    height: 60.h, width: double.infinity)
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                          AppLocalizations.of(context)!
                                              .varianceLimit,
                                          style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 137, 10, 3),
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w600,
                                          )),
                                      Expanded(
                                          child: Column(
                                        children: [
                                          SizedBox(
                                            height: 7.h,
                                          ),
                                          DottedLine(
                                            dashColor: Colors.grey.shade300,
                                          )
                                        ],
                                      )),
                                      Text("${paymode[0].varianceLimit}",
                                          //'200.00',
                                          style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 137, 10, 3),
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w600,
                                          ))
                                    ],
                                  ),
                        paymodeDetailFailedState: () => Center(
                              child: Text(
                                AppLocalizations.of(context)!
                                    .noDataAvailableInVariance,
                                style: kfontstyle(),
                              ),
                            ));
                  },
                ),
                const Divider(
                  color: Color.fromARGB(255, 227, 225, 225),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //SizedBox(width: 05,),
                      Text(
                        AppLocalizations.of(context)!.totalChecks,
                        style: countHeading(),
                      ),
                      BlocBuilder<SettlementPaymentDetailBloc,
                          SettlementPaymentDetailState>(
                        builder: (context, state) {
                          return Text(
                            state.when(
                              getPaymentDetailState: (payment) => payment ==
                                      null
                                  ? "0"
                                  : payment.length
                                      .toString(), //payment[index].amount.toString(),
                              paymentDetailFailedState: () => "0",
                            ),
                            style: countHeading(),
                          );
                        },
                      ),
                    ]),

                const SizedBox(
                  height: 5,
                ),
                const SettlmtTotalChecksList()
                // SizedBox(width: ,),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
                child: BlocConsumer<SettlementApprovalRejectBloc,
                    SettlementApprovalRejectState>(
              listener: (context, state) {
                state.when(
                  getRejectApprovalState: (response) {
                    if (response != null) {
                      Navigator.pop(context);
                      // if (isApproval) {
                      showCupertinoDialog(
                        context: context,
                        builder: (context) => CupertinoAlertDialog(
                          title: Text(AppLocalizations.of(context)!.alert),
                          content: Text(AppLocalizations.of(context)!
                              .rejectedSuccessfully),
                          actions: [
                            TextButton(
                              onPressed: () {
                                context
                                    .read<SettlementApprovalRejectBloc>()
                                    .add(GetRejectApprovalEvent(
                                        udpID: widget.header.udpId ?? ""));
                                Navigator.pop(context);
                                Navigator.pop(context);
                              },
                              child: Text(AppLocalizations.of(context)!.ok),
                            ),
                          ],
                        ),
                      );
                      // }
                    }
                  },
                  rejectApprovalFailedState: () {
                    Navigator.pop(context);
                    showCupertinoDialog(
                      context: context,
                      builder: (context) => CupertinoAlertDialog(
                        title: Text(AppLocalizations.of(context)!.alert),
                        content: Text(
                            AppLocalizations.of(context)!.somethingWentWrong),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(AppLocalizations.of(context)!.ok),
                          ),
                        ],
                      ),
                    );
                  },
                  postApprovalLoadingState: () {
                    showCupertinoModalPopup(
                        context: context,
                        barrierDismissible: false,
                        builder: (context) => SizedBox(
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                              child: const PopScope(
                                canPop: true,
                                child: CupertinoActivityIndicator(
                                  animating: true,
                                  color: Colors.red,
                                  radius: 30,
                                ),
                              ),
                            ));
                  },
                );
              },
              builder: (context, state) {
                return MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.red.shade300,
                    onPressed: () {
                      showCupertinoDialog(
                        context: context,
                        builder: (context) => CupertinoAlertDialog(
                          title: Text(AppLocalizations.of(context)!.alert),
                          content: Text(AppLocalizations.of(context)!
                              .doYouWantToRejectThisProduct),
                          actions: [
                            TextButton(
                              onPressed: () {
                                setState(() {});
                                Navigator.pop(context);
                              },
                              child: Text(AppLocalizations.of(context)!.cancel),
                            ),
                            TextButton(
                              onPressed: () {
                                context
                                    .read<SettlementApprovalRejectBloc>()
                                    .add(const RejectApprovalLoadingEvent());
                                context
                                    .read<SettlementApprovalRejectBloc>()
                                    .add(
                                      GetRejectApprovalEvent(
                                          udpID: widget.header.udpId ?? ""),
                                    );

                                Navigator.pop(context);
                              },
                              child:
                                  Text(AppLocalizations.of(context)!.proceed),
                            ),
                          ],
                        ),
                      );
                    },
                    child: Text(
                      AppLocalizations.of(context)!.reject,
                      style: kfontstyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ));
              },
            )),
            const SizedBox(
              width: 5,
            ),
            BlocConsumer<PostSettlementApprovalBloc,
                PostSettlementApprovalState>(
              listener: (context, state) {
                state.when(getPostSettlementApprovalState: (response) {
                  if (response != null) {
                    Navigator.pop(context);
                    // if (isApproval) {
                    showCupertinoDialog(
                      context: context,
                      builder: (context) => CupertinoAlertDialog(
                        title: Text(AppLocalizations.of(context)!.alert),
                        content: Text(AppLocalizations.of(context)!
                            .approvedSuccessfully), //Text("${response.status}"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              context.read<PostSettlementApprovalBloc>().add(
                                  GetPostApprovalEvent(
                                      udpID: widget.header.udpId ?? ""));

                              Navigator.pop(context);
                            },
                            child: Text(AppLocalizations.of(context)!.ok),
                          ),
                        ],
                      ),
                    );
                    // }
                  }
                }, postSettlementApprovalFailedState: () {
                  Navigator.pop(context);
                  showCupertinoDialog(
                    context: context,
                    builder: (context) => CupertinoAlertDialog(
                      title: Text(AppLocalizations.of(context)!.alert),
                      content: Text(
                          AppLocalizations.of(context)!.somethingWentWrong),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(AppLocalizations.of(context)!.ok),
                        ),
                      ],
                    ),
                  );
                }, postLoadingState: () {
                  showCupertinoModalPopup(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) => SizedBox(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            child: const PopScope(
                              canPop: true,
                              child: CupertinoActivityIndicator(
                                animating: true,
                                color: Colors.red,
                                radius: 30,
                              ),
                            ),
                          ));
                });
              },
              builder: (context, state) {
                return Expanded(
                    child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.green.shade300,
                        onPressed: () {
                          showCupertinoDialog(
                            context: context,
                            builder: (context) => CupertinoAlertDialog(
                              title: Text(AppLocalizations.of(context)!.alert),
                              content: Text(AppLocalizations.of(context)!
                                  .doYouWantToApproveThisProduct),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    setState(() {});
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                      AppLocalizations.of(context)!.cancel),
                                ),
                                TextButton(
                                  onPressed: () {
                                    context
                                        .read<PostSettlementApprovalBloc>()
                                        .add(const PostLoadingApprovalEvent());
                                    context
                                        .read<PostSettlementApprovalBloc>()
                                        .add(
                                          GetPostApprovalEvent(
                                            udpID: widget.header.udpId ?? "",
                                          ),
                                        );

                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                      AppLocalizations.of(context)!.proceed),
                                ),
                              ],
                            ),
                          );
                        },
                        child: Text(
                          AppLocalizations.of(context)!.approve,
                          style: kfontstyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )));
              },
            )
          ],
        ),
      ),
    );
  }
}
