import 'dart:async';
import 'dart:developer';
import 'dart:isolate';
import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/domain/notification/firebasenotification.dart';
import 'package:customer_connect/feature/state/bloc/autoupdate/auto_update_bloc.dart';
import 'package:customer_connect/feature/state/bloc/chartactualvisits/chart_actual_visits_bloc.dart';
import 'package:customer_connect/feature/state/bloc/chartnonproductive/chart_non_productive_bloc.dart';
import 'package:customer_connect/feature/state/bloc/chartproductivevisit/chart_productive_visit_bloc.dart';
import 'package:customer_connect/feature/state/bloc/chartroutes/chart_routs_bloc.dart';
import 'package:customer_connect/feature/state/bloc/customer_transaction/customer_transaction_bloc.dart';
import 'package:customer_connect/feature/state/bloc/customersettings/customer_settings_bloc.dart';
import 'package:customer_connect/feature/state/bloc/picking_and_loading_count/picking_and_loading_count_bloc.dart';
import 'package:customer_connect/feature/state/bloc/plannedvisits/chart_planned_visits_bloc.dart';
import 'package:customer_connect/feature/state/bloc/sales_order_count/sales_order_count_bloc.dart';
import 'package:customer_connect/feature/state/cubit/homeappbar/home_app_bar_cubit.dart';
import 'package:customer_connect/feature/state/cubit/homegraph/home_graph_switch_cubit.dart';
import 'package:customer_connect/feature/state/cubit/invnttransexpand/inverntory_trans_ex_pand_cubit.dart';
import 'package:customer_connect/feature/state/cubit/selectlanguage/select_language_locale_cubit.dart';
import 'package:customer_connect/feature/view/HomeScreen/apkinstaller.dart';
import 'package:customer_connect/feature/view/HomeScreen/autoupdatescreen.dart';
import 'package:customer_connect/feature/view/HomeScreen/homegraphmodel.dart';
import 'package:customer_connect/feature/view/HomeScreen/widgets/CustomerTransaction.dart';
import 'package:customer_connect/feature/view/HomeScreen/widgets/Picking.dart';
import 'package:customer_connect/feature/view/HomeScreen/widgets/SalesOrders.dart';
import 'package:customer_connect/feature/view/HomeScreen/widgets/homechartwidget.dart';
import 'package:customer_connect/feature/view/HomeScreen/widgets/homepopupmenu.dart';
import 'package:customer_connect/feature/view/HomeScreen/widgets/otheroptions.dart';
import 'package:customer_connect/feature/view/notification/notification.dart';
import 'package:customer_connect/main.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

ReceivePort _port = ReceivePort();

class HomeScreen extends StatefulWidget {
  final LoginUserModel user;
  const HomeScreen({super.key, required this.user});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

getnotipermission() async {
  PermissionStatus status = await Permission.notification.request();

  if (status.isGranted) {
    await PushNotificationService().getToken();
  } else if (status.isDenied) {
    await Permission.notification.request();
  } else if (status.isPermanentlyDenied) {
    await Permission.notification.request();
  }
}

ScrollController _scrollController = ScrollController();
ScrollController _centerscrollController = ScrollController();
Timer? _autoScrollTimer;
int _currentIndex = 0;
bool _isManualTap = false;
Timer? _manualTapDelayTimer;
List<GlobalKey> tileKeys = [];

class _HomeScreenState extends State<HomeScreen> {
  bool _isScrolled = false;

  @override
  void dispose() {
    _scrollController.dispose();
    _centerscrollController.dispose();
    _autoScrollTimer?.cancel();
    _manualTapDelayTimer?.cancel();
    super.dispose();
  }

