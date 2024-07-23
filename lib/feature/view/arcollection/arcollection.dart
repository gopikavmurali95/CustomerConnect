import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/ar_total_in_model/ar_total_in_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/arheader/ar_header_bloc.dart';
import 'package:customer_connect/feature/state/cubit/arscrol/ar_scroll_ctrl_cubit.dart';
import 'package:customer_connect/feature/view/arcollection/widgets/arheaderlistwidget.dart';
import 'package:customer_connect/feature/view/arcollection/widgets/modewidget.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ssun_chart/pie_chart.dart';

class ArCollectionScreen extends StatefulWidget {
  final LoginUserModel user;
  final bool isFromUser;
  const ArCollectionScreen(
      {super.key, required this.isFromUser, required this.user});

  @override
  State<ArCollectionScreen> createState() => _ArCollectionScreenState();
}

TextEditingController _arHeaderSearchCtrl = TextEditingController();
Timer? debounce;

class _ArCollectionScreenState extends State<ArCollectionScreen> {
  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    pievalues.clear();
    _arHeaderSearchCtrl = TextEditingController();
    _arHeaderSearchCtrl.clear();
    context.read<ArScrollCtrlCubit>().onInit();
    _scrollController.addListener(_scrollListener);
    context.read<ArHeaderBloc>().add(const ClearArHeaderEvent());
    context.read<ArHeaderBloc>().add(
          GetArHeaderData(
            arIn: ArTotalInModel(
                userId: widget.user.usrId,
                fromDate:
                    '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                toDate:
                    '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                area: '',
                customer: '',
                outlet: '',
                route: '',
                subArea: ''),
            searchQuery: '',
          ),
        );

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();

