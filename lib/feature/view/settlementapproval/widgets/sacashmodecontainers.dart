import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/settlementpaymodedetail/settlement_pay_mode_detail_bloc.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentModeWidgets extends StatefulWidget {
  const PaymentModeWidgets({super.key});

  @override
  State<PaymentModeWidgets> createState() => _PaymentModeWidgetsState();
}

class _PaymentModeWidgetsState extends State<PaymentModeWidgets> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
      child: BlocBuilder<SettlementPayModeDetailBloc,
          SettlementPayModeDetailState>(
        builder: (context, state) {
          return state.when(
              getSettlementPayModeDetailState: (paymode) => paymode == null
                  ? ShimmerContainers(height: 60.h, width: double.infinity)
                  : Row(
                      children: [
                        Container(
                          //height: 180,
                          width: MediaQuery.of(context).size.width / 2.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(243, 244, 242, 100),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 10),
                                child: Text(
                                  AppLocalizations.of(context)!.totalCash,
                                  style: kfontstyle(fontSize: 8.sp),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 2, left: 10),
                                child: Text(
                                  "${paymode[0].expectedAmountTotal}",
                                  //"7,300.00",
                                  style: kfontstyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10.sp,
                                  ),
                                ),
                                // child: BlocBuilder<SettlementCashDetailsBloc, SettlementCashDetailsState>(
                                //   builder: (context, state) {
                                //     return state.when(getCashDetailsState: (cash) => cash == null ?
                                //      Text("0",style: kfontstyle(
                                //         fontWeight: FontWeight.w500,
                                //         fontSize: 10.sp,
                                //       ),) :
                                //        Text("${cash.cashTotal}",style: kfontstyle(
                                //         fontWeight: FontWeight.w500,
                                //         fontSize: 10.sp,
                                //       )),
                                //      cashDetailFailedState: () => const Text("0"),
                                //      );

                                //   },
                                // ),
                              ),
                              const Divider(),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, right: 5, top: 2),
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white),
                                      child: Image.asset(
                                        "assets/images/hc.png",
                                        height: 18.3.h,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${selectedLocale?.languageCode == "en" ? paymode[0].mode : paymode[0].arMode}",
                                        style: kfontstyle(fontSize: 10.sp),
                                      ),
                                      Text("${paymode[0].expectedAmount}",
                                          // "3,800.00",
                                          style: kfontstyle(
                                              fontSize: 8.sp,
                                              fontWeight: FontWeight.w600)),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, right: 5),
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white),
                                      child: Image.asset(
                                        "assets/images/op.png",
                                        height: 18.3.h,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${selectedLocale?.languageCode == "en" ? paymode[1].mode : paymode[1].arMode}",
                                        style: kfontstyle(fontSize: 10.sp),
                                      ),
                                      Text("${paymode[1].expectedAmount}",
                                          style: kfontstyle(
                                              fontSize: 8.sp,
                                              fontWeight: FontWeight.w600)),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, right: 5),
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white),
                                      child: Image.asset(
                                        "assets/images/pos.png",
                                        height: 18.3.h,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${selectedLocale?.languageCode == "en" ? paymode[2].mode : paymode[2].arMode}",
                                        style: kfontstyle(fontSize: 10.sp),
                                      ),
                                      Text("${paymode[2].expectedAmount}",
                                          style: kfontstyle(
                                              fontSize: 8.sp,
                                              fontWeight: FontWeight.w600)),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Container(
                            //height: 180,
                            //width: MediaQuery.of(context).size.width/3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xfff3fbeb)
                                // color: const Color.fromARGB(255, 207, 243, 209)
                                ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                  ),
                                  child: Text(
                                    AppLocalizations.of(context)!.collected,
                                    style: kfontstyle(fontSize: 8.sp),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 2),
                                  child: Text(
                                    "${paymode[0].collectedAmountTotal}",
                                    // "7,000.00",
                                    style: kfontstyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                ),
                                const Divider(),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Text("${paymode[0].collectedAmount}",
                                      style: kfontstyle(
                                          fontSize: 8.sp,
                                          fontWeight: FontWeight.w600)),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Text("${paymode[1].collectedAmount}",
                                      style: kfontstyle(
                                          fontSize: 8.sp,
                                          fontWeight: FontWeight.w600)),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Text("${paymode[2].collectedAmount}",
                                      style: kfontstyle(
                                          fontSize: 8.sp,
                                          fontWeight: FontWeight.w600)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Container(
                            //height: 180,
                            //width: MediaQuery.of(context).size.width/3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xfffef2f2)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                  ),
                                  child: Text(
                                    AppLocalizations.of(context)!.variance,
                                    style: kfontstyle(fontSize: 8.sp),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 2),
                                  child: Text(
                                    "${paymode[0].varianceTotal}",
                                    style: kfontstyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                ),
                                const Divider(),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Text("${paymode[0].variance}",
                                      style: kfontstyle(
                                          fontSize: 8.sp,
                                          fontWeight: FontWeight.w600)),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Text("${paymode[1].variance}",
                                      style: kfontstyle(
                                          fontSize: 8.sp,
                                          fontWeight: FontWeight.w600)),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Text("${paymode[2].variance}",
                                      style: kfontstyle(
                                          fontSize: 8.sp,
                                          fontWeight: FontWeight.w600)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
              paymodeDetailFailedState: () => Center(
                    child: Text(
                      AppLocalizations.of(context)!
                          .noDataAvailableInPaymentMode,
                      style: kfontstyle(),
                    ),
                  ));
        },
      ),
    );
  }
}