  @override
  void initState() {
    // initPlatformState();

    _scrollController = ScrollController();
    context.read<AutoUpdateBloc>().add(const CheckForUpdatesEvent(type: 'C'));
    _centerscrollController = ScrollController();
    context.read<CustomerSettingsBloc>().add(const ClearSettingsEvent());
    context
        .read<CustomerSettingsBloc>()
        .add(GetCustomerSettingsEvent(usrID: widget.user.usrId ?? '0'));
    tileKeys = List.generate(homegraphList.length, (index) => GlobalKey());
    _scrollController.addListener(() {
      _isScrolled = _scrollController.offset > 0;

      context.read<HomeAppBarCubit>().isScrolled(_isScrolled);
    });
    getnotipermission();
    // _startAutoScroll();

    context.read<SelectLanguageLocaleCubit>().changeLanguage(selectedLocale);
    context
        .read<PickingAndLoadingCountBloc>()
        .add(const ClearPichingAndLoadingCount());
    context
        .read<PickingAndLoadingCountBloc>()
        .add(PlCountSuccessEvent(userID: widget.user.usrId!));
    context
        .read<CustomerTransactionBloc>()
        .add(const ClearCustomerTransactionCount());
    context
        .read<CustomerTransactionBloc>()
        .add(CusTransactionSuccessEvent(userID: widget.user.usrId!));
    context.read<SalesOrderCountBloc>().add(const ClearSalesOrderCount());
    context
        .read<SalesOrderCountBloc>()
        .add(SalesOrderCountSuccessEvent(userID: widget.user.usrId!));

    context.read<ChartRoutsBloc>().add(GetchartRouteDataEvent(
        date:
            '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}'));

    context.read<ChartPlannedVisitsBloc>().add(GetChartPlannedVisitsEvent(
        date:
            '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}'));

    context.read<ChartActualVisitsBloc>().add(GetChartActualVisitsDataEvent(
        date:
            '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}'));

    context.read<ChartProductiveVisitBloc>().add(GetChartPRoductiveVisitDataEvent(
        fromDate:
            '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}',
        toDate:
            '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}'));

    context.read<ChartNonProductiveBloc>().add(GetChartNonProductiveDataEvent(
        fromDate:
            '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}',
        toDate:
            '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}'));
    super.initState();
  }

  getnoti() async {
    var initialMessage = await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) {
      final screen = initialMessage.data['Key'];
      if (screen != null) {
        LoginUserModel? user = await getuserdata();
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (screen == "val1") {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => NotificationScreen(user: user!),
            ));
          } else if (screen == "val2") {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => NotificationScreen(user: user!),
            ));
          }
        });
      }
    }
  }

