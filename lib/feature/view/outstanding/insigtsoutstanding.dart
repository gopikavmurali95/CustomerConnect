import 'dart:async';
import 'dart:developer';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/cus_ins_customers_model/cus_ins_customers_model.dart';
import 'package:customer_connect/feature/data/models/cus_out_standing_in_model/cus_out_standing_in_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/cusoutstanding/cus_out_standing_bloc.dart';
import 'package:customer_connect/feature/state/bloc/cusoutstandingcount/cus_out_standing_count_bloc.dart';
import 'package:customer_connect/feature/state/cubit/arscrol/ar_scroll_ctrl_cubit.dart';
import 'package:customer_connect/feature/view/arcollection/widgets/modewidget.dart';
import 'package:customer_connect/feature/view/outstanding/outstandingheader.dart';
import 'package:customer_connect/feature/view/outstanding/widgets/insightoutstandinglist.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/l10n/app_localizations.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class InsghtsOutStandingScreen extends StatefulWidget {
  final LoginUserModel user;
  final CusInsCustomersModel customer;
  final TextEditingController fromdatectrl;
  final TextEditingController todatectrl;
  const InsghtsOutStandingScreen(
      {super.key,
      required this.user,
      required this.customer,
      required this.fromdatectrl,
      required this.todatectrl});

  @override
  State<InsghtsOutStandingScreen> createState() =>
      _InsghtsOutStandingScreenState();
}

List<int> pievalues = [];
final _cusOutstandSearchCtrl = TextEditingController();
Timer? debounce;

class _ChartData {
  _ChartData(this.label, this.value, this.color);
  final String label;
  final double value;
  final Color color;
}

