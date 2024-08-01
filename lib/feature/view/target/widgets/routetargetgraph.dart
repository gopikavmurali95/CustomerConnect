import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/view/arcollection/widgets/modewidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ssun_chart/pie_chart.dart';

class RouteTargetGraphWidget extends StatefulWidget {
  const RouteTargetGraphWidget({super.key});

  @override
  State<RouteTargetGraphWidget> createState() => _RouteTargetGraphWidgetState();
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

class _RouteTargetGraphWidgetState extends State<RouteTargetGraphWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const PageScrollPhysics(),
        child: Row(
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
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    gradient: containerGradients[0][0]),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Target Amount',
                            style: countHeading(),
                          ),
                          Text(
                            '2500.00',
                            style: countHeading(),
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 100.w,
                            height: 100.h,
                            child: PieChart(
                              bgColor: Colors.transparent,
                              usePercentValues: false,
                              centerTextColor: Colors.blue,
                              centerTextSize: 11,
                              drawCenterText: true,
                              drawHoleEnabled: true,
                              holeRadius: 26,
                              entryLabelTextSize: 10,
                              transparentCircleRadius: 33,
                              entryLabelColor: Colors.black,
                              data: PieData(
                                List.of(
                                  [
                                    PieDataSet(
                                      colors: routetargetcolorslist,
                                      entries: List.of(
                                        [
                                          PieEntry('56%', 56),
                                          PieEntry('8%', 38),
                                          PieEntry('36%', 76),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const ArChartItemWidget(
                                  amount: '1400.00',
                                  color: Color(0xff3DDB7C),
                                  title: 'Achieved',
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                const ArChartItemWidget(
                                  amount: '200.00',
                                  color: Color(0xffE07744),
                                  title: 'MTD Gap',
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                const ArChartItemWidget(
                                  amount: '1100.00',
                                  color: Color(0xffEAD846),
                                  title: 'Monthly Gap',
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
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
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    gradient: containerGradients[1][0]),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Target Quantity',
                            style: countHeading(),
                          ),
                          Text(
                            '2500.00',
                            style: countHeading(),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 100.w,
                            height: 100.h,
                            child: PieChart(
                              bgColor: Colors.transparent,
                              usePercentValues: false,
                              centerTextColor: Colors.blue,
                              centerTextSize: 11,
                              drawCenterText: true,
                              drawHoleEnabled: true,
                              holeRadius: 20,
                              entryLabelTextSize: 10,
                              transparentCircleRadius: 27,
                              entryLabelColor: Colors.white,
                              data: PieData(
                                List.of(
                                  [
                                    PieDataSet(
                                      colors: routetargetcolorslist,
                                      entries: List.of(
                                        [
                                          PieEntry('56%', 56),
                                          PieEntry('8%', 38),
                                          PieEntry('36%', 76),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const ArChartItemWidget(
                                  amount: '1400.00',
                                  color: Color(0xff3DDB7C),
                                  title: 'Achieved',
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                const ArChartItemWidget(
                                  amount: '200.00',
                                  color: Color(0xffE07744),
                                  title: 'MTD Gap',
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                const ArChartItemWidget(
                                  amount: '1100.00',
                                  color: Color(0xffEAD846),
                                  title: 'Monthly Gap',
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
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
      ),
    );
  }
}

List<Color> routetargetcolorslist = [
  const Color(0xff3DDB7C),
  const Color(0xffE07744),
  const Color(0xffEAD846),
];
