import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/cus_ins_ar_header_in_model/cus_ins_ar_header_in_model.dart';
import 'package:customer_connect/feature/data/models/cus_ins_customers_model/cus_ins_customers_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/cusinsarheader/cus_ins_ar_header_bloc.dart';
import 'package:customer_connect/feature/state/cubit/arscrol/ar_scroll_ctrl_cubit.dart';
import 'package:customer_connect/feature/view/arcollection/arcollection.dart';
import 'package:customer_connect/feature/view/arcollection/widgets/insightsarlistwidget.dart';
import 'package:customer_connect/feature/view/arcollection/widgets/modewidget.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/l10n/app_localizations.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
// import 'package:ssun_chart/pie_chart.dart';

class InsightsArCollection extends StatefulWidget {
  final LoginUserModel user;
  final CusInsCustomersModel customer;
  final TextEditingController fromdatectrl;
  final TextEditingController todatectrl;
  const InsightsArCollection(
      {super.key,
      required this.user,
      required this.customer,
      required this.fromdatectrl,
      required this.todatectrl});

  @override
  State<InsightsArCollection> createState() => _InsightsArCollectionState();
}

List<int> pievalues = [];

final _cusArSearchCtrl = TextEditingController();
Timer? debounce;

class _ChartData {
  _ChartData(this.label, this.value, this.color);
  final String label;
  final double value;
  final Color color;
}

