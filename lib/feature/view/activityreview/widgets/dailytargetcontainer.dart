// ignore_for_file: deprecated_member_use

import 'package:customer_connect/feature/state/bloc/activityreviewtarget/activity_review_targets_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DailyTargetContainer extends StatelessWidget {
  const DailyTargetContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: BlocBuilder<ActivityReviewTargetsBloc, ActivityReviewTargetsState>(
        builder: (context, state) {
          return state.when(
            getActivitytargetState: (target) => target == null
                ? ShimmerContainers(height: 120.h, width: double.infinity)
                : Container(
                    width: double.infinity,
                    // height: MediaQuery.of(context).size.width / 1.9,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff368da6),
                          Color(0xff58afb8),
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    AppLocalizations.of(context)!.totalTarget,
                                    //'Total Target',
                                    style: TextStyle(
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    target.totTargetAmt ?? '0.00',
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Container(
                                // width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    color: Colors.white24.withOpacity(.2)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 8),
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "MTD${AppLocalizations.of(context)!.workingDays}",
                                            // 'MTD Working Days',
                                            style: TextStyle(
                                                fontSize: 8.sp,
                                                fontWeight: FontWeight.w300,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            target.mtdWrkDays ?? '0',
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w300,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 4.w,
                                      ),
                                      IntrinsicHeight(
                                        child: Row(
                                          children: [
                                            VerticalDivider(
                                              color: Colors.grey[300],
                                              thickness: 1,
                                            ),
                                            SizedBox(
                                              width: 4.w,
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  AppLocalizations.of(context)!
                                                      .totalworkingDays,
                                                  style: TextStyle(
                                                      fontSize: 8.sp,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color: Colors.white),
                                                ),
                                                Text(
                                                  target.totWrkDays ?? '0',
                                                  style: TextStyle(
                                                      fontSize: 14.sp,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      color: Colors.white),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          target.proRateTarget ?? '0.00',
                                          style: TextStyle(
                                              fontSize: 13.sp,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          AppLocalizations.of(context)!
                                              .proRatedTarget,
                                          style: TextStyle(
                                              fontSize: 8.sp,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.black54),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      color: Colors.white),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          target.mtdSales ?? '0.00',
                                          style: TextStyle(
                                              fontSize: 13.sp,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "MTD${AppLocalizations.of(context)!.sales}",
                                          // 'MTD Sales',
                                          style: TextStyle(
                                              fontSize: 8.sp,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.black54),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 7.h,
                          ),
                          Row(
                            children: [
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      color: Colors.white),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          target.excShtg ?? '0.00',
                                          style: TextStyle(
                                              fontSize: 13.sp,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "${AppLocalizations.of(context)!.excess}/${AppLocalizations.of(context)!.shortage}",
                                          // 'Excess/Shortage',
                                          style: TextStyle(
                                              fontSize: 8.sp,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.black54),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      color: Colors.white),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          target.salPerDay ?? '0.00',
                                          style: TextStyle(
                                              fontSize: 13.sp,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "${AppLocalizations.of(context)!.sales}/${AppLocalizations.of(context)!.daytoAcieveTarget}",
                                          // 'Sales/Day to achive target',
                                          style: TextStyle(
                                              fontSize: 8.sp,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.black54),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
            actvitytargetFailedState: () => Center(
              child: Text(AppLocalizations.of(context)!.noDataAvailable),
            ),
          );
        },
      ),
    );
  }
}
