// ignore_for_file: file_names

import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/todays_delivery_in_paras/todays_delivery_in_paras.dart';
import 'package:customer_connect/feature/state/bloc/sales_order_count/sales_order_count_bloc.dart';
import 'package:customer_connect/feature/state/bloc/todays_delivery/todays_delivery_header_bloc.dart';
import 'package:customer_connect/feature/view/todaysdelivery/todaysdelivery.dart';
import 'package:customer_connect/feature/view/totalorders/totalordersheader.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants/fonts.dart';

class SalesOrders extends StatelessWidget {
  final LoginUserModel user;
  const SalesOrders({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocBuilder<SalesOrderCountBloc, SalesOrderCountState>(
        builder: (context, state) {
          return state.when(
            salesOrderCountSuccessState: (salescount) {
              if (salescount != null) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    // height: 120,
                    // height: MediaQuery.of(context).size.height/5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Color(0xffCEE5C6), Color(0xffEAF6E6)],
                        )),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Sales Orders",
                                  style: boxHeading(),
                                ),
                                //  Text("33"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 0.0, right: 0, top: 3),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => TotalOrders(
                                                    user: user,
                                                  )));
                                    },
                                    child: Container(
                                      /*  height: 70,
                                  width: 170, */
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15.0, top: 10, bottom: 5),
                                        child: Row(
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SvgPicture.asset(
                                                  "assets/svg/orders.svg",
                                                  height: 20,
                                                ),
                                              ],
                                            ),
                                            SizedBox(width: 12.w),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                    salescount.totalOrders ??
                                                        '',
                                                    style: countHeading()),
                                                Row(
                                                  children: [
                                                    Text("AED ",
                                                        style: subTextStyle()),
                                                    Text(
                                                        salescount
                                                                .totalOrdersAmount ??
                                                            '',
                                                        style: subTextStyle()),
                                                  ],
                                                ),
                                                Text(
                                                  "Total Orders",
                                                  style: statusTextStyle(),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: InkWell(
                                    onTap: () {
                                      context
                                          .read<TodaysDeliveryHeaderBloc>()
                                          .add(const ClearTodaysDelivery());
                                      context
                                          .read<TodaysDeliveryHeaderBloc>()
                                          .add(GetTodaysDeliveryEvent(
                                              todaysdelivery:
                                                  TodaysDeliveryInParas(
                                                      area: '',
                                                      customer: '',
                                                      customerOutlet: '',
                                                      fromDate: '01-01-2023',
                                                      mode: '',
                                                      route: '',
                                                      subArea: '',
                                                      toDate: '31-03-2024',
                                                      userId: user.usrId),
                                              searchQuery: ''));
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  TodaysDelivery(
                                                    user: user,
                                                  )));
                                    },
                                    child: Container(
                                      /* height: 70,
                                  width: 170, */
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15.0, top: 10, bottom: 5),
                                        child: Row(
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SvgPicture.asset(
                                                  "assets/svg/tdel.svg",
                                                  height: 20,
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: 12.w,
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                        salescount.todayDel ??
                                                            '',
                                                        style: countHeading()),
                                                    Text("/",
                                                        style: countHeading()),
                                                    Text(
                                                        salescount
                                                                .todayDelTot ??
                                                            '',
                                                        style: countHeading()),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Text("AED ",
                                                        style: subTextStyle()),
                                                    Text(
                                                        salescount
                                                                .todayDelAmount ??
                                                            '',
                                                        style: subTextStyle()),
                                                  ],
                                                ),
                                                Text(
                                                  "Today's Deliveries",
                                                  style: statusTextStyle(),
                                                )
                                              ],
                                            ),
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
                            height: 5.h,
                          )
                        ],
                      ),
                    ));
              } else {
                return ShimmerContainers(
                  height: 80.h,
                  width: double.infinity,
                );
              }
            },
            salesOrderCountFailedState: () => const SizedBox(),
          );
        },
      ),
    );
  }
}
