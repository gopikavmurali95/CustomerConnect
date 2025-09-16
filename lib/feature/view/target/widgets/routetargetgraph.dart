import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/target_details_graph_amt_model/target_details_graph_amt_model.dart';
import 'package:customer_connect/feature/data/models/target_details_graph_qty_model/target_details_graph_qty_model.dart';
import 'package:customer_connect/feature/data/models/target_header_list_model/target_header_list_model.dart';
import 'package:customer_connect/feature/state/bloc/targetdetailsgraphamt/target_details_graph_amt_bloc.dart';
import 'package:customer_connect/feature/state/bloc/targetdetailsgraphqty/rarget_details_graph_qty_bloc.dart';
import 'package:customer_connect/feature/view/arcollection/widgets/modewidget.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:ssun_chart/pie_chart.dart';
import 'package:customer_connect/l10n/app_localizations.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class RouteTargetGraphWidget extends StatefulWidget {
  final TargetHeaderListModel header;
  const RouteTargetGraphWidget({super.key, required this.header});

  @override
  State<RouteTargetGraphWidget> createState() => _RouteTargetGraphWidgetState();
}

class _ChartData {
  final String label;
  final double value;
  final Color color;

  _ChartData(this.label, this.value, this.color);
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
  void initState() {
    pievalues.clear();
    context.read<TargetDetailsGraphAmtBloc>().add(const ClearGraphAmount());
    context.read<TargetDetailsGraphAmtBloc>().add(GetTargetGraphAmtEvent(
        fromDate:
            '${DateTime.now().month}-${DateTime.now().day}-${DateTime.now().year}',
        rotID: widget.header.rotID ?? ''));
    context
        .read<RargetDetailsGraphQtyBloc>()
        .add(const ClearTargetGraphQuantity());
    context.read<RargetDetailsGraphQtyBloc>().add(GetTargetGraphQtyEvent(
        fromDate:
            '${DateTime.now().month}-${DateTime.now().day}-${DateTime.now().year}',
        rotID: widget.header.rotID ?? ''));
    super.initState();
  }