class _InsightsArCollectionState extends State<InsightsArCollection> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    pievalues.clear();
    _cusArSearchCtrl.clear();
    context.read<ArScrollCtrlCubit>().onInit();
    _scrollController.addListener(_scrollListener);
    context.read<CusInsArHeaderBloc>().add(const ClearCusInsArHeader());
    context.read<CusInsArHeaderBloc>().add(
          GetCusInsArHeaderEvent(
            searchQuery: '',
            arIn: CusInsArHeaderInModel(
              userId: widget.user.usrId,
              cusId: widget.customer.cusId ?? '',
              fromDate: widget.fromdatectrl.text,
              toDate: widget.todatectrl.text,
              area: '',
              route: '',
              subArea: '',
            ),
          ),
        );
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
          AppLocalizations.of(context)!.ar_collection,
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
        /*  bottom: PreferredSize(
          preferredSize: Size(100, 180.h),
          child: 
        ), */
      ),
      body: BlocBuilder<ArScrollCtrlCubit, ArScrollCtrlState>(
        builder: (context, state) {
          return Column(
            children: [
              Visibility(
                visible: true,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  child: Row(
                    children: [
                      Container(
                        height: 70,
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
                            /* Row(
                              children: [
                                Text(
                                  '${widget.customer.cusCode} - ',
                                  style: kfontstyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xff2C6B9E),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text: '-',
                                                    style:subTitleTextStyle()),

                                                    TextSpan(text: selectedLocale
                                                              ?.languageCode ==
                                                          "en"
                                                      ? widget.customer.cusName??
                                                          ''
                                                      :widget.customer.arcusName??
                                                          '',
                                                          style:  kfontstyle(
                                      fontSize: 12.sp,
                                      color: const Color(0xff413434)),),
                                                
                                              ],
                                            ),
                                          ),
                            
                           
                            Row(
                              children: [
                                Text(
                                  '${widget.customer.headerCode} - ',
                                  style: kfontstyle(
                                      fontSize: 11.sp,
                                      color: const Color(0xff413434)),
                                ),
                                Expanded(
                                  child: Text(
                                    selectedLocale?.languageCode == 'en'
                                        ? widget.customer.headerName ?? ""
                                        : widget.customer.arheaderName ?? '',
                                    overflow: TextOverflow.ellipsis,
                                    style: kfontstyle(fontSize: 12.sp),
                                  ),
                                ),
                              ],
                            ), */
                            SizedBox(
                              width: 300.w,
                              child: RichText(
                                text: TextSpan(
                                    style: DefaultTextStyle.of(context)
                                        .style
                                        .copyWith(
                                          fontWeight: FontWeight.normal,
                                          decoration: TextDecoration.none,
                                        ),
                                    children: [
                                      TextSpan(
                                        text: '${widget.customer.cusCode} - ',
                                        style: kfontstyle(
                                          fontSize: 12.sp,
                                          color: const Color(0xff2C6B9E),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      TextSpan(
                                        text: selectedLocale?.languageCode ==
                                                'en'
                                            ? widget.customer.cusName ?? ""
                                            : widget.customer.arcusName ?? '',
                                        style: kfontstyle(
                                            fontSize: 12.sp,
                                            color: const Color(0xff413434)),
                                      )
                                    ]),
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                  style: DefaultTextStyle.of(context)
                                      .style
                                      .copyWith(
                                        fontWeight: FontWeight.normal,
                                        decoration: TextDecoration.none,
                                      ),
                                  children: [
                                    TextSpan(
                                      text: '${widget.customer.headerCode} - ',
                                      style: kfontstyle(
                                          fontSize: 11.sp,
                                          color: const Color(0xff413434)),
                                    ),
                                    TextSpan(
                                      text: selectedLocale?.languageCode == 'en'
                                          ? widget.customer.headerName ?? ""
                                          : widget.customer.arheaderName ?? '',
                                      style: kfontstyle(
                                          fontSize: 12.sp,
                                          color: const Color(0xff413434)),
                                    )
                                  ]),
                            ),
                            Text(
                              '${widget.customer.cusType} | ${widget.customer.className} | ${selectedLocale?.languageCode == 'en' ? widget.customer.areaName : widget.customer.arAreaName} ',
                              style: kfontstyle(
                                  fontSize: 10.sp, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: BlocListener<CusInsArHeaderBloc, CusInsArHeaderState>(
                  listener: (context, state) {
                    state.when(
                      getArHeadersState: (arHeaders, artotal) {
                        if (artotal != null) {
                          pievalues.clear();
                          if (int.parse(artotal.hcCount ?? '') > 0) {
                            pievalues.add(int.parse(artotal.hcCount ?? ''));
                          }
                          if (int.parse(artotal.opCount ?? '') > 0) {
                            pievalues.add(int.parse(artotal.opCount ?? ''));
                          }
                          if (int.parse(artotal.posCount ?? '') > 0) {
                            pievalues.add(int.parse(artotal.posCount ?? ''));
                          }
                          if (int.parse(artotal.chequeCount ?? '') > 0) {
                            pievalues.add(int.parse(artotal.chequeCount ?? ''));
                          }
                        }
                      },
                      getArHeadersFailedState: () {},
                    );
                  },
                  child: BlocBuilder<CusInsArHeaderBloc, CusInsArHeaderState>(
                    builder: (context, arheader) {
                      return arheader.when(
                        getArHeadersState: (arHeaders, artotal) => artotal ==
                                null
                            ? ShimmerContainers(
                                height: 110.h,
                                width: double.infinity,
                              )
                            : Column(
                                children: [
                                  Visibility(
                                    visible: state.isOnTop,
                                    child: Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
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
                                                            _ChartData,
                                                            String>>[
                                                          DoughnutSeries<
                                                              _ChartData,
                                                              String>(
                                                            dataSource:
                                                                <_ChartData>[
                                                              _ChartData(
                                                                  artotal.hcCount ??
                                                                      '',
                                                                  double.tryParse(
                                                                          artotal.hcAmount ??
                                                                              '0') ??
                                                                      0,
                                                                  colorslist
                                                                          .isNotEmpty
                                                                      ? colorslist[
                                                                          0]
                                                                      : Colors
                                                                          .blue),
                                                              _ChartData(
                                                                  artotal.opCount ??
                                                                      '',
                                                                  double.tryParse(
                                                                          artotal.opAmount ??
                                                                              '0') ??
                                                                      0,
                                                                  colorslist.length >
                                                                          1
                                                                      ? colorslist[
                                                                          1]
                                                                      : Colors
                                                                          .green),
                                                              _ChartData(
                                                                  artotal.posCount ??
                                                                      '',
                                                                  double.tryParse(
                                                                          artotal.posAmount ??
                                                                              '0') ??
                                                                      0,
                                                                  colorslist.length >
                                                                          2
                                                                      ? colorslist[
                                                                          2]
                                                                      : Colors
                                                                          .orange),
                                                              _ChartData(
                                                                  artotal.chequeCount ??
                                                                      '',
                                                                  double.tryParse(
                                                                          artotal.chequeAmount ??
                                                                              '0') ??
                                                                      0,
                                                                  colorslist.length >
                                                                          3
                                                                      ? colorslist[
                                                                          3]
                                                                      : Colors
                                                                          .purple),
                                                            ]
                                                                    .where((e) =>
                                                                        e.value >
                                                                        0)
                                                                    .toList(),
                                                            xValueMapper:
                                                                (_ChartData d,
                                                                        _) =>
                                                                    d.label,
                                                            yValueMapper:
                                                                (_ChartData d,
                                                                        _) =>
                                                                    d.value,
                                                            pointColorMapper:
                                                                (_ChartData d,
                                                                        _) =>
                                                                    d.color,
                                                            dataLabelSettings:
                                                                DataLabelSettings(
                                                              isVisible: true,
                                                              textStyle: kfontstyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 10),
                                                            ),
                                                            radius: '100%',
                                                            innerRadius: '40%',
                                                            explode: true,
                                                          ),
                                                        ],
                                                      ),
                                                    ))
                                                : pievalues.isEmpty
                                                    ? const Center()
                                                    : Stack(
                                                        children: [
                                                          CircleAvatar(
                                                            radius: 50.h,
                                                            backgroundColor: pievalues[
                                                                        0] ==
                                                                    int.parse(
                                                                        artotal.hcCount ??
                                                                            '')
                                                                ? colorslist[0]
                                                                : pievalues[0] ==
                                                                        int.parse(
                                                                            artotal.opCount ??
                                                                                '')
                                                                    ? colorslist[
                                                                        1]
                                                                    : pievalues[0] ==
                                                                            int.parse(artotal.posCount ??
                                                                                '')
                                                                        ? colorslist[
                                                                            2]
                                                                        : colorslist[
                                                                            3],
                                                            child: Center(
                                                              child:
                                                                  Center(
                                                                    child:
                                                                        CircleAvatar(
                                                                      backgroundColor:
                                                                          Colors
                                                                              .white,
                                                                      radius:
                                                                          23.h,
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
                                                                    color: Colors
                                                                        .white),
                                                              ))
                                                        ],
                                                      ),
                                            SizedBox(
                                              width: 20.w,
                                            ),
                                            Expanded(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        AppLocalizations.of(
                                                                context)!
                                                            .total_collection,
                                                        style: kfontstyle(
                                                            fontSize: 10.sp),
                                                      ),
                                                      SizedBox(
                                                        width: 20.w,
                                                      ),
                                                      Text(
                                                        '${artotal.totalCount ?? '0'}/${artotal.totalAmount ?? '0.00'}',
                                                        style: kfontstyle(
                                                            fontSize: 13.sp,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 15.h,
                                                  ),
                                                  ArChartItemWidget(
                                                    amount:
                                                        '${artotal.hcCount ?? '0'}/${artotal.hcAmount ?? '0'}',
                                                    color:
                                                        const Color(0xff9ce2f5),
                                                    title: AppLocalizations.of(
                                                            context)!
                                                        .hard_cash,
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  ArChartItemWidget(
                                                    amount:
                                                        '${artotal.opCount ?? '0'}/${artotal.opAmount ?? '0'}',
                                                    color:
                                                        const Color(0xffe6dd94),
                                                    title: AppLocalizations.of(
                                                            context)!
                                                        .online_payment,
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  ArChartItemWidget(
                                                    amount:
                                                        '${artotal.posCount ?? '0'}/${artotal.posAmount ?? '0'}',
                                                    color:
                                                        const Color(0xff93e1b2),
                                                    title: AppLocalizations.of(
                                                            context)!
                                                        .pos,
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  ArChartItemWidget(
                                                    amount:
                                                        '${artotal.chequeCount ?? '0'}/${artotal.chequeAmount ?? '0'}',
                                                    color:
                                                        const Color(0xffdf936e),
                                                    title: AppLocalizations.of(
                                                            context)!
                                                        .cheque,
                                                  )
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
                                  Container(
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              color: Colors.grey.shade200),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          boxShadow: const [
                                            BoxShadow(
                                                // ignore: use_full_hex_values_for_flutter_colors
                                                color: Color(0xff00000050),
                                                blurRadius: 0.4,
                                                spreadRadius: 0.4)
                                          ]),
                                      child: TextFormField(
                                        controller: _cusArSearchCtrl,
                                        onChanged: (value) {
                                          if (debounce?.isActive ?? false) {
                                            debounce!.cancel();
                                          }
                                          debounce = Timer(
                                            const Duration(
                                              milliseconds: 500,
                                            ),
                                            () async {
                                              context
                                                  .read<CusInsArHeaderBloc>()
                                                  .add(
                                                      const ClearCusInsArHeader());
                                              context
                                                  .read<CusInsArHeaderBloc>()
                                                  .add(
                                                    GetCusInsArHeaderEvent(
                                                      searchQuery: value.trim(),
                                                      arIn:
                                                          CusInsArHeaderInModel(
                                                        userId:
                                                            widget.user.usrId,
                                                        cusId: widget
                                                            .customer.cusId,
                                                        fromDate: widget
                                                            .fromdatectrl.text,
                                                        toDate: widget
                                                            .todatectrl.text,
                                                        area: '',
                                                        route: '',
                                                        subArea: '',
                                                      ),
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
                                                      _cusArSearchCtrl.clear();
                                                      context
                                                          .read<
                                                              CusInsArHeaderBloc>()
                                                          .add(
                                                              const ClearCusInsArHeader());
                                                      context
                                                          .read<
                                                              CusInsArHeaderBloc>()
                                                          .add(
                                                            GetCusInsArHeaderEvent(
                                                              searchQuery: '',
                                                              arIn:
                                                                  CusInsArHeaderInModel(
                                                                userId: widget
                                                                    .user.usrId,
                                                                cusId: widget
                                                                    .customer
                                                                    .cusId,
                                                                fromDate: widget
                                                                    .fromdatectrl
                                                                    .text,
                                                                toDate: widget
                                                                    .todatectrl
                                                                    .text,
                                                                area: '',
                                                                route: '',
                                                                subArea: '',
                                                              ),
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
                                                AppLocalizations.of(context)!
                                                    .searchARCollections,
                                            hintStyle: const TextStyle(
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
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                ],
                              ),
                        getArHeadersFailedState: () => const SizedBox.shrink(),
                      );
                    },
                  ),
                ),
              ),
              Expanded(
                child: RefreshIndicator(
                  triggerMode: RefreshIndicatorTriggerMode.anywhere,
                  color: const Color.fromARGB(255, 181, 218, 245),
                  displacement: BorderSide.strokeAlignCenter,
                  onRefresh: () => _onRefreshArHeader(context),
                  child: SingleChildScrollView(
                    // controller: _scrollController,
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //SizedBox(width: 05,),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10, top: 0),
                              child: Text(
                                AppLocalizations.of(context)!.all,
                                style: countHeading(),
                              ),
                            ),
                            BlocBuilder<CusInsArHeaderBloc,
                                CusInsArHeaderState>(
                              builder: (context, state) {
                                return state.when(
                                  getArHeadersState: (headers, totals) =>
                                      headers == null
                                          ? Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10.0,
                                                  right: 10,
                                                  top: 10),
                                              child: Text(
                                                "0",
                                                style: countHeading(),
                                              ),
                                            )
                                          : Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10.0,
                                                  right: 10,
                                                  top: 10),
                                              child: Text(
                                                "${headers.length}",
                                                style: countHeading(),
                                              ),
                                            ),
                                  getArHeadersFailedState: () => Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, right: 10, top: 0),
                                    child: Text(
                                      "0",
                                      style: countHeading(),
                                    ),
                                  ),
                                );
                              },
                            ),
                            // SizedBox(width: ,),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const InsightArListWidget(),
                        SizedBox(
                          height: 10.sp,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              /* Expanded(
                  child: SingleChildScrollView(
                controller: _scrollController,
                child: const InsightArListWidget(),
              )), */
            ],
          );
        },
      ),
    );
  }

  Future<void> _onRefreshArHeader(BuildContext context) async {
    _cusArSearchCtrl.clear();
    context.read<ArScrollCtrlCubit>().onInit();
    _scrollController.addListener(_scrollListener);
    context.read<CusInsArHeaderBloc>().add(const ClearCusInsArHeader());
    context.read<CusInsArHeaderBloc>().add(
          GetCusInsArHeaderEvent(
            searchQuery: '',
            arIn: CusInsArHeaderInModel(
              userId: widget.user.usrId,
              cusId: widget.customer.cusId ?? '',
              fromDate: widget.fromdatectrl.text,
              toDate: widget.todatectrl.text,
              area: '',
              route: '',
              subArea: '',
            ),
          ),
        );
    await Future.delayed(const Duration(seconds: 2));
  }
}
