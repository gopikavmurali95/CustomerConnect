import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/out_standing_header/OutStandingHeaderModel.dart';
import 'package:customer_connect/feature/data/models/outstanding_dd_filter_model/outstanding_dd_filter_model.dart';
import 'package:customer_connect/feature/state/bloc/outstanding/outstanding_bloc.dart';
import 'package:customer_connect/feature/state/cubit/outstandingpagination/out_standing_pagination_cubit.dart';
import 'package:customer_connect/feature/view/arcollection/widgets/modewidget.dart';
import 'package:customer_connect/feature/view/outstanding/widgets/outstandinglistwidget.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/l10n/app_localizations.dart';
import 'package:customer_connect/main.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
// import 'package:ssun_chart/pie_chart.dart';

class OutstandingHeaderScreen extends StatefulWidget {
  final LoginUserModel user;
  final bool isfromUser;

  const OutstandingHeaderScreen(
      {super.key, required this.isfromUser, required this.user});

  @override
  State<OutstandingHeaderScreen> createState() =>
      _OutstandingHeaderScreenState();
}

List<OutstandingDdFilterModel> filterOutstanding = [
  OutstandingDdFilterModel(statusName: "All", statusValue: 'Al'),
  OutstandingDdFilterModel(statusName: "Due", statusValue: 'd'),
  OutstandingDdFilterModel(statusName: "Overdue", statusValue: 'o'),
];
String _selectedMode = 'Al';

class _ChartData {
  _ChartData(this.label, this.value, this.color);
  final String label;
  final double value;
  final Color color;
}

Timer? debounce;
ScrollController outStandingscrollController = ScrollController();
bool isfirstfetch = true;

List<int> _pievalues = [];
final _outstandingHeaderSearchCtrl = TextEditingController();

int pagecounter = 1;

class _OutstandingHeaderScreenState extends State<OutstandingHeaderScreen> {
  @override
  void initState() {
    _pievalues.clear();
    filterOutstanding = [
      OutstandingDdFilterModel(
          statusName: selectedLocale?.languageCode == 'en' ? 'All' : 'الجميع',
          statusValue: 'Al'),
      OutstandingDdFilterModel(
          statusName: selectedLocale?.languageCode == 'en'
              ? "Due"
              : "الفاتورة المستحقة",
          statusValue: 'd'),
      OutstandingDdFilterModel(
          statusName: selectedLocale?.languageCode == 'en'
              ? "Overdue"
              : "فاتورة متأخرة",
          statusValue: 'o'),
    ];

    outStandingscrollController = ScrollController();
    _selectedMode = 'Al';
    pagecounter = 1;
    _outstandingHeaderSearchCtrl.clear();
    context.read<OutstandingBloc>().add(const ClearOutStandingEvent());
    context.read<OutstandingBloc>().add(GetOutstandingDataEvent(
        searchQuery: '',
        outIn: OutStandingHeaderModel(
            area: '',
            customer: '',
            fromDate:
                '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
            outlet: '',
            route: '',
            subArea: '',
            toDate:
                '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
            userID: widget.user.usrId,
            pageNum: '1',
            searchQuery: '',
            statusValue: '')));
    context.read<OutStandingPaginationCubit>().clearOutStanding();

    context.read<OutStandingPaginationCubit>().getOutStatndingHeaders(
        OutStandingHeaderModel(
            area: '',
            customer: '',
            fromDate:
                '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
            outlet: '',
            route: '',
            subArea: '',
            toDate:
                '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
            userID: widget.user.usrId,
            searchQuery: _outstandingHeaderSearchCtrl.text,
            pageNum: '1',
            statusValue: 'Al'),
        '');

    setUpScrollController(OutStandingHeaderModel(
        area: '',
        customer: '',
        fromDate:
            '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
        outlet: '',
        route: '',
        subArea: '',
        toDate:
            '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
        userID: widget.user.usrId,
        pageNum: pagecounter.toString(),
        searchQuery: '',
        statusValue: 'Al'));

    super.initState();
  }

