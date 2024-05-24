import 'dart:developer';
import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/special_price_header_model/special_price_header_model.dart';
import 'package:customer_connect/feature/domain/notification/firebasenotification.dart';
import 'package:customer_connect/feature/state/bloc/customer_transaction/customer_transaction_bloc.dart';
import 'package:customer_connect/feature/state/bloc/picking_and_loading_count/picking_and_loading_count_bloc.dart';
import 'package:customer_connect/feature/state/bloc/sales_order_count/sales_order_count_bloc.dart';
import 'package:customer_connect/feature/state/bloc/special_price_header/special_price_header_bloc.dart';
import 'package:customer_connect/feature/view/HomeScreen/widgets/CustomerTransaction.dart';
import 'package:customer_connect/feature/view/HomeScreen/widgets/Picking.dart';
import 'package:customer_connect/feature/view/HomeScreen/widgets/SalesOrders.dart';
// import 'package:customer_connect/feature/view/HomeScreen/widgets/approvaltiles.dart';
import 'package:customer_connect/feature/view/HomeScreen/widgets/homepopupmenu.dart';
import 'package:customer_connect/feature/view/approvals/approvalscreen.dart';
import 'package:customer_connect/feature/view/notification/notification.dart';
import 'package:customer_connect/feature/view/promotions/promotionsheader.dart';
import 'package:customer_connect/feature/view/customerinsights/customersscreen.dart';
import 'package:customer_connect/feature/view/outstanding/outstandingheader.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:permission_handler/permission_handler.dart';

import '../SpecialPricing/specialpricingheader.dart';

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
      appBar: AppBar(
        titleSpacing: 1,
        leading: /* SvgPicture.asset(
          "assets/svg/homemenu.svg",
          fit: BoxFit.scaleDown,
          height: 20,
        ) */
            HomePopUPMenuButton(
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
                    builder: (context) => NotificationScreen(
                      user: widget.user,
                    ),
                  ),
                );
              },
              icon: SvgPicture.asset("assets/svg/notification.svg")),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: RefreshIndicator(
        triggerMode: RefreshIndicatorTriggerMode.anywhere,
        color: const Color.fromARGB(255, 181, 218, 245),
        displacement: BorderSide.strokeAlignCenter,
        onRefresh: _onRefreshHome,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              PickingWidget(
                user: widget.user,
              ),
              CustomerTransaction(
                user: widget.user,
              ),
              SalesOrders(
                user: widget.user,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, bottom: 10, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Other Options",
                      style: boxHeading(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 5, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 2,
                      fit: FlexFit.tight,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CustomersScren(
                                  user: widget.user,
                                ),
                              ));
                        },
                        child: Container(
                          //height: 50,
                          // width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade300,
                                    spreadRadius: 1,
                                    blurRadius: 1)
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/images/customer.png",
                                  height: 15.h,
                                ),
                                // SvgPicture.asset("assets/images/os.png",height: 20,
                                //   fit: BoxFit.scaleDown,),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Text(
                                  "Customer Insights",
                                  style: headTextStyle(),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Flexible(
                      flex: 2,
                      fit: FlexFit.tight,
                      child: InkWell(
                        onTap: () {
                          context
                              .read<SpecialPriceHeaderBloc>()
                              .add(const ClearSpecialPriceEvent());
                          context.read<SpecialPriceHeaderBloc>().add(
                              GetSpecialPriceHeaderEvent(
                                  spPriceInparas: SpecialPriceHeaderModel(
                                      area: '',
                                      customer: '',
                                      fromDate:
                                          '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                                      mode: '',
                                      outlet: '',
                                      route: '',
                                      subArea: '',
                                      toDate:
                                          '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                                      userId: widget.user.usrId),
                                  searchQuery: ''));
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SpecialPricingHeader(
                                        user: widget.user,
                                      )));
                        },
                        child: Container(
                          // height: 50,
                          // width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade300,
                                    spreadRadius: 1,
                                    blurRadius: 1)
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/images/file.png",
                                  height: 15.h,
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Text(
                                  "Special Pricing",
                                  style: headTextStyle(),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 5, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PromotionHeader(
                                        user: widget.user,
                                      )));
                        },
                        child: Container(
                          // height: 50,
                          // width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade300,
                                    spreadRadius: 1,
                                    blurRadius: 1)
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/images/pro.png",
                                  height: 15.h,
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Text(
                                  "Promotions",
                                  style: headTextStyle(),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OutstandingHeaderScreen(
                                isfromUser: false,
                                user: widget.user,
                              ),
                            ),
                          );
                        },
                        child: Container(
                          //height: 50,
                          // width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade300,
                                    spreadRadius: 1,
                                    blurRadius: 1)
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/images/os.png",
                                  height: 15.h,
                                ),
                                // fit: BoxFit.scaleDown,),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Text(
                                  "Outstanding",
                                  style: headTextStyle(),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 5, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ApprovalScreen(
                                        user: widget.user,
                                      )));
                        },
                        child: Container(
                          // height: 50,
                          // width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade300,
                                    spreadRadius: 1,
                                    blurRadius: 1)
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/images/apvl.png",
                                  height: 15.h,
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Text(
                                  "Approvals",
                                  style: headTextStyle(),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          //height: 50,
                          // width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade300,
                                    spreadRadius: 1,
                                    blurRadius: 1)
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/images/ts.png",
                                  height: 15.h,
                                ),
                                // fit: BoxFit.scaleDown,),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Text(
                                  "Track Salesman",
                                  style: headTextStyle(),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
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
