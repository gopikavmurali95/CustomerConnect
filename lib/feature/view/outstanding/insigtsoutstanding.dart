import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/cubit/arscrol/ar_scroll_ctrl_cubit.dart';
import 'package:customer_connect/feature/view/arcollection/widgets/modewidget.dart';
import 'package:customer_connect/feature/view/outstanding/outstandingheader.dart';
import 'package:customer_connect/feature/view/outstanding/widgets/insightoutstandinglist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ssun_chart/pie_chart.dart';

class InsghtsOutStandingScreen extends StatefulWidget {
  const InsghtsOutStandingScreen({super.key});

  @override
  State<InsghtsOutStandingScreen> createState() =>
      _InsghtsOutStandingScreenState();
}

class _InsghtsOutStandingScreenState extends State<InsghtsOutStandingScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<ArScrollCtrlCubit>().onInit();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();

    super.dispose();
  }

  void _scrollListener() {
    context.read<ArScrollCtrlCubit>().onscrollchnage(_scrollController);
  }

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
      ),
      body: BlocBuilder<ArScrollCtrlCubit, ArScrollCtrlState>(
        builder: (context, state) {
          return Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 10,
                      decoration: BoxDecoration(
                          color: const Color(0xfffee8e0),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'A025206 - ',
                                style: kfontstyle(
                                  fontSize: 12.sp,
                                  color: const Color(0xff2C6B9E),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  overflow: TextOverflow.ellipsis,
                                  'Tromp, Muller and Mitchell',
                                  style: kfontstyle(
                                      fontSize: 12.sp,
                                      color: const Color(0xff413434)),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '199525 - ',
                                style: kfontstyle(
                                    fontSize: 11.sp,
                                    color: const Color(0xff413434)),
                              ),
                              Expanded(
                                child: Text(
                                  'Carrefour Hypermarket',
                                  overflow: TextOverflow.ellipsis,
                                  style: kfontstyle(fontSize: 12.sp),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Virtual | Supermarket | Dubai ',
                            style:
                                kfontstyle(fontSize: 10.sp, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                                  // ignore: use_full_hex_values_for_flutter_colors
                                  color: Color(0xff00000050),
                                  blurRadius: 0.4,
                                  spreadRadius: 0.4)
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
                    Visibility(
                      visible: state.isOnTop,
                      child: Column(
                        children: [
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //SizedBox(width: 05,),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, right: 20, top: 0),
                    child: Text(
                      "Outstanding invoices",
                      style: countHeading(),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, right: 20, top: 0),
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
              Expanded(
                  child: SingleChildScrollView(
                      controller: _scrollController,
                      child: const InsightsOutstandingList())),
              SizedBox(
                height: 8.h,
              )
            ],
          );
        },
      ),
    );
  }
}
