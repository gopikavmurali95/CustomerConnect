import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/targetheadercount/target_header_count_bloc.dart';
import 'package:customer_connect/feature/view/target/widgets/lineartargetchart.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TargetGraphWidget extends StatefulWidget {
  const TargetGraphWidget({
    super.key,
  });

  @override
  State<TargetGraphWidget> createState() => _TargetGraphWidgetState();
}

final containerGradients = [
  [
    const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xffe9f2f6),
        Color(0xffdcdef7),
      ],
    ),
    const LinearGradient(colors: [
      Color(0xff8a91e4),
      Color(0xff535bcc),
    ]),
    const LinearGradient(
      colors: [
        Color(0xffc5c7e9),
        Color(0xff969add),
      ],
    ),
  ],
  [
    const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xfff5f6e9),
        Color(0xfff7f3dc),
      ],
    ),
    const LinearGradient(colors: [
      Color(0xffe0dc72),
      Color(0xffc2c72e),
    ]),
    const LinearGradient(
      colors: [
        Color(0xffe9e5c6),
        Color(0xffdcda95),
      ],
    ),
  ]
];

class _TargetGraphWidgetState extends State<TargetGraphWidget> {
  @override
  void initState() {
    context.read<TargetHeaderCountBloc>().add(const ClearTargetHeaderCount());
    context.read<TargetHeaderCountBloc>().add(GetTargetHeaderCountEvent(
        fromDate:
            '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: MediaQuery.of(context).size.width / 2.6,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const PageScrollPhysics(),
        child: BlocBuilder<TargetHeaderCountBloc, TargetHeaderCountState>(
          builder: (context, state) {
            return state.when(
                getTargetHeaderCountState: (count) => count == null
                    ? SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const PageScrollPhysics(),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 5.w,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: ShimmerContainers(
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width - 50,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: ShimmerContainers(
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width - 50,
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                          ],
                        ),
                      )
                    : Row(
                        children: [
                          SizedBox(
                            width: 5.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              // height: MediaQuery.of(context).size.width / 2.8,
                              width: MediaQuery.of(context).size.width - 50,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                  gradient: containerGradients[0][0]),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Target Amount',
                                          style: countHeading(),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    ConstrainedBox(
                                      constraints: BoxConstraints(
                                        minWidth: 50.w,
                                        maxWidth: double.infinity,
                                      ),
                                      child: CustomProgressBar(
                                          targetAmount: double.parse((count.totalTargetAmt ?? '').replaceAll(',', '')) >
                                                  double.parse(
                                                      (count.totalAchAmt ?? '')
                                                          .replaceAll(',', ''))
                                              ? double.parse(
                                                  (count.totalTargetAmt ?? '')
                                                      .replaceAll(',', ''))
                                              : double.parse(
                                                  (count.totalAchAmt ?? '')
                                                      .replaceAll(',', '')),
                                          achievedAmount:
                                              double.parse((count.totalAchAmt ?? '').replaceAll(',', '')),
                                          colors: containerGradients[0][1]),
                                    ),
                                    SizedBox(
                                      height: 3.5.h,
                                    ),
                                    ConstrainedBox(
                                      constraints: BoxConstraints(
                                        minWidth: 50.w,
                                        maxWidth: double.infinity,
                                      ),
                                      child: CustomProgressBar(
                                        targetAmount: double.parse(
                                                    (count.totalTargetAmt ?? '')
                                                        .replaceAll(',', '')) >
                                                double.parse(
                                                    (count.totalAchAmt ?? '')
                                                        .replaceAll(',', ''))
                                            ? double.parse(
                                                (count.totalTargetAmt ?? '')
                                                    .replaceAll(',', ''))
                                            : double.parse(
                                                (count.totalAchAmt ?? '')
                                                    .replaceAll(',', '')),
                                        achievedAmount: double.parse(
                                            (count.totalTargetAmt ?? '')
                                                .replaceAll(',', '')),
                                        colors: containerGradients[0][2],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    Row(
                                      children: [
                                        Flexible(
                                          flex: 3,
                                          fit: FlexFit.tight,
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 25.h,
                                                width: 5.w,
                                                decoration: BoxDecoration(
                                                  color: containerGradients[0]
                                                          [1]
                                                      .colors[1],
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                    Radius.circular(15),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5.w,
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    count.totalTargetAmt ?? '',
                                                    style: TextStyle(
                                                        fontSize: 10.sp,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  Text(
                                                    'Target Amount',
                                                    style: TextStyle(
                                                        fontSize: 10.sp,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        Flexible(
                                          flex: 3,
                                          fit: FlexFit.tight,
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 25.h,
                                                width: 5.w,
                                                decoration: BoxDecoration(
                                                  color: containerGradients[0]
                                                          [2]
                                                      .colors[1],
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                    Radius.circular(15),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5.w,
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    count.totalAchAmt ?? '',
                                                    style: TextStyle(
                                                        fontSize: 10.sp,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  Text(
                                                    'Achieved',
                                                    style: TextStyle(
                                                        fontSize: 10.sp,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        Flexible(
                                          flex: 3,
                                          fit: FlexFit.tight,
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 25.h,
                                                width: 5.w,
                                                decoration: BoxDecoration(
                                                  color: Colors.white
                                                      .withOpacity(.6),
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                    Radius.circular(15),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5.w,
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    count.totalGapAmt ?? '',
                                                    style: TextStyle(
                                                        fontSize: 10.sp,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  Text(
                                                    'Gap Amount',
                                                    style: TextStyle(
                                                        fontSize: 10.sp,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              // height: MediaQuery.of(context).size.width / 2.8,
                              width: MediaQuery.of(context).size.width - 50,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                  gradient: containerGradients[1][0]),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Target Quantity',
                                          style: countHeading(),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    ConstrainedBox(
                                      constraints: BoxConstraints(
                                        minWidth: 50.w,
                                        maxWidth: double.infinity,
                                      ),
                                      child: CustomProgressBar(
                                          targetAmount: double.parse((count.totalTargetQty ?? '').replaceAll(',', '')) >
                                                  double.parse(
                                                      (count.totalAchQty ?? '')
                                                          .replaceAll(',', ''))
                                              ? double.parse(
                                                  (count.totalTargetQty ?? '')
                                                      .replaceAll(',', ''))
                                              : double.parse(
                                                  (count.totalAchQty ?? '')
                                                      .replaceAll(',', '')),
                                          achievedAmount:
                                              double.parse((count.totalAchQty ?? '').replaceAll(',', '')),
                                          colors: containerGradients[1][1]),
                                    ),
                                    SizedBox(
                                      height: 3.5.h,
                                    ),
                                    ConstrainedBox(
                                      constraints: BoxConstraints(
                                        minWidth: 50.w,
                                        maxWidth: double.infinity,
                                      ),
                                      child: CustomProgressBar(
                                        targetAmount: double.parse(
                                                    (count.totalTargetQty ?? '')
                                                        .replaceAll(',', '')) >
                                                double.parse(
                                                    (count.totalAchQty ?? '')
                                                        .replaceAll(',', ''))
                                            ? double.parse(
                                                (count.totalTargetQty ?? '')
                                                    .replaceAll(',', ''))
                                            : double.parse(
                                                (count.totalAchQty ?? '')
                                                    .replaceAll(',', '')),
                                        achievedAmount: double.parse(
                                            (count.totalTargetQty ?? '')
                                                .replaceAll(',', '')),
                                        colors: containerGradients[1][2],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    Row(
                                      children: [
                                        Flexible(
                                          flex: 3,
                                          fit: FlexFit.tight,
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 25.h,
                                                width: 5.w,
                                                decoration: BoxDecoration(
                                                  color: containerGradients[1]
                                                          [1]
                                                      .colors[1],
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                    Radius.circular(15),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5.w,
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    count.totalTargetQty ?? '',
                                                    style: TextStyle(
                                                        fontSize: 10.sp,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  Text(
                                                    'Target Quantity',
                                                    style: TextStyle(
                                                        fontSize: 10.sp,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        Flexible(
                                          flex: 3,
                                          fit: FlexFit.tight,
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 25.h,
                                                width: 5.w,
                                                decoration: BoxDecoration(
                                                  color: containerGradients[1]
                                                          [2]
                                                      .colors[1],
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                    Radius.circular(15),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5.w,
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    count.totalAchQty ?? '',
                                                    style: TextStyle(
                                                        fontSize: 10.sp,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  Text(
                                                    'Achieved',
                                                    style: TextStyle(
                                                        fontSize: 10.sp,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        Flexible(
                                          flex: 3,
                                          fit: FlexFit.tight,
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 25.h,
                                                width: 5.w,
                                                decoration: BoxDecoration(
                                                  color: Colors.white
                                                      .withOpacity(.6),
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                    Radius.circular(15),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5.w,
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    count.totalGapQty ?? '',
                                                    style: TextStyle(
                                                        fontSize: 10.sp,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  Text(
                                                    'Gap Qty',
                                                    style: TextStyle(
                                                        fontSize: 10.sp,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.h,
                          ),
                        ],
                      ),
                targetHeaderCountFailed: () => SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const PageScrollPhysics(),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 5.w,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.15,
                              width: MediaQuery.of(context).size.width - 50,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                  gradient: containerGradients[0][0]),
                              child: Center(
                                child: Text(
                                  'No Data Available',
                                  style: kfontstyle(),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.15,
                              width: MediaQuery.of(context).size.width - 50,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                  gradient: containerGradients[1][0]),
                              child: Center(
                                child: Text(
                                  'No Data Available',
                                  style: kfontstyle(),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                        ],
                      ),
                    ));
          },
        ),
      ),
    );
  }
}