  List<double> pievalues = [];

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
            BlocListener<TargetDetailsGraphAmtBloc, TargetDetailsGraphAmtState>(
              listener: (context, state) {
                state.when(
                    getTargetGraphAmt: (amount) {
                      pievalues.clear();
                      if (amount != null) {
                        if (double.parse(
                                (amount.achAmt ?? '').replaceAll(',', '')) >
                            0.00) {
                          pievalues.add(double.parse(
                              (amount.achAmt ?? '').replaceAll(',', '')));
                        }
                        if (double.parse(
                                (amount.mtdGapAmt ?? '').replaceAll(',', '')) >
                            0.00) {
                          pievalues.add(double.parse(
                              (amount.mtdGapAmt ?? '').replaceAll(',', '')));
                        }
                        if (double.parse((amount.monthGapAmt ?? '')
                                .replaceAll(',', '')) >
                            0.00) {
                          pievalues.add(double.parse(
                              (amount.monthGapAmt ?? '').replaceAll(',', '')));
                        }
                      }
                    },
                    getTargetGraphAmtFailed: () => Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.15,
                            width: MediaQuery.of(context).size.width - 50,
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                                gradient: containerGradients[0][0]),
                            child: Center(
                              child: Text(
                                AppLocalizations.of(context)!.noDataAvailable,
                                style: kfontstyle(),
                              ),
                            ),
                          ),
                        ));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: BlocBuilder<TargetDetailsGraphAmtBloc,
                    TargetDetailsGraphAmtState>(
                  builder: (context, state) {
                    return state.when(
                        getTargetGraphAmt: ((amount) {
                          if (amount == null) {
                            return ShimmerContainers(
                              height: MediaQuery.of(context).size.height * 0.15,
                              width: MediaQuery.of(context).size.width - 50,
                            );
                          }
                          final percentages = calculatePercentages(amount);
                          return Container(
                            // height: MediaQuery.of(context).size.width / 2.8,
                            width: MediaQuery.of(context).size.width - 50,
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                                gradient: containerGradients[0][0]),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        AppLocalizations.of(context)!
                                            .targetAmount,
                                        style: countHeading(),
                                      ),
                                      Text(
                                        amount.totalAmt ?? '',
                                        style: countHeading(),
                                      )
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      pievalues.length > 1
                                          ? SizedBox(
                                              width: 110.w,
                                              height: 110.h,
                                              child: RotatedBox(
                                                quarterTurns: 0,
                                                child: SfCircularChart(
                                                  margin: EdgeInsets.zero,
                                                  series: <DoughnutSeries<
                                                      _ChartData, String>>[
                                                    DoughnutSeries<_ChartData,
                                                        String>(
                                                      dataSource: <_ChartData>[
                                                        _ChartData(
                                                          percentages['achAmount'] ==
                                                                  0.00
                                                              ? ''
                                                              : '${percentages['achAmount']!.toStringAsFixed(2)}%',
                                                          double.tryParse((amount
                                                                          .achAmt ??
                                                                      '')
                                                                  .replaceAll(
                                                                      ',',
                                                                      '')) ??
                                                              0,
                                                          routetargetcolorslist
                                                                  .isNotEmpty
                                                              ? routetargetcolorslist[
                                                                  0]
                                                              : Colors.blue,
                                                        ),
                                                        _ChartData(
                                                          percentages['mtdAmount'] ==
                                                                  0.00
                                                              ? ''
                                                              : '${percentages['mtdAmount']!.toStringAsFixed(2)}%',
                                                          double.tryParse((amount
                                                                          .mtdGapAmt ??
                                                                      '')
                                                                  .replaceAll(
                                                                      ',',
                                                                      '')) ??
                                                              0,
                                                          routetargetcolorslist
                                                                      .length >
                                                                  1
                                                              ? routetargetcolorslist[
                                                                  1]
                                                              : Colors.green,
                                                        ),
                                                        _ChartData(
                                                          percentages['monthAmount'] ==
                                                                  0.00
                                                              ? ''
                                                              : '${percentages['monthAmount']!.toStringAsFixed(2)}%',
                                                          double.tryParse((amount
                                                                          .monthGapAmt ??
                                                                      '')
                                                                  .replaceAll(
                                                                      ',',
                                                                      '')) ??
                                                              0,
                                                          routetargetcolorslist
                                                                      .length >
                                                                  2
                                                              ? routetargetcolorslist[
                                                                  2]
                                                              : Colors.orange,
                                                        ),
                                                      ]
                                                          .where((e) =>
                                                              e.value > 0)
                                                          .toList(),
                                                      xValueMapper:
                                                          (_ChartData d, _) =>
                                                              d.label,
                                                      yValueMapper:
                                                          (_ChartData d, _) =>
                                                              d.value,
                                                      pointColorMapper:
                                                          (_ChartData d, _) =>
                                                              d.color,
                                                      dataLabelMapper:
                                                          (_ChartData d, _) =>
                                                              d.label,
                                                      dataLabelSettings:
                                                          DataLabelSettings(
                                                        isVisible: true,
                                                        textStyle: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 10.sp,
                                                        ),
                                                      ),
                                                      radius: '100%',
                                                      innerRadius: '40%',
                                                      explode: true,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          : pievalues.isEmpty
                                              ? const Center()
                                              : Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 6, bottom: 6),
                                                  child: Stack(
                                                    children: [
                                                      CircleAvatar(
                                                        radius: 50.h,
                                                        backgroundColor: pievalues[
                                                                    0] ==
                                                                double.parse(
                                                                    (amount.achAmt ??
                                                                            '')
                                                                        .replaceAll(
                                                                            ',',
                                                                            ''))
                                                            ? routetargetcolorslist[
                                                                0]
                                                            : pievalues[0] ==
                                                                    double.parse((amount.mtdGapAmt ??
                                                                            '')
                                                                        .replaceAll(
                                                                            ',',
                                                                            ''))
                                                                ? routetargetcolorslist[
                                                                    1]
                                                                : routetargetcolorslist[
                                                                    2],
                                                        child: Center(
                                                          child: Center(
                                                            child: CircleAvatar(
                                                              backgroundColor:
                                                                  Colors.white,
                                                              radius: 23.h,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                          top: 50,
                                                          right: 15,
                                                          child: Text(
                                                            '${pievalues[0]}',
                                                            style: kfontstyle(
                                                                fontSize: 10.sp,
                                                                color: Colors
                                                                    .black),
                                                          ))
                                                    ],
                                                  ),
                                                ),
                                      SizedBox(
                                        width: 20.w,
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            ArChartItemWidget(
                                              amount: amount.achAmt ?? '',
                                              color: const Color(0xff3DDB7C),
                                              title:
                                                  AppLocalizations.of(context)!
                                                      .achieved,
                                            ),
                                            SizedBox(
                                              height: 15.h,
                                            ),
                                            ArChartItemWidget(
                                                amount: amount.mtdGapAmt ?? '',
                                                color: const Color(0xffE07744),
                                                title:
                                                    "MTD${AppLocalizations.of(context)!.gap}"),
                                            SizedBox(
                                              height: 15.h,
                                            ),
                                            ArChartItemWidget(
                                              amount: amount.monthGapAmt ?? '',
                                              color: const Color(0xffEAD846),
                                              title:
                                                  AppLocalizations.of(context)!
                                                      .monthlyGap,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                        getTargetGraphAmtFailed: () => Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width - 50,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15)),
                                    gradient: containerGradients[0][0]),
                                child: Center(
                                  child: Text(
                                    AppLocalizations.of(context)!
                                        .noDataAvailable,
                                    style: kfontstyle(),
                                  ),
                                ),
                              ),
                            ));
                  },
                ),
              ),
            ),
            BlocListener<RargetDetailsGraphQtyBloc, RargetDetailsGraphQtyState>(
              listener: (context, state) {
                state.when(
                    getTargetGraphQtyState: (quantity) {
                      pievalues.clear();
                      if (quantity != null) {
                        if (double.parse(
                                (quantity.achQty ?? '').replaceAll(',', '')) >
                            0.00) {
                          pievalues.add(double.parse(
                              (quantity.achQty ?? '').replaceAll(',', '')));
                        }
                        if (double.parse((quantity.mtdGapQty ?? '')
                                .replaceAll(',', '')) >
                            0.00) {
                          pievalues.add(double.parse(
                              (quantity.mtdGapQty ?? '').replaceAll(',', '')));
                        }
                        if (double.parse((quantity.monthGapQty ?? '')
                                .replaceAll(',', '')) >
                            0.00) {
                          pievalues.add(double.parse(
                              (quantity.monthGapQty ?? '')
                                  .replaceAll(',', '')));
                        }
                      }
                    },
                    getTargetGraphQtyFailed: () => Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.15,
                            width: MediaQuery.of(context).size.width - 50,
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                                gradient: containerGradients[1][0]),
                            child: Center(
                              child: Text(
                                AppLocalizations.of(context)!.noDataAvailable,
                                style: kfontstyle(),
                              ),
                            ),
                          ),
                        ));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: BlocBuilder<RargetDetailsGraphQtyBloc,
                    RargetDetailsGraphQtyState>(
                  builder: (context, state) {
                    return state.when(
                        getTargetGraphQtyState: (qty) {
                          if (qty == null) {
                            return ShimmerContainers(
                              height: MediaQuery.of(context).size.height * 0.15,
                              width: MediaQuery.of(context).size.width - 50,
                            );
                          } else {
                            final qtypercentages = calculateQtyPercentages(qty);

                            return Container(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          AppLocalizations.of(context)!
                                              .targetQuantity,
                                          style: countHeading(),
                                        ),
                                        Text(
                                          qty.totalQty ?? '',
                                          style: countHeading(),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        pievalues.length > 1
                                            ? SizedBox(
                                                width: 110.w,
                                                height: 110.h,
                                                child: RotatedBox(
                                                  quarterTurns: 0,
                                                  child: SfCircularChart(
                                                    margin: EdgeInsets.zero,
                                                    series: <DoughnutSeries<
                                                        _ChartData, String>>[
                                                      DoughnutSeries<_ChartData,
                                                          String>(
                                                        dataSource:
                                                            <_ChartData>[
                                                          _ChartData(
                                                            qtypercentages[
                                                                        'achQty'] ==
                                                                    0.00
                                                                ? ''
                                                                : '${qtypercentages['achQty']!.toStringAsFixed(2)}%',
                                                            double.tryParse((qty
                                                                            .achQty ??
                                                                        '')
                                                                    .replaceAll(
                                                                        ',',
                                                                        '')) ??
                                                                0,
                                                            routetargetcolorslist
                                                                    .isNotEmpty
                                                                ? routetargetcolorslist[
                                                                    0]
                                                                : Colors.blue,
                                                          ),
                                                          _ChartData(
                                                            qtypercentages[
                                                                        'mtdQty'] ==
                                                                    0.00
                                                                ? ''
                                                                : '${qtypercentages['mtdQty']!.toStringAsFixed(2)}%',
                                                            double.tryParse((qty
                                                                            .mtdGapQty ??
                                                                        '')
                                                                    .replaceAll(
                                                                        ',',
                                                                        '')) ??
                                                                0,
                                                            routetargetcolorslist
                                                                        .length >
                                                                    1
                                                                ? routetargetcolorslist[
                                                                    1]
                                                                : Colors.green,
                                                          ),
                                                          _ChartData(
                                                            qtypercentages[
                                                                        'monthQty'] ==
                                                                    0.00
                                                                ? ''
                                                                : '${qtypercentages['monthQty']!.toStringAsFixed(2)}%',
                                                            double.tryParse((qty
                                                                            .monthGapQty ??
                                                                        '')
                                                                    .replaceAll(
                                                                        ',',
                                                                        '')) ??
                                                                0,
                                                            routetargetcolorslist
                                                                        .length >
                                                                    2
                                                                ? routetargetcolorslist[
                                                                    2]
                                                                : Colors.orange,
                                                          ),
                                                        ]
                                                                .where((e) =>
                                                                    e.value > 0)
                                                                .toList(),
                                                        xValueMapper:
                                                            (_ChartData d, _) =>
                                                                d.label,
                                                        yValueMapper:
                                                            (_ChartData d, _) =>
                                                                d.value,
                                                        pointColorMapper:
                                                            (_ChartData d, _) =>
                                                                d.color,
                                                        dataLabelMapper:
                                                            (_ChartData d, _) =>
                                                                d.label,
                                                        dataLabelSettings:
                                                            DataLabelSettings(
                                                          isVisible: true,
                                                          textStyle: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 10.sp,
                                                          ),
                                                        ),
                                                        radius: '100%',
                                                        innerRadius:
                                                            '40%', // same as holeRadius
                                                        explode: true,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )
                                            : pievalues.isEmpty
                                                ? const Center()
                                                : Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 6, bottom: 6),
                                                    child: Stack(
                                                      children: [
                                                        CircleAvatar(
                                                          radius: 50.h,
                                                          backgroundColor: pievalues[
                                                                      0] ==
                                                                  double.tryParse((qty
                                                                              .achQty ??
                                                                          '')
                                                                      .replaceAll(
                                                                          ',',
                                                                          ''))
                                                              ? routetargetcolorslist[
                                                                  0]
                                                              : pievalues[0] ==
                                                                      double.tryParse((qty.mtdGapQty ??
                                                                              '')
                                                                          .replaceAll(
                                                                              ',',
                                                                              ''))
                                                                  ? routetargetcolorslist[
                                                                      1]
                                                                  : routetargetcolorslist[
                                                                      2],
                                                          child: Center(
                                                            child: Center(
                                                              child:
                                                                  CircleAvatar(
                                                                backgroundColor:
                                                                    Colors
                                                                        .white,
                                                                radius: 23.h,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Positioned(
                                                            top: 50,
                                                            right: 15,
                                                            child: Text(
                                                              pievalues[0] ==
                                                                      double.tryParse((qty
                                                                                  .achQty ??
                                                                              '')
                                                                          .replaceAll(
                                                                              ',',
                                                                              ''))
                                                                  ? (qtypercentages[
                                                                              'achQty'] ==
                                                                          0.00
                                                                      ? ''
                                                                      : '${qtypercentages['achQty']!.toStringAsFixed(2)}%')
                                                                  : pievalues[0] ==
                                                                          double.tryParse((qty.mtdGapQty ?? '').replaceAll(
                                                                              ',',
                                                                              ''))
                                                                      ? (qtypercentages['mtdQty'] ==
                                                                              0.00
                                                                          ? ''
                                                                          : '${qtypercentages['mtdQty']!.toStringAsFixed(2)}%')
                                                                      : (qtypercentages['monthQty'] ==
                                                                              0.00
                                                                          ? ''
                                                                          : '${qtypercentages['monthQty']!.toStringAsFixed(2)}%'),
                                                              style: kfontstyle(
                                                                  fontSize:
                                                                      10.sp,
                                                                  color: Colors
                                                                      .black),
                                                            ))
                                                      ],
                                                    ),
                                                  ),
                                        SizedBox(
                                          width: 20.w,
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              ArChartItemWidget(
                                                amount: qty.achQty ?? '',
                                                color: const Color(0xff3DDB7C),
                                                title: AppLocalizations.of(
                                                        context)!
                                                    .achieved,
                                              ),
                                              SizedBox(
                                                height: 15.h,
                                              ),
                                              ArChartItemWidget(
                                                  amount: qty.mtdGapQty ?? '',
                                                  color:
                                                      const Color(0xffE07744),
                                                  title:
                                                      "MTD${AppLocalizations.of(context)!.gap}"),
                                              SizedBox(
                                                height: 15.h,
                                              ),
                                              ArChartItemWidget(
                                                  amount: qty.monthGapQty ?? '',
                                                  color:
                                                      const Color(0xffEAD846),
                                                  title: AppLocalizations.of(
                                                          context)!
                                                      .monthlyGap),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }
                        },
                        getTargetGraphQtyFailed: () => Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width - 50,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15)),
                                    gradient: containerGradients[1][0]),
                                child: Center(
                                  child: Text(
                                    AppLocalizations.of(context)!
                                        .noDataAvailable,
                                    style: kfontstyle(),
                                  ),
                                ),
                              ),
                            ));
                  },
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

Map<String, double> calculatePercentages(TargetDetailsGraphAmtModel amt) {
  double achAmount = double.parse((amt.achAmt ?? '').replaceAll(',', ''));
  double mtdAmount = double.parse((amt.mtdGapAmt ?? '').replaceAll(',', ''));
  double monthAmount =
      double.parse((amt.monthGapAmt ?? '').replaceAll(',', ''));
  double totalAmount = achAmount + mtdAmount + monthAmount;

  Map<String, double> percentages = {};

  if (totalAmount > 0) {
    percentages['achAmount'] = (achAmount / totalAmount) * 100;
    percentages['mtdAmount'] = (mtdAmount / totalAmount) * 100;
    percentages['monthAmount'] = (monthAmount / totalAmount) * 100;
  } else {
    percentages['achAmount'] = 0.0;
    percentages['mtdAmount'] = 0.0;
    percentages['monthAmount'] = 0.0;
  }

  return percentages;
}

Map<String, double> calculateQtyPercentages(TargetDetailsGraphQtyModel qty) {
  double achQty = double.parse(
      (qty.achQty?.isEmpty ?? true) ? '0.00' : qty.achQty!.replaceAll(',', ''));

  double mtdQty = double.parse((qty.mtdGapQty?.isEmpty ?? true)
      ? '0.00'
      : qty.mtdGapQty!.replaceAll(',', ''));

  double monthQty = double.parse((qty.monthGapQty?.isEmpty ?? true)
      ? '0.00'
      : qty.monthGapQty!.replaceAll(',', ''));
  double toatalQty = achQty + mtdQty + monthQty;

  Map<String, double> qtypercentages = {};

  if (toatalQty > 0) {
    qtypercentages['achQty'] = (achQty / toatalQty) * 100;
    qtypercentages['mtdQty'] = (mtdQty / mtdQty) * 100;
    qtypercentages['monthQty'] = (monthQty / monthQty) * 100;
  } else {
    qtypercentages['achQty'] = 0.0;
    qtypercentages['mtdQty'] = 0.0;
    qtypercentages['monthQty'] = 0.0;
  }

  return qtypercentages;
}