class _InsghtsOutStandingScreenState extends State<InsghtsOutStandingScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    pievalues.clear();
    _cusOutstandSearchCtrl.clear();
    context.read<ArScrollCtrlCubit>().onInit();
    context.read<CusOutStandingBloc>().add(const ClearCusOutStandingEvent());
    context.read<CusOutStandingBloc>().add(GetCusOutstandingEvent(
          searchQuery: '',
          outIn: CusOutStandingInModel(
              cusId: widget.customer.cusId,
              userId: widget.user.usrId,
              area: '',
              fromDate: widget.fromdatectrl.text,
              toDate: widget.todatectrl.text,
              route: /* widget.customer.rotId */ '',
              subArea: ''),
        ));
    context
        .read<CusOutStandingCountBloc>()
        .add(const ClearCusOutStandingCountEvent());
    context.read<CusOutStandingCountBloc>().add(GetCusOutstandingCOuntEvent(
          outIn: CusOutStandingInModel(
              cusId: widget.customer.cusId,
              userId: widget.user.usrId,
              area: '',
              fromDate: widget.fromdatectrl.text,
              toDate: widget.todatectrl.text,
              route: /* widget.customer.rotId */ '',
              subArea: ''),
        ));
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
    log(pievalues.toString());
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
          AppLocalizations.of(context)!.outstanding,
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
      body: RefreshIndicator(
        triggerMode: RefreshIndicatorTriggerMode.anywhere,
        color: const Color.fromARGB(255, 181, 218, 245),
        displacement: BorderSide.strokeAlignCenter,
        onRefresh: () =>
            _onRefreshInsghtsOutStandingScreen(context, widget.user),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: BlocBuilder<ArScrollCtrlCubit, ArScrollCtrlState>(
              builder: (context, state) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: const Color(0xffE5E7EB))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 8),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundColor: const Color(0xffDBEAFE),
                                child: Center(
                                  child: SvgPicture.asset(
                                    "assets/svg/aricon.svg",
                                    height: 15.h,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(
                                      width: 300.w,
                                      child: RichText(
                                        text: TextSpan(
                                            style: DefaultTextStyle.of(context)
                                                .style
                                                .copyWith(
                                                  fontWeight: FontWeight.normal,
                                                  decoration:
                                                      TextDecoration.none,
                                                ),
                                            children: [
                                              TextSpan(
                                                text:
                                                    '${widget.customer.cusCode} - ',
                                                style: ifontstyle(
                                                  fontSize: 12.sp,
                                                  color:
                                                      const Color(0xff101828),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              TextSpan(
                                                text: selectedLocale
                                                            ?.languageCode ==
                                                        'en'
                                                    ? widget.customer.cusName ??
                                                        ""
                                                    : widget.customer
                                                            .arcusName ??
                                                        '',
                                                style: ifontstyle(
                                                    fontSize: 11.sp,
                                                    color: const Color(
                                                        0xff4A5565)),
                                              )
                                            ]),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 300.w,
                                      child: RichText(
                                        text: TextSpan(
                                            style: DefaultTextStyle.of(context)
                                                .style
                                                .copyWith(
                                                  fontWeight: FontWeight.normal,
                                                  decoration:
                                                      TextDecoration.none,
                                                ),
                                            children: [
                                              TextSpan(
                                                text:
                                                    '${widget.customer.headerCode} - ',
                                                style: ifontstyle(
                                                    fontSize: 10.sp,
                                                    color: const Color(
                                                        0xff6A7282)),
                                              ),
                                              TextSpan(
                                                text: selectedLocale
                                                            ?.languageCode ==
                                                        'en'
                                                    ? widget.customer
                                                            .headerName ??
                                                        ""
                                                    : widget.customer
                                                            .arheaderName ??
                                                        '',
                                                style: ifontstyle(
                                                    fontSize: 10.sp,
                                                    color: const Color(
                                                        0xff6A7282)),
                                              )
                                            ]),
                                      ),
                                    ),
                                    Text(
                                      '${widget.customer.cusType} | ${widget.customer.className} | ${selectedLocale?.languageCode == 'en' ? widget.customer.areaName : widget.customer.arAreaName} ',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: ifontstyle(
                                          fontSize: 9.sp,
                                          color: Color(0xff6A7282)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0),
                      child: Column(
                        children: [
                          Visibility(
                            visible: state.isOnTop,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: const Color(0xffE5E7EB))),
                                child: Column(
                                  children: [
                                    BlocConsumer<CusOutStandingCountBloc,
                                        CusOutStandingCountState>(
                                      listener: (context, state) {
                                        state.when(
                                          getCusOutStandingCountState:
                                              (counts) {
                                            if (counts != null) {
                                              pievalues.clear();
                                              if (int.parse(
                                                      counts.dueCount ?? '') >
                                                  0) {
                                                pievalues.add(int.parse(
                                                    counts.dueCount ?? ''));
                                              }
                                              if (int.parse(
                                                      counts.overDueCount ??
                                                          '') >
                                                  0) {
                                                pievalues.add(int.parse(
                                                    counts.overDueCount ?? ''));
                                              }
                                            }
                                          },
                                          cusOutStatndingCountFailedState:
                                              () {},
                                        );
                                      },
                                      builder: (context, state) {
                                        return state.when(
                                          getCusOutStandingCountState:
                                              (counts) => counts == null
                                                  ? ShimmerContainers(
                                                      height: 110.h,
                                                      width: double.infinity,
                                                    )
                                                  : Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 0.0,
                                                          vertical: 10),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        10.0),
                                                            child: Text(
                                                              AppLocalizations.of(
                                                                      context)!
                                                                  .outstanding,
                                                              style: ifontstyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 15,
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 12.h,
                                                          ),
                                                          pievalues.length > 1
                                                              ? Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width:
                                                                        110.w,
                                                                    height:
                                                                        110.h,
                                                                    child:
                                                                        RotatedBox(
                                                                      quarterTurns:
                                                                          0,
                                                                      child:
                                                                          SfCircularChart(
                                                                        margin:
                                                                            EdgeInsets.zero,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        series: <DoughnutSeries<
                                                                            _ChartData,
                                                                            String>>[
                                                                          DoughnutSeries<
                                                                              _ChartData,
                                                                              String>(
                                                                            dataSource:
                                                                                [
                                                                              _ChartData(
                                                                                counts.dueCount ?? '',
                                                                                double.tryParse(counts.dueAmount ?? '0') ?? 0,
                                                                                outstandingcolorslist.isNotEmpty ? outstandingcolorslist[0] : Colors.blue,
                                                                              ),
                                                                              _ChartData(
                                                                                counts.overDueCount ?? '',
                                                                                double.tryParse(counts.overDueAmount ?? '0') ?? 0,
                                                                                outstandingcolorslist.length > 1 ? outstandingcolorslist[1] : Colors.red,
                                                                              ),
                                                                            ].where((e) => e.value > 0).toList(),
                                                                            xValueMapper: (_ChartData d, _) =>
                                                                                d.label,
                                                                            yValueMapper: (_ChartData d, _) =>
                                                                                d.value,
                                                                            pointColorMapper: (_ChartData d, _) =>
                                                                                d.color,
                                                                            dataLabelMapper: (_ChartData d, _) =>
                                                                                d.label,
                                                                            dataLabelSettings:
                                                                                DataLabelSettings(
                                                                              isVisible: true,
                                                                              textStyle: kfontstyle(
                                                                                color: Colors.white,
                                                                                fontSize: 10,
                                                                              ),
                                                                            ),
                                                                            radius:
                                                                                '100%',
                                                                            innerRadius:
                                                                                '40%',
                                                                            explode:
                                                                                true,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                )
                                                              : pievalues
                                                                      .isEmpty
                                                                  ? Center(
                                                                      child:
                                                                          Text(
                                                                        'No Chart Data Available',
                                                                        style: kfontstyle(
                                                                            color:
                                                                                Colors.black,
                                                                            fontSize: 10.sp),
                                                                      ),
                                                                    )
                                                                  : Center(
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsets
                                                                            .symmetric(
                                                                            vertical:
                                                                                10),
                                                                        child:
                                                                            Stack(
                                                                          children: [
                                                                            CircleAvatar(
                                                                              radius: 50.h,
                                                                              backgroundColor: pievalues[0] == int.parse(counts.dueCount ?? '') ? outstandingcolorslist[0] : outstandingcolorslist[1],
                                                                              child: Center(
                                                                                child: CircleAvatar(
                                                                                  backgroundColor: Colors.white,
                                                                                  radius: 23.h,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Positioned(
                                                                              top: 50,
                                                                              right: 15,
                                                                              child: Text(
                                                                                '${pievalues[0]}',
                                                                                style: kfontstyle(color: Colors.black),
                                                                              ),
                                                                            )
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                          SizedBox(
                                                            height: 12.h,
                                                          ),
                                                          Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              ArChartItemWidget(
                                                                amount:
                                                                    '${counts.dueAmount} AED',
                                                                color: const Color(
                                                                    0xff9ce895),
                                                                title: AppLocalizations.of(
                                                                        context)!
                                                                    .due,
                                                                items:
                                                                    '${counts.dueCount}Items',
                                                              ),
                                                              SizedBox(
                                                                height: 10.h,
                                                              ),
                                                              ArChartItemWidget(
                                                                amount:
                                                                    '${counts.overDueAmount} AED',
                                                                color: const Color(
                                                                    0xffe18484),
                                                                title: AppLocalizations.of(
                                                                        context)!
                                                                    .overdue,
                                                                items:
                                                                    '${counts.overDueCount} Items',
                                                              ),
                                                              const Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            20.0,
                                                                        vertical:
                                                                            10),
                                                                child: Divider(
                                                                  color: Color(
                                                                      0xffF9FAFB),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        20.0),
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                      AppLocalizations.of(
                                                                              context)!
                                                                          .totaloutstanding,
                                                                      style:
                                                                          ifontstyle(
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        color: const Color(
                                                                            0xff364153),
                                                                        fontSize:
                                                                            14.sp,
                                                                      ),
                                                                    ),
                                                                    Flexible(
                                                                      child:
                                                                          Text(
                                                                        '${counts.totAmount ?? '0.00'} AED',
                                                                        textAlign:
                                                                            TextAlign.end,
                                                                        style:
                                                                            ifontstyle(
                                                                          fontSize:
                                                                              14.sp,
                                                                          color:
                                                                              const Color(0xff101828),
                                                                          fontWeight:
                                                                              FontWeight.w700,
                                                                        ),
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                          cusOutStatndingCountFailedState: () =>
                                              const SizedBox(),
                                        );
                                      },
                                    ),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Container(
                                height: 35.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: const Color(0xffE5E7EB))),
                                child: TextFormField(
                                  controller: _cusOutstandSearchCtrl,
                                  onChanged: (value) {
                                    if (debounce?.isActive ?? false) {
                                      debounce!.cancel();
                                    }
                                    debounce = Timer(
                                      const Duration(
                                        milliseconds: 500,
                                      ),
                                      () async {
                                        context.read<CusOutStandingBloc>().add(
                                            const ClearCusOutStandingEvent());
                                        context.read<CusOutStandingBloc>().add(
                                              GetCusOutstandingEvent(
                                                searchQuery: value.trim(),
                                                outIn: CusOutStandingInModel(
                                                    cusId:
                                                        widget.customer.cusId,
                                                    userId: widget.user.usrId,
                                                    area: '',
                                                    fromDate: widget
                                                        .fromdatectrl.text,
                                                    toDate:
                                                        widget.todatectrl.text,
                                                    route: '',
                                                    subArea: ''),
                                              ),
                                            );
                                      },
                                    );
                                  },
                                  decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                        Icons.search,
                                        size: 20,
                                      ),
                                      suffix: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(height: 5.h),
                                          Expanded(
                                            child: IconButton(
                                              onPressed: () {
                                                _cusOutstandSearchCtrl.clear();
                                                context
                                                    .read<CusOutStandingBloc>()
                                                    .add(
                                                        const ClearCusOutStandingEvent());
                                                context
                                                    .read<CusOutStandingBloc>()
                                                    .add(
                                                      GetCusOutstandingEvent(
                                                        searchQuery: '',
                                                        outIn:
                                                            CusOutStandingInModel(
                                                                cusId: widget
                                                                    .customer
                                                                    .cusId,
                                                                userId:
                                                                    widget.user
                                                                        .usrId,
                                                                area: '',
                                                                fromDate: widget
                                                                    .fromdatectrl
                                                                    .text,
                                                                toDate: widget
                                                                    .todatectrl
                                                                    .text,
                                                                route: '',
                                                                subArea: ''),
                                                      ),
                                                    );
                                              },
                                              icon: Icon(
                                                Icons.close,
                                                size: 13.sp,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      hintText:
                                          "${AppLocalizations.of(context)!.searchHere}..",
                                      hintStyle: kfontstyle(
                                          fontSize: 14,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.normal),
                                      isDense: true,
                                      counterText: "",
                                      contentPadding:
                                          const EdgeInsets.all(15.0),
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          borderSide: BorderSide.none)),
                                  textAlign: TextAlign.start,
                                  maxLines: 1,
                                  maxLength: 20,
                                  // controller: _locationNameTextController,
                                )),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //SizedBox(width: 05,),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 10, top: 0, bottom: 10),
                          child: Text(
                            AppLocalizations.of(context)!.outStandingInvoices,
                            // "Outstanding invoices",
                            style: countHeading(),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 10, top: 0, bottom: 10),
                          child: BlocBuilder<CusOutStandingBloc,
                              CusOutStandingState>(
                            builder: (context, state) {
                              return state.when(
                                getCusOutStandingState: (counts, headers) =>
                                    headers == null
                                        ? Text(
                                            "0",
                                            style: countHeading(),
                                          )
                                        : Text(
                                            "${headers.length}",
                                            style: countHeading(),
                                          ),
                                getOutStandingFailedState: () => Text(
                                  "0",
                                  style: countHeading(),
                                ),
                              );
                            },
                          ),
                        ),
                        // SizedBox(width: ,),
                      ],
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    const InsightsOutstandingList(),
                    SizedBox(
                      height: 8.h,
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _onRefreshInsghtsOutStandingScreen(
      BuildContext context, LoginUserModel model) async {
    context.read<CusOutStandingBloc>().add(const ClearCusOutStandingEvent());
    context.read<CusOutStandingBloc>().add(GetCusOutstandingEvent(
          searchQuery: '',
          outIn: CusOutStandingInModel(
              cusId: widget.customer.cusId,
              userId: widget.user.usrId,
              area: '',
              fromDate: widget.fromdatectrl.text,
              toDate: widget.todatectrl.text,
              route: '',
              subArea: ''),
        ));
    context
        .read<CusOutStandingCountBloc>()
        .add(const ClearCusOutStandingCountEvent());
    context.read<CusOutStandingCountBloc>().add(GetCusOutstandingCOuntEvent(
          outIn: CusOutStandingInModel(
              cusId: widget.customer.cusId,
              userId: widget.user.usrId,
              area: '',
              fromDate: widget.fromdatectrl.text,
              toDate: widget.todatectrl.text,
              route: '',
              subArea: ''),
        ));
  }
}
