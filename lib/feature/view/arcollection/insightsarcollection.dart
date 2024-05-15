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
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ssun_chart/pie_chart.dart';

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
                                  '${widget.customer.cusCode} - ',
                                  style: kfontstyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xff2C6B9E),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    overflow: TextOverflow.ellipsis,
                                    widget.customer.cusName ?? "",
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
                                  '${widget.customer.headerCode} - ',
                                  style: kfontstyle(
                                      fontSize: 11.sp,
                                      color: const Color(0xff413434)),
                                ),
                                Expanded(
                                  child: Text(
                                    widget.customer.headerName ?? "",
                                    overflow: TextOverflow.ellipsis,
                                    style: kfontstyle(fontSize: 12.sp),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '${widget.customer.cusType} | ${widget.customer.className} | ${widget.customer.areaName} ',
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
                padding: const EdgeInsets.only(left: 15.0, right: 15),
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
                                                      child: PieChart(
                                                        bgColor:
                                                            Colors.transparent,
                                                        usePercentValues: false,
                                                        // centerTextSize: 11,
                                                        // drawCenterText: true,
                                                        drawHoleEnabled: true,
                                                        holeRadius: 20,
                                                        entryLabelTextSize: 10,
                                                        transparentCircleRadius:
                                                            27,
                                                        entryLabelColor:
                                                            Colors.white,
                                                        data: PieData(
                                                          List.of(
                                                            [
                                                              PieDataSet(
                                                                colors:
                                                                    colorslist,
                                                                entries:
                                                                    List.of(
                                                                  [
                                                                    PieEntry(
                                                                        artotal.hcCount ??
                                                                            '0',
                                                                        double.parse(artotal.hcCount ??
                                                                            '0')),
                                                                    PieEntry(
                                                                        artotal.opCount ??
                                                                            '0',
                                                                        double.parse(artotal.opCount ??
                                                                            '0')),
                                                                    PieEntry(
                                                                        artotal.posCount ??
                                                                            '0',
                                                                        double.parse(artotal.posCount ??
                                                                            '0')),
                                                                    PieEntry(
                                                                        artotal.chequeCount ??
                                                                            '0',
                                                                        double.parse(artotal.hcCount ??
                                                                            '0')),
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  )
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
                                                                  CircleAvatar(
                                                                radius: 23.h,
                                                                backgroundColor:
                                                                    Colors
                                                                        .white30,
                                                                child: Center(
                                                                  child:
                                                                      CircleAvatar(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .white,
                                                                    radius:
                                                                        16.h,
                                                                  ),
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
                                                        'Total Collection',
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
                                                    title: 'Hard Cash',
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  ArChartItemWidget(
                                                    amount:
                                                        '${artotal.opCount ?? '0'}/${artotal.opAmount ?? '0'}',
                                                    color:
                                                        const Color(0xffe6dd94),
                                                    title: 'Online Payment',
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  ArChartItemWidget(
                                                    amount:
                                                        '${artotal.posCount ?? '0'}/${artotal.posAmount ?? '0'}',
                                                    color:
                                                        const Color(0xff93e1b2),
                                                    title: 'POS',
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  ArChartItemWidget(
                                                    amount:
                                                        '${artotal.chequeCount ?? '0'}/${artotal.chequeAmount ?? '0'}',
                                                    color:
                                                        const Color(0xffdf936e),
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
                                                        cusId: /* widget.customer.cusId */
                                                            '2',
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
                                                                cusId: /* widget.customer.cusId */
                                                                    '2',
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
                                            hintText: "Search AR Collections",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //SizedBox(width: 05,),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, right: 20, top: 0),
                    child: Text(
                      "All",
                      style: countHeading(),
                    ),
                  ),
                  BlocBuilder<CusInsArHeaderBloc, CusInsArHeaderState>(
                    builder: (context, state) {
                      return state.when(
                        getArHeadersState: (headers, totals) => headers == null
                            ? Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20, top: 0),
                                child: Text(
                                  "0",
                                  style: countHeading(),
                                ),
                              )
                            : Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20, top: 0),
                                child: Text(
                                  "${headers.length}",
                                  style: countHeading(),
                                ),
                              ),
                        getArHeadersFailedState: () => Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20, top: 0),
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
              Expanded(
                  child: SingleChildScrollView(
                controller: _scrollController,
                child: const InsightArListWidget(),
              )),
              SizedBox(
                height: 10.sp,
              )
            ],
          );
        },
      ),
    );
  }
}
