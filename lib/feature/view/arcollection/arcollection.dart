import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/view/arcollection/widgets/arheaderlistwidget.dart';
import 'package:customer_connect/feature/view/arcollection/widgets/modewidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ssun_chart/pie_chart.dart';

class ArCollectionScreen extends StatelessWidget {
  const ArCollectionScreen({super.key});

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
          "AR Collection ",
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
          preferredSize: Size(100, 180.h),
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
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
                                colors: colorslist,
                                entries: List.of(
                                  [
                                    PieEntry('3', 3),
                                    PieEntry('4', 4),
                                    PieEntry('3', 3),
                                    PieEntry('2', 2),
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
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total Collection',
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
                            amount: '4/4,000.00',
                            color: Color(0xff9ce2f5),
                            title: 'Hard Cash',
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          const ArChartItemWidget(
                            amount: '3/3,000.00',
                            color: Color(0xffe6dd94),
                            title: 'Online Payment',
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          const ArChartItemWidget(
                            amount: '2/2,000.00',
                            color: Color(0xff93e1b2),
                            title: 'POS',
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          const ArChartItemWidget(
                            amount: '3/6,000.00',
                            color: Color(0xffdf936e),
                            title: 'Cheque',
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
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
                          hintText: "Search AR Collections",
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
                  "All",
                  style: countHeading(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20, top: 0),
                child: Text(
                  "12",
                  style: countHeading(),
                ),
              ),
              // SizedBox(width: ,),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          const Expanded(child: ARHeaderListWidget()),
          SizedBox(
            height: 10.sp,
          )
        ],
      ),
    );
  }
}

List<Color> colorslist = [
  const Color(0xffdf936e),
  const Color(0xff9ce2f5),
  const Color(0xffe6dd94),
  const Color(0xff93e1b2)
];
/* final List<PieData> pies = [
  PieData(value: 3, color: const Color(0xffdf936e)),
  PieData(
    value: 4,
    color: const Color(0xff9ce2f5),
  ),
  PieData(
    value: 3,
    color: const Color(0xffe6dd94),
  ),
  PieData(
    value: 2,
    color: const Color(0xff93e1b2),
  ),
]; */
