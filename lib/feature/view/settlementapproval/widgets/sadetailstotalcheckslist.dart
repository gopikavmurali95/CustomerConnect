import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/settlementpaymentdetail/settlement_payment_detail_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettlmtTotalChecksList extends StatefulWidget {
  const SettlmtTotalChecksList({super.key});

  @override
  State<SettlmtTotalChecksList> createState() => _SettlmtTotalChecksListState();
}

class _SettlmtTotalChecksListState extends State<SettlmtTotalChecksList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        // height: MediaQuery.of(context).size.height,
        child: BlocBuilder<SettlementPaymentDetailBloc,
            SettlementPaymentDetailState>(
      builder: (context, state) {
        return state.when(
            getPaymentDetailState: (payment) => payment == null
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: ListView.separated(
                        itemBuilder: (context, index) => ShimmerContainers(
                            height: 60.h, width: double.infinity),
                        separatorBuilder: (context, index) => Divider(
                              color: Colors.grey[300],
                            ),
                        itemCount: 10),
                  )
                : Column(
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: payment.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              SizedBox(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      child: Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 25,
                                            backgroundColor:
                                                const Color.fromARGB(
                                                    255, 237, 194, 227),
                                            child: Center(
                                              child: Image.asset(
                                                "assets/images/ar_li.png",
                                                height: 18.3.h,
                                              ),
                                              // child: Text(
                                              //   "$index",
                                              //   style: TextStyle(
                                              //       fontSize: 14.sp,
                                              //       fontWeight:
                                              //           FontWeight.bold,
                                              //       color: Colors.white),
                                              // ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10.w,
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  width: 200.w,
                                                  child: Text(
                                                    // "6735278782",
                                                    '${payment[index].chequeNo}',
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    maxLines: 2,
                                                    style: kfontstyle(
                                                      fontSize: 11.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  '${selectedLocale?.languageCode == "en" ? payment[index].bnkName : payment[index].arbnkName}',
                                                  //"Emirates MBD,Abu Dhabi",
                                                  // '${spHeader[index].startDate} To ${spHeader[index].endDate}',
                                                  style: subTextStyle(),
                                                ),
                                                Text(
                                                  '${payment[index].chequeDate}',
                                                  // "16 May 2024",
                                                  //'${spHeader[index].prhCode}',
                                                  style: subTextStyle(),
                                                ),
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      2,
                                                  child: Text(
                                                    '${payment[index].cusCode} - ${selectedLocale?.languageCode == "en" ? payment[index].name : payment[index].arname}',
                                                    //'${spHeader[index].prhCode}',
                                                    style: subTextStyle(),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        GestureDetector(
                                          onTap: () {},
                                          child: Text(
                                            '${payment[index].amount}',
                                            style: TextStyle(fontSize: 10.sp),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          '${selectedLocale?.languageCode == "en" ? payment[index].type : payment[index].artype}',
                                          style: const TextStyle(fontSize: 10),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 0, right: 0, top: 0
                                    // top: 10,bottom: 10
                                    ),
                                child: Divider(
                                  color: Colors.grey.shade300,
                                ),
                              )
                            ],
                          );
                        },
                      ),
                    ],
                  ),
            paymentDetailFailedState: () => Center(
                  child: Text(
                    AppLocalizations.of(context)!.noDataAvailable,
                    style: kfontstyle(),
                  ),
                ));
      },
    ));
  }
}
