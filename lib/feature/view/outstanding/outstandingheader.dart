import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/view/arcollection/widgets/modewidget.dart';
import 'package:customer_connect/feature/view/outstanding/widgets/outstandinglistwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ssun_chart/pie_chart.dart';

class OutstandingHeaderScreen extends StatelessWidget {
  const OutstandingHeaderScreen({super.key});

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
          "Outstanding ",
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
        bottom: PreferredSize(
          preferredSize: Size(100, 170.h),
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Column(
              children: [
                Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey.shade200),
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 0.4,
                              spreadRadius: 0.2)
                        ]),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 20,
                          ),
                          hintText: "Search Invoices",
                          hintStyle: const TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal),
                          isDense: true,
                          counterText: "",
                          contentPadding: const EdgeInsets.all(15.0),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none)),
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      maxLength: 20,
                      // controller: _locationNameTextController,
                    )),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 110.w,
                      height: 110.h,
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
                                colors: outstandingcolorslist,
                                entries: List.of(
                                  [
                                    PieEntry('8', 8),
                                    PieEntry('4', 4),
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
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total Outstanding',
                                style: kfontstyle(fontSize: 10.sp),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Text(
                                '12/15,000.00',
                                style: kfontstyle(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          const ArChartItemWidget(
                            amount: '8/700.00',
                            color: Color(0xff9ce895),
                            title: 'Due',
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          const ArChartItemWidget(
                            amount: '4/500.00',
                            color: Color(0xffe18484),
                            title: 'Overdue',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //SizedBox(width: 05,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20, top: 0),
                child: Text(
                  "Outstanding invoices",
                  style: countHeading(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20, top: 0),
                child: Text(
                  "6",
                  style: countHeading(),
                ),
              ),
              // SizedBox(width: ,),
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          const Expanded(child: OutstandingListWidget()),
          SizedBox(
            height: 8.h,
          )
        ],
      ),
    );
  }
}

List<Color> outstandingcolorslist = [
  const Color(0xff9ce895),
  const Color(0xffe18484),
];
