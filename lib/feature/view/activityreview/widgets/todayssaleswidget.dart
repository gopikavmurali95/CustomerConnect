import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/activitysalesdata/activity_review_sales_data_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TodaysSalesWidget extends StatelessWidget {
  const TodaysSalesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: BlocBuilder<ActivityReviewSalesDataBloc,
          ActivityReviewSalesDataState>(
        builder: (context, state) {
          return state.when(
            getActivityReviewSalesData: (sales) => sales == null
                ? ShimmerContainers(height: 70.h, width: double.infinity)
                : Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: const Color(0xfff2ebe0),
                      ),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/Group 6489.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                 AppLocalizations.of(context)!.todaysSales,
                                style: countHeading(),
                              ),
                              Text(
                                sales.salesAmt ?? '0.00',
                                style: countHeading(),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 30.h,
                                    width: 10,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color: Color(0xff69a6d4)),
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        sales.totVisits ?? '0',
                                        style: countHeading(),
                                      ),
                                      Text(
                                         AppLocalizations.of(context)!.totalVisits,
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            color: Colors.black54),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  Container(
                                    height: 30.h,
                                    width: 10,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color: Color(0xffd4c669)),
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        sales.prodVisits ?? '0',
                                        style: countHeading(),
                                      ),
                                      Text(
                                         AppLocalizations.of(context)!.productiveVisits,
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            color: Colors.black54),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              const Spacer(),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
            activitySalesFailedState: () =>  Center(
              child: Text(  AppLocalizations.of(context)!.noDataAvailable,),
            ),
          );
        },
      ),
    );
  }
}