  setUpScrollController(OutStandingHeaderModel outIN) {
    if (isfirstfetch == true) {
      isfirstfetch = false;
      pagecounter++;
      context.read<OutstandingBloc>().add(GetOutstandingDataEvent(
          searchQuery: '',
          outIn: OutStandingHeaderModel(
              area: '',
              customer: '',
              fromDate:
                  '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
              outlet: '',
              route: '',
              subArea: '',
              toDate:
                  '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
              userID: widget.user.usrId,
              pageNum: '1',
              searchQuery: '',
              statusValue: '')));

      context.read<OutStandingPaginationCubit>().getOutStatndingHeaders(
          OutStandingHeaderModel(
              area: '',
              customer: '',
              fromDate:
                  '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
              outlet: '',
              route: '',
              subArea: '',
              toDate:
                  '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
              userID: widget.user.usrId,
              searchQuery: _outstandingHeaderSearchCtrl.text,
              pageNum: '1',
              statusValue: 'Al'),
          '');
    } else {
      outStandingscrollController.addListener(() {
        if (outStandingscrollController.position.atEdge) {
          if (outStandingscrollController.position.pixels != 0) {
            context.read<OutStandingPaginationCubit>().getOutStatndingHeaders(
                OutStandingHeaderModel(
                    area: '',
                    customer: '',
                    fromDate:
                        '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                    outlet: '',
                    route: '',
                    subArea: '',
                    toDate:
                        '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                    userID: widget.user.usrId,
                    searchQuery: _outstandingHeaderSearchCtrl.text,
                    statusValue: _selectedMode,
                    pageNum: pagecounter.toString()),
                '');
            pagecounter++;
          }
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    log(jsonEncode(_pievalues));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        titleSpacing: 0.5,
        leading: Transform.flip(
          // flipX: selectedLocale?.languageCode == "en" ? false : true,
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
              size: 20,
            ),
          ),
        ),
        title: Text(
          AppLocalizations.of(context)!.outstanding,
          // "Outstanding",
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                    child: TextFormField(
                      controller: _outstandingHeaderSearchCtrl,

                      onChanged: (value) {
                        if (debounce?.isActive ?? false) debounce!.cancel();
                        debounce = Timer(
                          const Duration(
                            milliseconds: 300,
                          ),
                          () async {
                            // context
                            //     .read<OutstandingBloc>()
                            //     .add(const ClearOutStandingEvent());
                            context
                                .read<OutStandingPaginationCubit>()
                                .getOutStatndingHeaders(
                                  OutStandingHeaderModel(
                                      area: '',
                                      customer: '',
                                      fromDate:
                                          '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                                      outlet: '',
                                      route: '',
                                      subArea: '',
                                      toDate:
                                          '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                                      userID: widget.user.usrId,
                                      pageNum: pagecounter.toString(),
                                      searchQuery: value.trim(),
                                      statusValue: _selectedMode),
                                  value.trim(),
                                );
                          },
                        );
                      },
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 20,
                          ),
                          hintText:
                              "${AppLocalizations.of(context)!.searchHere}..",
                          hintStyle: kfontstyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal),
                          isDense: true,
                          counterText: "",
                          contentPadding: const EdgeInsets.all(15.0),
                          filled: true,
                          fillColor: Colors.white,
                          suffix: InkWell(
                            onTap: () {
                              _outstandingHeaderSearchCtrl.clear();
                              pagecounter = 1;
                              context
                                  .read<OutStandingPaginationCubit>()
                                  .getOutStatndingHeaders(
                                      OutStandingHeaderModel(
                                          area: '',
                                          customer: '',
                                          fromDate:
                                              '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                                          outlet: '',
                                          route: '',
                                          subArea: '',
                                          toDate:
                                              '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                                          userID: widget.user.usrId,
                                          pageNum: '1',
                                          searchQuery: ''),
                                      '');
                            },
                            child: const Icon(
                              Icons.close,
                              size: 14,
                            ),
                          ),
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
                SizedBox(
                  height: 30.h,
                  width: MediaQuery.of(context).size.width,
                  child: DropdownButtonFormField(
                    elevation: 0,
                    value: filterOutstanding[0].statusValue,
                    dropdownColor: Colors.white,
                    style: kfontstyle(fontSize: 10.sp, color: Colors.black87),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10),
                      border: /* InputBorder
                                    .none  */
                          OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey.shade200),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey.shade200),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey.shade200),
                      ),
                    ),
                    items: filterOutstanding
                        .map(
                          (e) => DropdownMenuItem(
                            value: e.statusValue,
                            child: Text(e.statusName ?? ''),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      _selectedMode = value!;
                      pagecounter = 1;
                      context.read<OutstandingBloc>().add(GetOutstandingDataEvent(
                          searchQuery: '',
                          outIn: OutStandingHeaderModel(
                              area: '',
                              customer: '',
                              fromDate:
                                  '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                              outlet: '',
                              route: '',
                              subArea: '',
                              toDate:
                                  '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                              userID: widget.user.usrId,
                              pageNum: '1',
                              searchQuery: '',
                              statusValue: 'Al')));
                      context
                          .read<OutStandingPaginationCubit>()
                          .clearOutStanding();
                      context.read<OutStandingPaginationCubit>().getOutStatndingHeaders(
                          OutStandingHeaderModel(
                              area: '',
                              customer: '',
                              fromDate:
                                  '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                              outlet: '',
                              route: '',
                              subArea: '',
                              toDate:
                                  '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                              userID: widget.user.usrId,
                              searchQuery: _outstandingHeaderSearchCtrl.text,
                              pageNum: pagecounter.toString(),
                              statusValue: value),
                          '');
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            // height: MediaQuery.of(context).size.height,
            child: RefreshIndicator(
              triggerMode: RefreshIndicatorTriggerMode.anywhere,
              color: const Color.fromARGB(255, 181, 218, 245),
              displacement: BorderSide.strokeAlignCenter,
              onRefresh: () =>
                  _onRefreshOutstandingHeaderScreen(context, widget.user),
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                controller: outStandingscrollController,
                child: Column(
                  children: [
                    BlocConsumer<OutstandingBloc, OutstandingState>(
                      listener: (context, state) {
                        state.when(
                          getOutstandingDataState: (counts) {
                            if (counts != null) {
                              _pievalues.clear();
                              if (int.parse(counts.dueCount ?? '') > 0) {
                                _pievalues
                                    .add(int.parse(counts.dueCount ?? ''));
                              }

                              if (int.parse(counts.overDueCount ?? '') > 0) {
                                _pievalues
                                    .add(int.parse(counts.overDueCount ?? ''));
                              }
                            }
                          },
                          outstandingFailedState: () {},
                        );
                      },
                      builder: (context, state) {
                        return state.when(
                          getOutstandingDataState: (counts) => counts == null
                              ? Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: ShimmerContainers(
                                      height: 110.h, width: double.infinity),
                                )
                              : Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      _pievalues.length > 1
                                          ? SizedBox(
                                              width: 110.w,
                                              height: 110.h,
                                              child: RotatedBox(
                                                quarterTurns: 0,
                                                child: SfCircularChart(
                                                  margin: EdgeInsets.zero,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  series: <DoughnutSeries<
                                                      _ChartData, String>>[
                                                    DoughnutSeries<_ChartData,
                                                        String>(
                                                      dataSource: [
                                                        _ChartData(
                                                          counts.dueCount ?? '',
                                                          double.tryParse(counts
                                                                      .dueCount ??
                                                                  '0') ??
                                                              0,
                                                          outstandingcolorslist
                                                                  .isNotEmpty
                                                              ? outstandingcolorslist[
                                                                  0]
                                                              : Colors.blue,
                                                        ),
                                                        _ChartData(
                                                          counts.overDueCount ??
                                                              '',
                                                          double.tryParse(counts
                                                                      .overDueCount ??
                                                                  '0') ??
                                                              0,
                                                          outstandingcolorslist
                                                                      .length >
                                                                  1
                                                              ? outstandingcolorslist[
                                                                  1]
                                                              : Colors.red,
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
                                                          const DataLabelSettings(
                                                        isVisible: true,
                                                        textStyle: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 10),
                                                      ),
                                                      radius: '100%',
                                                      innerRadius: '40%',
                                                      explode: true,
                                                    ),
                                                  ],
                                                ),
                                              ))
                                          : _pievalues.isEmpty
                                              ? const Center(
                                                  child: Text('No Chart Data'),
                                                )
                                              : Stack(
                                                  children: [
                                                    CircleAvatar(
                                                      radius: 50.h,
                                                      backgroundColor: _pievalues[
                                                                  0] ==
                                                              int.parse(counts
                                                                      .dueCount ??
                                                                  '')
                                                          ? outstandingcolorslist[
                                                              0]
                                                          : outstandingcolorslist[
                                                              1],
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
                                                          '${_pievalues[0]}',
                                                          style: kfontstyle(
                                                              color:
                                                                  Colors.black),
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  AppLocalizations.of(context)!
                                                      .totaloutstanding,
                                                  //'Total Outstanding',
                                                  style: kfontstyle(
                                                      fontSize: 10.sp),
                                                ),
                                                SizedBox(
                                                  width: 20.w,
                                                ),
                                                Text(
                                                  '${counts.totCount}/${counts.totAmount}',
                                                  style: kfontstyle(
                                                      fontSize: 13.sp,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 15.h,
                                            ),
                                            ArChartItemWidget(
                                              amount:
                                                  '${counts.dueCount}/${counts.dueAmount}',
                                              color: const Color(0xff9ce895),
                                              title:
                                                  AppLocalizations.of(context)!
                                                      .due,
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            ArChartItemWidget(
                                              amount:
                                                  '${counts.overDueCount}/${counts.overDueAmount}',
                                              color: const Color(0xffe18484),
                                              title:
                                                  AppLocalizations.of(context)!
                                                      .overdue,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                          outstandingFailedState: () => const SizedBox(),
                        );
                      },
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //SizedBox(width: 05,),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 10, top: 0),
                          child: Text(
                            AppLocalizations.of(context)!.outStandingInvoices,
                            //"Outstanding invoices",
                            style: countHeading(),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 10, top: 0),
                          child: BlocBuilder<OutstandingBloc, OutstandingState>(
                            builder: (context, state) {
                              return Text(
                                state.when(
                                  getOutstandingDataState: (headers) => headers ==
                                          null
                                      ? "0"
                                      : /* headers.totCount ?? '0' */ _selectedMode ==
                                              'Al'
                                          ? headers.totCount ?? '0'
                                          : _selectedMode == 'd'
                                              ? headers.dueCount ?? '0'
                                              : headers.overDueCount ?? '0',
                                  outstandingFailedState: () => "0",
                                ),
                                style: countHeading(),
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
                    const OutstandingListWidget(),
                    SizedBox(
                      height: 8.h,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _onRefreshOutstandingHeaderScreen(
      BuildContext context, LoginUserModel model) async {
    context.read<OutStandingPaginationCubit>().clearOutStanding();
    context.read<OutStandingPaginationCubit>().getOutStatndingHeaders(
        OutStandingHeaderModel(
            area: '',
            customer: '',
            fromDate:
                '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
            outlet: '',
            route: '',
            subArea: '',
            toDate:
                '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
            userID: widget.user.usrId,
            pageNum: '1',
            searchQuery: '',
            statusValue: _selectedMode),
        '');
  }
}

List<Color> outstandingcolorslist = [
  const Color(0xff9ce895),
  const Color(0xffe18484),
];
