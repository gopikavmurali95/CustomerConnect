import 'dart:developer';
import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/domain/notification/firebasenotification.dart';
import 'package:customer_connect/feature/state/bloc/customer_transaction/customer_transaction_bloc.dart';
import 'package:customer_connect/feature/state/bloc/picking_and_loading_count/picking_and_loading_count_bloc.dart';
import 'package:customer_connect/feature/state/bloc/sales_order_count/sales_order_count_bloc.dart';
import 'package:customer_connect/feature/state/cubit/cubit/home_graph_switch_cubit.dart';
import 'package:customer_connect/feature/state/cubit/invnttransexpand/inverntory_trans_ex_pand_cubit.dart';
import 'package:customer_connect/feature/view/HomeScreen/homegraphmodel.dart';
import 'package:customer_connect/feature/view/HomeScreen/widgets/CustomerTransaction.dart';
import 'package:customer_connect/feature/view/HomeScreen/widgets/Picking.dart';
import 'package:customer_connect/feature/view/HomeScreen/widgets/SalesOrders.dart';
import 'package:customer_connect/feature/view/HomeScreen/widgets/homepopupmenu.dart';
import 'package:customer_connect/feature/view/HomeScreen/widgets/otheroptions.dart';
import 'package:customer_connect/feature/view/charttest/charttest.dart';
import 'package:customer_connect/feature/view/notification/notification.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:permission_handler/permission_handler.dart';

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

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // checkNoti();
    getnotipermission();
    super.initState();
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
    // log(widget.user.)
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          RefreshIndicator(
            triggerMode: RefreshIndicatorTriggerMode.anywhere,
            color: const Color.fromARGB(255, 181, 218, 245),
            displacement: 60,
            onRefresh: _onRefreshHome,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                children: [
                  BlocBuilder<HomeGraphSwitchCubit, HomeGraphSwitchState>(
                    builder: (context, graph) {
                      return Container(
                        width: double.infinity,
                        alignment: Alignment.bottomCenter,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/home/home_bg.png'),
                              fit: BoxFit.cover),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 60.h,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    AnimatedSemiCircleProgressChart(
                                      totalCount: graph.graph.totalCount,
                                      completedCount:
                                          graph.graph.completedCount,
                                      color: graph.graph.cColors,
                                      duration: const Duration(seconds: 1),
                                      subColors: graph.graph.pColor,
                                      title: graph.graph.graphTitle,
                                    ),
                                    SizedBox(
                                      width: 30.w,
                                    ),
                                    Container(
                                      height: 52.h,
                                      width: 3.w,
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: 8.h,
                                                width: 20.w,
                                                decoration: BoxDecoration(
                                                  color: graph.graph.cColors,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
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
                                                      graph.graph.ftitle,
                                                      style: TextStyle(
                                                          fontSize: 10.sp),
                                                    ),
                                                    Text(
                                                      graph.graph.completedCount
                                                          .toString(),
                                                      style: TextStyle(
                                                          fontSize: 10.sp),
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
                                                decoration: BoxDecoration(
                                                  color: graph.graph.pColor,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 8.w,
                                              ),
                                              Expanded(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      graph.graph.ltitle,
                                                      style: TextStyle(
                                                          fontSize: 10.sp),
                                                    ),
                                                    Text(
                                                      '${(graph.graph.totalCount) - (graph.graph.completedCount)}',
                                                      style: TextStyle(
                                                          fontSize: 10.sp),
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
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              SizedBox(
                                height: 30.h,
                                child: ListView.builder(
                                  itemCount: homegraphList.length,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 05),
                                    child: GestureDetector(
                                      onTap: () {
                                        context
                                            .read<HomeGraphSwitchCubit>()
                                            .chnageGraph(homegraphList[index]);
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            /* color: index == 0
                                                              ? const Color(0xffedbb38)
                                                              : Colors.white, */
                                            gradient: graph.graph ==
                                                    homegraphList[index]
                                                ? homegraphList[index].tileColor
                                                : const LinearGradient(colors: [
                                                    Color(0xfff0f8fe),
                                                    Color(0xfff0f8fe)
                                                  ]),
                                            borderRadius:
                                                BorderRadius.circular(35)),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 18, vertical: 10),
                                          child: Center(
                                            child: Text(
                                              homegraphList[index].mTitle,
                                              style: TextStyle(
                                                  fontSize: 10.sp,
                                                  color: graph.graph ==
                                                          homegraphList[index]
                                                      ? Colors.white
                                                      : Colors.black),
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
                              BlocBuilder<InverntoryTransExPandCubit,
                                  InverntoryTransExPandState>(
                                builder: (context, state) {
                                  return Padding(
                                    padding: const EdgeInsets.all(9.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        context
                                            .read<InverntoryTransExPandCubit>()
                                            .expandedContainer(
                                                state.isExpanded);
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/home/inv_bg.jpg'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10,
                                              vertical:
                                                  state.isExpanded ? 10 : 20),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Inventory Transactions',
                                                    style: countHeading(),
                                                  ),
                                                  AnimatedRotation(
                                                    turns: state.isExpanded
                                                        ? 0.25
                                                        : 0.0,
                                                    duration: const Duration(
                                                        milliseconds: 300),
                                                    child: Image.asset(
                                                      'assets/images/home/arrow_right.png',
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                  height: state.isExpanded
                                                      ? 10.h
                                                      : 0),
                                              AnimatedSize(
                                                duration: const Duration(
                                                    milliseconds: 300),
                                                curve: Curves.easeInOut,
                                                // vsync: NavigatorState(),
                                                child: state.isExpanded
                                                    ? PickingWidget(
                                                        user: widget.user)
                                                    : const SizedBox.shrink(),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  CustomerTransaction(user: widget.user),
                  SalesOrders(user: widget.user),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 2.5,
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xfffcfcfc),
                                  Color(0xffdedede),
                                ],
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 7),
                          child: Text(
                            "Other Options",
                            style: countHeading(),
                          ),
                        ),
                        Container(
                          height: 2.5,
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xffdedede),
                                Color(0xfffcfcfc),
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
                  SizedBox(
                    height: 10.h,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            // bottom: 0,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: Colors.transparent,
              titleSpacing: 1,
              leading: HomePopUPMenuButton(
                user: widget.user,
              ),
              title: SvgPicture.asset(
                "assets/svg/logo_ccsfa.svg",
                height: 22.sp,
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                NotificationScreen(user: widget.user),
                          ));
                    },
                    icon: SvgPicture.asset("assets/svg/notification.svg")),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _onRefreshHome() async {
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

    await Future.delayed(const Duration(seconds: 2));
  }
}
