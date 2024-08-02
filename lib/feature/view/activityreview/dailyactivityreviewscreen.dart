import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/cubit/dailyactivityexpansion/daily_activity_expansion_cubit.dart';
import 'package:customer_connect/feature/view/activityreview/widgets/dailytargetcontainer.dart';
import 'package:customer_connect/feature/view/activityreview/widgets/todayssaleswidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DailyActivityReviewDetailScreen extends StatefulWidget {
  const DailyActivityReviewDetailScreen({super.key});

  @override
  State<DailyActivityReviewDetailScreen> createState() =>
      _DailyActivityReviewDetailScreenState();
}

class _DailyActivityReviewDetailScreenState
    extends State<DailyActivityReviewDetailScreen> {
  @override
  void initState() {
    context.read<DailyActivityExpansionCubit>().expandTile(10, -1, false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Daily Activity Review",
          style: appHeading(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              "assets/svg/filter.svg",
              height: 20,
              fit: BoxFit.scaleDown,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 3.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50.h,
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
                                'Tfsh00 - RTL route 0',
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
                                      overflow: TextOverflow.ellipsis,
                                      'Tfsh03U03 - Fayis M ',
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
                                      overflow: TextOverflow.ellipsis,
                                      'Start: 31 May 2024 | 10:35 | End 31 May 2024 | 10:35',
                                      style: kfontstyle(
                                          fontSize: 9.sp,
                                          color: const Color(0xff413434)),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Sales Route',
                                style: kfontstyle(
                                    fontSize: 10.sp, color: Colors.grey),
                              ),
                            ],
                          ))
                        ],
                      )),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            const DailyTargetContainer(),
            SizedBox(
              height: 8.h,
            ),
            const TodaysSalesWidget(),
            SizedBox(
              height: 8.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Visits",
                    style: countHeading(),
                  ),
                  Text(
                    '10',
                    style: countHeading(),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: BlocBuilder<DailyActivityExpansionCubit,
                  DailyActivityExpansionState>(
                builder: (context, state) {
                  return ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        bool isAlreadyExpanded = state.expandedList[index];
                        context
                            .read<DailyActivityExpansionCubit>()
                            .expandTile(10, index, isAlreadyExpanded);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AnimatedSize(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                                reverseDuration:
                                    const Duration(milliseconds: 300),
                                child: Container(
                                  height: state.expandedList[index] == true
                                      ? 125.h
                                      : 40.h,
                                  width: 10,
                                  decoration: BoxDecoration(
                                      color: const Color(0xfffee8e0),
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Expanded(
                                  child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '20123$index - Emmerch International Hotel',
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
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    'Start: 31 May 2024 | 10:35 | End 31 May 2024 | 10:35',
                                                    style: kfontstyle(
                                                        fontSize: 10.sp,
                                                        color: const Color(
                                                            0xff413434)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    'Duration : 3 Hrs 13 Mins',
                                                    style: kfontstyle(
                                                        fontSize: 10.sp,
                                                        color: const Color(
                                                            0xff413434)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            AnimatedSize(
                                              duration: const Duration(
                                                  milliseconds: 300),
                                              curve: Curves.easeInOut,
                                              reverseDuration: const Duration(
                                                  milliseconds: 300),
                                              child: Visibility(
                                                visible:
                                                    state.expandedList[index],
                                                child: Column(
                                                  children: [
                                                    SizedBox(
                                                      height: 6.h,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Flexible(
                                                          flex: 3,
                                                          fit: FlexFit.tight,
                                                          child: Container(
                                                            decoration: const BoxDecoration(
                                                                borderRadius: BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            8)),
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        219,
                                                                        242,
                                                                        222)),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(8.0),
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    'Sales',
                                                                    style: TextStyle(
                                                                        color: const Color(
                                                                            0xff6d9d6a),
                                                                        fontSize:
                                                                            10.sp),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5.h,
                                                                  ),
                                                                  Text(
                                                                    'Cash',
                                                                    style: TextStyle(
                                                                        fontSize: 9
                                                                            .sp,
                                                                        color: Colors
                                                                            .black54),
                                                                  ),
                                                                  Text(
                                                                    '3/1200.00',
                                                                    style: TextStyle(
                                                                        fontSize: 9
                                                                            .sp,
                                                                        color: Colors
                                                                            .black54),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5.h,
                                                                  ),
                                                                  Text(
                                                                    'Credit',
                                                                    style: TextStyle(
                                                                        fontSize: 9
                                                                            .sp,
                                                                        color: Colors
                                                                            .black54),
                                                                  ),
                                                                  Text(
                                                                    '1/150.00',
                                                                    style: TextStyle(
                                                                        fontSize: 9
                                                                            .sp,
                                                                        color: Colors
                                                                            .black54),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 6.w,
                                                        ),
                                                        Flexible(
                                                          flex: 3,
                                                          fit: FlexFit.tight,
                                                          child: Container(
                                                            decoration:
                                                                const BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .all(Radius
                                                                          .circular(
                                                                              8)),
                                                              color: Color(
                                                                  0xfffbf4f4),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(8.0),
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    'Return',
                                                                    style: TextStyle(
                                                                        color: const Color(
                                                                            0xffc78080),
                                                                        fontSize:
                                                                            10.sp),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5.h,
                                                                  ),
                                                                  Text(
                                                                    'Cash',
                                                                    style: TextStyle(
                                                                        fontSize: 9
                                                                            .sp,
                                                                        color: Colors
                                                                            .black54),
                                                                  ),
                                                                  Text(
                                                                    '3/1200.00',
                                                                    style: TextStyle(
                                                                        fontSize: 9
                                                                            .sp,
                                                                        color: Colors
                                                                            .black54),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5.h,
                                                                  ),
                                                                  Text(
                                                                    'Credit',
                                                                    style: TextStyle(
                                                                        fontSize: 9
                                                                            .sp,
                                                                        color: Colors
                                                                            .black54),
                                                                  ),
                                                                  Text(
                                                                    '1/150.00',
                                                                    style: TextStyle(
                                                                        fontSize: 9
                                                                            .sp,
                                                                        color: Colors
                                                                            .black54),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 6.w,
                                                        ),
                                                        Flexible(
                                                          flex: 3,
                                                          fit: FlexFit.tight,
                                                          child: Container(
                                                            decoration: const BoxDecoration(
                                                                borderRadius: BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            8)),
                                                                color: Color(
                                                                    0xfff4f8fb)),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(8.0),
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    'Collection',
                                                                    style: TextStyle(
                                                                        color: const Color(
                                                                            0xff9fadd2),
                                                                        fontSize:
                                                                            10.sp),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5.h,
                                                                  ),
                                                                  Text(
                                                                    'Cash',
                                                                    style: TextStyle(
                                                                        fontSize: 9
                                                                            .sp,
                                                                        color: Colors
                                                                            .black54),
                                                                  ),
                                                                  Text(
                                                                    '3/1200.00',
                                                                    style: TextStyle(
                                                                        fontSize: 9
                                                                            .sp,
                                                                        color: Colors
                                                                            .black54),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5.h,
                                                                  ),
                                                                  Text(
                                                                    'Cheque & online',
                                                                    style: TextStyle(
                                                                        fontSize: 9
                                                                            .sp,
                                                                        color: Colors
                                                                            .black54),
                                                                  ),
                                                                  Text(
                                                                    '1/150.00',
                                                                    style: TextStyle(
                                                                        fontSize: 9
                                                                            .sp,
                                                                        color: Colors
                                                                            .black54),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )),
                            ],
                          ),
                        ],
                      ),
                    ),
                    separatorBuilder: (context, index) => Divider(
                      color: Colors.grey[300],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