/* 
  void _centerItem(int index) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      const double itemWidth = 150;
      final double screenWidth = MediaQuery.of(context).size.width;
      final double position = index * itemWidth - (screenWidth - itemWidth) / 2;

      if (_centerscrollController.hasClients) {
        _centerscrollController.animateTo(
          position,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  } */
  void _centerItem(int index) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      // final screenWidth = MediaQuery.of(context).size.width;
      // double position = 10;

      /*    for (int i = 0; i < index; i++) {
        final itemContext = tileKeys[i].currentContext;
        if (itemContext != null) {
          final itemBox = itemContext.findRenderObject() as RenderBox;
          position += itemBox.size.width;
        }
      }

      final itemContext = tileKeys[index].currentContext;
      if (itemContext != null) {
        final itemBox = itemContext.findRenderObject() as RenderBox;
        final itemWidth = itemBox.size.width;
        position -= (screenWidth - itemWidth) / 2;

        if (_centerscrollController.hasClients) {
          _centerscrollController.animateTo(
            position,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        }
      } */

      _centerscrollController.animateTo(
        index < 3 ? -150 : 150,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  /* void _startAutoScroll() {
    _autoScrollTimer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if (!_isManualTap) {
        _currentIndex = (_currentIndex + 1) % homegraphList.length;
        _centerItem(_currentIndex);
        _performTapAction(_currentIndex);
      } else {
        _manualTapDelayTimer?.cancel();
        _manualTapDelayTimer = Timer(const Duration(seconds: 10), () {
          _isManualTap = false;
        });
        _isManualTap = false;
      }
    });
  } */

  void _performTapAction(int index) {
    context.read<ChartRoutsBloc>().add(GetchartRouteDataEvent(
        date:
            '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}'));

    context.read<ChartPlannedVisitsBloc>().add(GetChartPlannedVisitsEvent(
        date:
            '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}'));

    context.read<ChartActualVisitsBloc>().add(GetChartActualVisitsDataEvent(
        date:
            '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}'));
    context.read<ChartProductiveVisitBloc>().add(GetChartPRoductiveVisitDataEvent(
        fromDate:
            '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}',
        toDate:
            '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}'));

    context.read<ChartNonProductiveBloc>().add(GetChartNonProductiveDataEvent(
        fromDate:
            '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}',
        toDate:
            '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}'));
    context.read<HomeGraphSwitchCubit>().chnageGraph(homegraphList[index]);
  }

  void _onItemTap(int index) {
    _isManualTap = true;
    _currentIndex = index;
    // setState(() {});
    _centerItem(index);
    _performTapAction(index);
  }

  checkNoti() {
    FirebaseMessaging.onBackgroundMessage(backgroundHandler);
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      log("onMessage: $message");
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => NotificationScreen(user: widget.user),
      ));
    });
    // FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) async {
    //   log("onMessageOpenedApp: $message");
    //   log('dfvgbhnjm');
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocListener<AutoUpdateBloc, AutoUpdateState>(
        listener: (context, state) {
          state.when(
            autoUpdateStatusState: (status) async {
              if (status != null) {
                VersionHelper versionHelper = VersionHelper();
                int? versionCode = await versionHelper.getAppVersionCode() ?? 0;
                log(status.verCode ?? '');
                if (versionCode < int.parse(status.verCode ?? '0')) {
                  Future.delayed(const Duration(microseconds: 100), () {
                    showCupertinoDialog(
                      context: context,
                      builder: (context) => CupertinoAlertDialog(
                        title: Text(AppLocalizations.of(context)!.alert),
                        content: Text(status.msg ?? ''),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AutoUpdateScreen(
                                      status: status,
                                    ),
                                  ));
                            },
                            child: Text(AppLocalizations.of(context)!.ok),
                          ),
                        ],
                      ),
                    );
                  });
                }
              }
            },
          );
        },
        child: BlocBuilder<CustomerSettingsBloc, CustomerSettingsState>(
          builder: (context, state) {
            return Stack(
              children: [
                Positioned(
                  top: 0,
                  // bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    width: double.infinity,
                    height: 300.h,
                    alignment: Alignment.bottomCenter,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/home/home_bg2.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Positioned(
                  // top: 0,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Opacity(
                    opacity: .5,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/home/o_bg.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
                RefreshIndicator(
                  triggerMode: RefreshIndicatorTriggerMode.anywhere,
                  color: const Color.fromARGB(255, 181, 218, 245),
                  displacement: 60,
                  onRefresh: _onRefreshHome,
                  child: BlocListener<ChartRoutsBloc, ChartRoutsState>(
                    listener: (context, state) {
                      state.when(
                        getChartRoutesDataState: (routedata) {
                          homegraphList[0].totalCount =
                              int.parse(routedata.active ?? '0');
                          homegraphList[0].completedCount =
                              int.parse(routedata.daysStarted ?? '0');
                        },
                        routeChartFailedState: (routedata) {
                          homegraphList[0].totalCount =
                              int.parse(routedata.active ?? '0');
                          homegraphList[0].completedCount =
                              int.parse(routedata.daysStarted ?? '0');
                        },
                      );
                    },
                    child: BlocListener<ChartPlannedVisitsBloc,
                        ChartPlannedVisitsState>(
                      listener: (context, state) {
                        state.when(
                          getChartPlannedVisitDataState: (data) {
                            homegraphList[1].totalCount =
                                int.parse(data.planned ?? '0');
                            homegraphList[1].completedCount =
                                int.parse(data.visited ?? '0');
                          },
                          plannedVisitFailedState: (data) {
                            homegraphList[1].totalCount =
                                int.parse(data.planned ?? '0');
                            homegraphList[1].completedCount =
                                int.parse(data.visited ?? '0');
                          },
                        );
                      },
                      child: BlocListener<ChartActualVisitsBloc,
                          ChartActualVisitsState>(
                        listener: (context, state) {
                          state.when(
                            getChartActualVisitsDataState: (data) {
                              homegraphList[2].totalCount =
                                  int.parse(data.total ?? '0');
                              homegraphList[2].completedCount =
                                  int.parse(data.planned ?? '0');
                            },
                          );
                        },
                        child: BlocListener<ChartProductiveVisitBloc,
                            ChartProductiveVisitState>(
                          listener: (context, state) {
                            state.when(
                              getChartProductiveVisitDataSate:
                                  (productiveVisitData) {
                                homegraphList[3].totalCount =
                                    int.parse(productiveVisitData.total ?? '0');
                                homegraphList[3].completedCount = int.parse(
                                    productiveVisitData.planned ?? '0');
                              },
                            );
                          },
                          child: BlocListener<ChartNonProductiveBloc,
                              ChartNonProductiveState>(
                            listener: (context, state) {
                              state.when(
                                getChartNonProductiveDataState:
                                    (nonProductiveData) {
                                  homegraphList[4].totalCount =
                                      int.parse(nonProductiveData.total ?? '0');
                                  homegraphList[4].completedCount = int.parse(
                                      nonProductiveData.planned ?? '0');
                                },
                              );
                            },
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                              child: SingleChildScrollView(
                                physics: const AlwaysScrollableScrollPhysics(),
                                controller: _scrollController,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      child: BlocBuilder<HomeGraphSwitchCubit,
                                          HomeGraphSwitchState>(
                                        builder: (context, graph) {
                                          return Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 0),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: 60.h,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 10),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      SizedBox(
                                                        width: 10.w,
                                                      ),
                                                      AnimatedSemiCircleProgressChart(
                                                        totalCount: graph
                                                            .graph.totalCount,
                                                        completedCount: graph
                                                            .graph
                                                            .completedCount,
                                                        color:
                                                            graph.graph.cColors,
                                                        duration:
                                                            const Duration(
                                                                seconds: 1),
                                                        subColors:
                                                            graph.graph.pColor,
                                                        title: selectedLocale
                                                                    ?.languageCode ==
                                                                'en'
                                                            ? graph.graph
                                                                .graphTitle
                                                            : graph.graph
                                                                .graphTitleAr,
                                                      ),
                                                      SizedBox(
                                                        width: 30.w,
                                                      ),
                                                      Container(
                                                        height: 52.h,
                                                        width: 3.w,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white
                                                              .withOpacity(.7),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 20.w,
                                                      ),
                                                      Expanded(
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Container(
                                                                  height: 8.h,
                                                                  width: 20.w,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: graph
                                                                        .graph
                                                                        .cColors,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 10.w,
                                                                ),
                                                                Expanded(
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Text(
                                                                        selectedLocale?.languageCode ==
                                                                                'en'
                                                                            ? graph.graph.ftitle
                                                                            : graph.graph.ftitleAr,
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                10.sp),
                                                                      ),
                                                                      Text(
                                                                        graph
                                                                            .graph
                                                                            .completedCount
                                                                            .toString(),
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                11.sp,
                                                                            fontWeight: FontWeight.w600),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 10.h,
                                                            ),
                                                            Row(
                                                              children: [
                                                                Container(
                                                                  height: 8.h,
                                                                  width: 20.w,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: graph
                                                                        .graph
                                                                        .pColor,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 10.w,
                                                                ),
                                                                Expanded(
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Text(
                                                                        selectedLocale?.languageCode ==
                                                                                'en'
                                                                            ? graph.graph.ltitle
                                                                            : graph.graph.ltitleAr,
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                10.sp),
                                                                      ),
                                                                      Text(
                                                                        '${(graph.graph.totalCount) - (graph.graph.completedCount)}',
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                11.sp,
                                                                            fontWeight: FontWeight.w600),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 5.h,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 10.w,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 15.h,
                                                ),
                                                SizedBox(
                                                  height: 30.h,
                                                  child: ListView.builder(
                                                    controller:
                                                        _centerscrollController,
                                                    itemCount:
                                                        homegraphList.length,
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 5),
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          _onItemTap(index);
                                                          // _centerItem(index);
                                                        },
                                                        child: Container(
                                                          key: tileKeys[index],
                                                          decoration:
                                                              BoxDecoration(
                                                            gradient: graph
                                                                        .graph ==
                                                                    homegraphList[
                                                                        index]
                                                                ? homegraphList[
                                                                        index]
                                                                    .tileColor
                                                                : const LinearGradient(
                                                                    colors: [
                                                                        Colors
                                                                            .white,
                                                                        Colors
                                                                            .white,
                                                                      ]),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        35),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        18,
                                                                    vertical:
                                                                        10),
                                                            child: Center(
                                                              child: Text(
                                                                selectedLocale
                                                                            ?.languageCode ==
                                                                        'en'
                                                                    ? homegraphList[
                                                                            index]
                                                                        .mTitle
                                                                    : homegraphList[
                                                                            index]
                                                                        .mTitleAr,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        10.sp,
                                                                    color: graph.graph ==
                                                                            homegraphList[
                                                                                index]
                                                                        ? Colors
                                                                            .white
                                                                        : Colors
                                                                            .black),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5.h,
                                                ),
                                                Visibility(
                                                  visible: state.when(
                                                    getCustomerSettingsState:
                                                        (settings) =>
                                                            settings?.invTrans ==
                                                                        null ||
                                                                    settings?.invTrans !=
                                                                        'Y'
                                                                ? false
                                                                : true,
                                                    customerSettingsFailedState:
                                                        () => true,
                                                  ),
                                                  child: BlocBuilder<
                                                      InverntoryTransExPandCubit,
                                                      InverntoryTransExPandState>(
                                                    builder: (context, state) {
                                                      return Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(9.0),
                                                        child: GestureDetector(
                                                          onTap: () {
                                                            context
                                                                .read<
                                                                    InverntoryTransExPandCubit>()
                                                                .expandedContainer(
                                                                    state
                                                                        .isExpanded);
                                                          },
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            decoration:
                                                                const BoxDecoration(
                                                              borderRadius: BorderRadius
                                                                  .all(Radius
                                                                      .circular(
                                                                          10)),
                                                              image:
                                                                  DecorationImage(
                                                                image: AssetImage(
                                                                    'assets/images/home/inv_bg.jpg'),
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          10,
                                                                      vertical: state
                                                                              .isExpanded
                                                                          ? 10
                                                                          : 20),
                                                              child: Column(
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsets.only(
                                                                        top: state.isExpanded
                                                                            ? 10
                                                                            : 0,
                                                                        left: 6,
                                                                        right:
                                                                            6),
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Text(
                                                                          AppLocalizations.of(context)!
                                                                              .inventory_transactions,
                                                                          style:
                                                                              countHeading(),
                                                                        ),
                                                                        Transform
                                                                            .flip(
                                                                          flipX:
                                                                              selectedLocale?.languageCode != 'en',
                                                                          child: AnimatedRotation(
                                                                              turns: state.isExpanded ? 0.25 : 0.0,
                                                                              duration: const Duration(milliseconds: 300),
                                                                              child: Icon(
                                                                                CupertinoIcons.chevron_forward,
                                                                                color: Colors.black54,
                                                                                size: 18.sp,
                                                                              )),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                      height: state
                                                                              .isExpanded
                                                                          ? 10.h
                                                                          : 0),
                                                                  AnimatedSize(
                                                                    duration: const Duration(
                                                                        milliseconds:
                                                                            300),
                                                                    curve: Curves
                                                                        .easeInOut,
                                                                    reverseDuration:
                                                                        const Duration(
                                                                            milliseconds:
                                                                                300),
                                                                    child:
                                                                        ClipRect(
                                                                      child:
                                                                          Align(
                                                                        alignment:
                                                                            Alignment.topCenter,
                                                                        heightFactor: state.isExpanded
                                                                            ? 1.0
                                                                            : 0.0,
                                                                        child:
                                                                            Visibility(
                                                                          visible:
                                                                              state.isExpanded,
                                                                          maintainState:
                                                                              true,
                                                                          child:
                                                                              PickingWidget(user: widget.user),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Visibility(
                                      visible: state.when(
                                        getCustomerSettingsState: (settings) =>
                                            settings?.custTrans == null ||
                                                    settings?.custTrans != 'Y'
                                                ? false
                                                : true,
                                        customerSettingsFailedState: () => true,
                                      ),
                                      child: CustomerTransaction(
                                          user: widget.user),
                                    ),
                                    Visibility(
                                        visible: state.when(
                                          getCustomerSettingsState:
                                              (settings) =>
                                                  settings?.salesOrd == null ||
                                                          settings?.salesOrd !=
                                                              'Y'
                                                      ? false
                                                      : true,
                                          customerSettingsFailedState: () =>
                                              true,
                                        ),
                                        child: SalesOrders(user: widget.user)),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 2,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                3,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                gradient: LinearGradient(
                                                  colors: [
                                                    const Color(0xfffcfcfc)
                                                        .withOpacity(.0),
                                                    const Color(0xffdedede),
                                                  ],
                                                )),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 7, vertical: 6),
                                            child: Text(
                                              AppLocalizations.of(context)!
                                                  .other_options,
                                              style: countHeading(),
                                            ),
                                          ),
                                          Container(
                                            height: 2,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                3,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              gradient: LinearGradient(
                                                colors: [
                                                  const Color(0xffdedede),
                                                  const Color(0xfffcfcfc)
                                                      .withOpacity(.0),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    OtherOptionsHomeWidget(
                                      user: widget.user,
                                    ),
                                    /* SizedBox(
                                                                                                                                      height: 10.h,
                                                                                                                                    ), */
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 20),
                                      child: Opacity(
                                        opacity: 0.5,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  AppLocalizations.of(context)!
                                                      .powered_by,
                                                  style: TextStyle(
                                                      fontSize: 6.sp,
                                                      color: Colors.black87),
                                                ),
                                                SvgPicture.asset(
                                                  'assets/svg/Path 838.svg',
                                                  height: 14.h,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: BlocBuilder<HomeAppBarCubit, HomeAppBarState>(
                    builder: (context, state) {
                      return AppBar(
                        backgroundColor: state.isScrolled
                            ? Colors.white
                            : Colors.transparent,
                        titleSpacing: 1,
                        elevation: 0,
                        leading: HomePopUPMenuButton(
                          user: widget.user,
                        ),
                        title: SvgPicture.asset(
                          "assets/svg/logo_ccsfa.svg",
                          height: 22.sp,
                        ),
                        actions: [
                          IconButton(
                            onPressed: () async {
                              /*   Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            NotificationScreen(user: widget.user),
                                      )); */
                              /* downloadAndInstallApk(
                                      // 'https://drive.google.com/file/d/1fC_fHR6F0RC8ixJ0yG_KNUb1WROI_wQS',
                                      // 'https://drive.google.com/uc?id=1fC_fHR6F0RC8ixJ0yG_KNUb1WROI_wQS',
                                      'https://github.com/gopikavmurali95/CustomerConnect/releases/download/Demo/Customer.Connect.Flutter.Demo.24-9-24.apk',
                                      context); */
                              /*  await installApk(
                                      '/storage/emulated/0/Customer-Connect/Updates/Update1727281927949.apk',
                                      context); */
                              if (!await Permission
                                  .requestInstallPackages.isGranted) {
                                await Permission.requestInstallPackages
                                    .request();
                              }
                              ApkInstaller.installApk(
                                  '/storage/emulated/0/Customer-Connect/Updates/Update1727281927949.apk');
                            },
                            icon:
                                SvgPicture.asset("assets/svg/notification.svg"),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Future<void> _onRefreshHome() async {
    context.read<CustomerSettingsBloc>().add(const ClearSettingsEvent());
    context
        .read<CustomerSettingsBloc>()
        .add(GetCustomerSettingsEvent(usrID: widget.user.usrId ?? '0'));
    context
        .read<PickingAndLoadingCountBloc>()
        .add(const ClearPichingAndLoadingCount());
    context
        .read<PickingAndLoadingCountBloc>()
        .add(PlCountSuccessEvent(userID: widget.user.usrId!));
    context
        .read<CustomerTransactionBloc>()
        .add(const ClearCustomerTransactionCount());
    context
        .read<CustomerTransactionBloc>()
        .add(CusTransactionSuccessEvent(userID: widget.user.usrId!));
    context.read<SalesOrderCountBloc>().add(const ClearSalesOrderCount());
    context
        .read<SalesOrderCountBloc>()
        .add(SalesOrderCountSuccessEvent(userID: widget.user.usrId!));

    context.read<ChartRoutsBloc>().add(GetchartRouteDataEvent(
        date:
            '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}'));

    context.read<ChartPlannedVisitsBloc>().add(GetChartPlannedVisitsEvent(
        date:
            '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}'));

    context.read<ChartActualVisitsBloc>().add(GetChartActualVisitsDataEvent(
        date:
            '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}'));
    context.read<ChartProductiveVisitBloc>().add(GetChartPRoductiveVisitDataEvent(
        fromDate:
            '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}',
        toDate:
            '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}'));

    context.read<ChartNonProductiveBloc>().add(GetChartNonProductiveDataEvent(
        fromDate:
            '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}',
        toDate:
            '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}'));
    context.read<SelectLanguageLocaleCubit>().changeLanguage(selectedLocale);
    await Future.delayed(const Duration(seconds: 2));
  }

  autoUpdateCheck() async {}

/* 
  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    // ignore: unused_local_variable
    UpdateResult? result0;
    // ignore: unused_local_variable
    DownloadProgress? download;
    UpdateResult? result;

    if (!mounted) return;

    if (Platform.isAndroid || Platform.isIOS) {
      var status = await Permission.storage.status;
      if (status.isDenied) {
        await Permission.storage.request();
      }
    }

    var versionUrl;
    if (Platform.isAndroid) {
      versionUrl =
          'https://run.mocky.io/v3/5e21ec41-02f2-4546-bdfb-e94b38d6889e';
    } else if (Platform.isWindows) {
      versionUrl =
          'https://storage.googleapis.com/download-dev.feedmepos.com/version_windows_sample.json';
    }

    var manager = UpdateManager(versionUrl: versionUrl);

    try {
      /*  result = UpdateResult(
          latestVersion: Version(1, 1, 1),
          downloadUrl:
              'https://github.com/gopikavmurali95/CustomerConnect/releases/tag/Demo/Customer.Connect.Flutter.Demo.24-9-24.apk',
          releaseNotes: '',
          releaseDate: ''); */
      result = await manager.fetchUpdates();
      setState(() {
        result0 = result;
      });

      if (Version.parse('1.0.0') < result?.latestVersion) {
        var controller = await result?.initializeUpdate();

        // Show initial notification with 0% progress
        showDownloadNotification(0);

        controller?.stream.listen((event) async {
          setState(() {
            if (DateTime.now().millisecondsSinceEpoch - _startTime >= 1000) {
              _startTime = DateTime.now().millisecondsSinceEpoch;
              _bytesPerSec = event.receivedBytes - _bytesPerSec;
            }
            download = event;
          });

          // Update notification with progress
          showDownloadNotification(
              (event.receivedBytes / event.totalBytes * 100).toInt());

          if (event.completed) {
            log("Downloaded completed");
            await controller.close();
            await result?.runUpdate(event.path, autoExit: true);

            // Show download completed notification
           }
        });
      }
    } on Exception catch (e) {
      log(e.toString());
    }
  }

 */
}