    super.dispose();
  }

  List<int> pievalues = [];

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
          "AR Collection",
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: BlocBuilder<ArScrollCtrlCubit, ArScrollCtrlState>(
              builder: (context, state) {
                return Column(
                  children: [
                    Visibility(
                      visible: state.isOnTop,
                      maintainAnimation: true,
                      maintainState: true,
                      child: BlocListener<ArHeaderBloc, ArHeaderState>(
                        listener: (context, state) {
                          state.when(
                            arHeaderSuccessState: (artotal, arHeaders) {
                              pievalues.clear();
                              if (artotal != null) {
                                if (int.parse(artotal.hcCount ?? '') > 0.00) {
                                  pievalues
                                      .add(int.parse(artotal.hcCount ?? ''));
                                }
                                if (int.parse(artotal.opCount ?? '') > 0.00) {
                                  pievalues
                                      .add(int.parse(artotal.opCount ?? ''));
                                }
                                if (int.parse(artotal.posCount ?? '') > 0.00) {
                                  pievalues
                                      .add(int.parse(artotal.posCount ?? ''));
                                }
                                if (int.parse(artotal.chequeCount ?? '') >
                                    0.00) {
                                  pievalues.add(
                                      int.parse(artotal.chequeCount ?? ''));
                                }
                              }
                            },
                            arHeaderFailedState: () {},
                          );
                        },
                        child: BlocBuilder<ArHeaderBloc, ArHeaderState>(
                          builder: (context, arTOtal) {
                            return arTOtal.when(
                              arHeaderSuccessState: (artotal, arHeaders) =>
                                  artotal == null
                                      ? /* const Padding(
                                                              padding: EdgeInsets.all(15.0),
                                                              child: Center(
                                                                child: CupertinoActivityIndicator(
                                                                  animating: true,
                                                                  color: Colors.red,
                                                                  radius: 30,
                                                                ),
                                                              ),
                                                            ) */

                                      ShimmerContainers(
                                          height: 110.h,
                                          width: double.infinity,
                                        )
                                      : Column(
                                          children: [
                                            AnimatedOpacity(
                                              opacity:
                                                  state.isOnTop ? 1.0 : 0.0,
                                              curve: Curves.slowMiddle,
                                              duration: const Duration(
                                                  milliseconds: 500),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  pievalues.length > 1
                                                      ? SizedBox(
                                                          width: 110.w,
                                                          height: 110.h,
                                                          child: RotatedBox(
                                                            quarterTurns: 0,
                                                            child: PieChart(
                                                              bgColor: Colors
                                                                  .transparent,
                                                              usePercentValues:
                                                                  false,
                                                              // centerTextSize: 11,
                                                              // drawCenterText: true,
                                                              drawHoleEnabled:
                                                                  true,
                                                              holeRadius: 20,
                                                              entryLabelTextSize:
                                                                  12.sp,
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
                                                                        growable:
                                                                            false,
                                                                        [
                                                                          PieEntry(
                                                                            double.parse(artotal.hcCount ?? '0') <= 0
                                                                                ? ''
                                                                                : artotal.hcCount ?? '0',
                                                                            double.parse(artotal.hcCount ??
                                                                                '0'),
                                                                          ),
                                                                          PieEntry(
                                                                              double.parse(artotal.opCount ?? '0') <= 0 ? '' : artotal.opCount ?? '0',
                                                                              double.parse(artotal.opCount ?? '0')),
                                                                          PieEntry(
                                                                              double.parse(artotal.posCount ?? '0') <= 0 ? '' : artotal.posCount ?? '0',
                                                                              double.parse(artotal.posCount ?? '0')),
                                                                          PieEntry(
                                                                              double.parse(artotal.chequeCount ?? '0') <= 0 ? '' : artotal.chequeCount ?? '0',
                                                                              double.parse(artotal.chequeCount ?? '0')),
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
                                                                          int.parse(artotal.hcCount ??
                                                                              '')
                                                                      ? colorslist[
                                                                          0]
                                                                      : pievalues[0] ==
                                                                              int.parse(artotal.opCount ??
                                                                                  '')
                                                                          ? colorslist[
                                                                              1]
                                                                          : pievalues[0] == int.parse(artotal.posCount ?? '')
                                                                              ? colorslist[2]
                                                                              : colorslist[3],
                                                                  child: Center(
                                                                    child:
                                                                        CircleAvatar(
                                                                      radius:
                                                                          23.h,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .white30,
                                                                      child:
                                                                          Center(
                                                                        child:
                                                                            CircleAvatar(
                                                                          backgroundColor:
                                                                              Colors.white,
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
                                                                          color:
                                                                              Colors.white),
                                                                    ))
                                                              ],
                                                            ),
                                                  SizedBox(
                                                    width: 20.w,
                                                  ),
                                                  Expanded(
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              'Total Collection',
                                                              style: kfontstyle(
                                                                  fontSize:
                                                                      10.sp),
                                                            ),
                                                            SizedBox(
                                                              width: 20.w,
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                '${artotal.totalCount ?? '0'}/${artotal.totalAmount ?? '0.00'}',
                                                                style: kfontstyle(
                                                                    fontSize:
                                                                        11.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 15.h,
                                                        ),
                                                        ArChartItemWidget(
                                                          amount:
                                                              '${artotal.hcCount ?? '0'}/${artotal.hcAmount ?? '0'}',
                                                          color: const Color(
                                                              0xff9ce2f5),
                                                          title: 'Hard Cash',
                                                        ),
                                                        SizedBox(
                                                          height: 10.h,
                                                        ),
                                                        ArChartItemWidget(
                                                          amount:
                                                              '${artotal.opCount ?? '0'}/${artotal.opAmount ?? '0'}',
                                                          color: const Color(
                                                              0xffe6dd94),
                                                          title:
                                                              'Online Payment',
                                                        ),
                                                        SizedBox(
                                                          height: 10.h,
                                                        ),
                                                        ArChartItemWidget(
                                                          amount:
                                                              '${artotal.posCount ?? '0'}/${artotal.posAmount ?? '0'}',
                                                          color: const Color(
                                                              0xff93e1b2),
                                                          title: 'POS',
                                                        ),
                                                        SizedBox(
                                                          height: 10.h,
                                                        ),
                                                        ArChartItemWidget(
                                                          amount:
                                                              '${artotal.chequeCount ?? '0'}/${artotal.chequeAmount ?? '0'}',
                                                          color: const Color(
                                                              0xffdf936e),
                                                          title: 'Cheque',
                                                        )
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 15.h,
                                            ),
                                          ],
                                        ),
                              arHeaderFailedState: () =>
                                  const SizedBox.shrink(),
                            );
                          },
                        ),
                      ),
                    ),
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
                          controller: _arHeaderSearchCtrl,
                          onChanged: (value) {
                            if (debounce?.isActive ?? false) debounce!.cancel();
                            debounce = Timer(
                              const Duration(
                                milliseconds: 500,
                              ),
                              () async {
                                context
                                    .read<ArHeaderBloc>()
                                    .add(const ClearArHeaderEvent());
                                context.read<ArHeaderBloc>().add(GetArHeaderData(
                                    arIn: ArTotalInModel(
                                        userId: widget.user.usrId,
                                        fromDate:
                                            '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                                        toDate:
                                            '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                                        area: '',
                                        customer: '',
                                        outlet: '',
                                        route: '',
                                        subArea: ''),
                                    searchQuery: value.trim()));
                              },
                            );
                          },
                          decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.search,
                                size: 20,
                              ),
                              hintText: "Search here..",
                              hintStyle: const TextStyle(
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
                                  _arHeaderSearchCtrl.clear();
                                  context
                                      .read<ArHeaderBloc>()
                                      .add(const ClearArHeaderEvent());
                                  context.read<ArHeaderBloc>().add(
                                        GetArHeaderData(
                                          arIn: ArTotalInModel(
                                              userId: widget.user.usrId,
                                              fromDate:
                                                  '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                                              toDate:
                                                  '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                                              area: '',
                                              customer: '',
                                              outlet: '',
                                              route: '',
                                              subArea: ''),
                                          searchQuery: '',
                                        ),
                                      );
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
                  ],
                );
              },
            ),
          ),
          Expanded(
            child: RefreshIndicator(
              triggerMode: RefreshIndicatorTriggerMode.anywhere,
              color: const Color.fromARGB(255, 181, 218, 245),
              displacement: BorderSide.strokeAlignCenter,
              onRefresh: () => _onRefreshArHeader(context),
              child: SingleChildScrollView(
                controller: _scrollController,
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
                            "All",
                            style: countHeading(),
                          ),
                        ),
                        BlocBuilder<ArHeaderBloc, ArHeaderState>(
                          builder: (context, state) {
                            return state.when(
                              arHeaderSuccessState: (artotal, arHeaders) =>
                                  arHeaders == null
                                      ? Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, right: 10, top: 0),
                                          child: Text(
                                            "0",
                                            style: countHeading(),
                                          ),
                                        )
                                      : Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, right: 10, top: 0),
                                          child: Text(
                                            "${arHeaders.length}",
                                            style: countHeading(),
                                          ),
                                        ),
                              arHeaderFailedState: () => Padding(
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
                    const ARHeaderListWidget(),
                    SizedBox(
                      height: 10.sp,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<void> _onRefreshArHeader(BuildContext context) async {
    _arHeaderSearchCtrl = TextEditingController();
    _arHeaderSearchCtrl.clear();
    context.read<ArScrollCtrlCubit>().onInit();
    _scrollController.addListener(_scrollListener);
    context.read<ArHeaderBloc>().add(const ClearArHeaderEvent());
    context.read<ArHeaderBloc>().add(
          GetArHeaderData(
            arIn: ArTotalInModel(
                userId: widget.user.usrId,
                fromDate:
                    '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                toDate:
                    '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                area: '',
                customer: '',
                outlet: '',
                route: '',
                subArea: ''),
            searchQuery: '',
          ),
        );
    await Future.delayed(const Duration(seconds: 2));
  }
}

List<Color> colorslist = [
  const Color(0xff9ce2f5),
  const Color(0xffe6dd94),
  const Color(0xff93e1b2),
  const Color(0xffdf936e),
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
