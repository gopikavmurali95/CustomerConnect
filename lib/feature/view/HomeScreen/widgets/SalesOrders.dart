// ignore_for_file: file_names

import 'dart:io';

import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/todays_delivery_in_paras/todays_delivery_in_paras.dart';
import 'package:customer_connect/feature/data/models/total_orders_inparas/total_orders_inparas.dart';
import 'package:customer_connect/feature/state/bloc/customersettings/customer_settings_bloc.dart';
import 'package:customer_connect/feature/state/bloc/sales_order_count/sales_order_count_bloc.dart';
import 'package:customer_connect/feature/state/bloc/todays_delivery/todays_delivery_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/total_orders_header/total_orders_header_bloc.dart';
import 'package:customer_connect/feature/view/todaysdelivery/todaysdelivery.dart';
import 'package:customer_connect/feature/view/totalorders/totalordersheader.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/l10n/app_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants/fonts.dart';

class SalesOrders extends StatefulWidget {
  final LoginUserModel user;
  const SalesOrders({super.key, required this.user});

  @override
  State<SalesOrders> createState() => _SalesOrdersState();
}

class _SalesOrdersState extends State<SalesOrders> {
  @override
  void initState() {
    context.read<TotalOrdersHeaderBloc>().add(const TotalOrdersClearEvent());
    context.read<TotalOrdersHeaderBloc>().add(GetTotalOrdersEvent(
        ordersin: TotalOrdersInparas(
            area: '',
            customer: '',
            fromDate:
                '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
            outlet: '',
            route: '',
            subArea: '',
            toDate:
                '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
            userId: widget.user.usrId),
        searchQuery: ''));

    context.read<TodaysDeliveryHeaderBloc>().add(const ClearTodaysDelivery());
    context.read<TodaysDeliveryHeaderBloc>().add(
          GetTodaysDeliveryEvent(
            todaysdelivery: TodaysDeliveryInParas(
                area: '',
                customer: '',
                customerOutlet: '',
                fromDate:
                    '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                mode: '',
                route: '',
                subArea: '',
                toDate:
                    '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                userId: widget.user.usrId),
            searchQuery: '',
          ),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 1.5),
      child: BlocBuilder<SalesOrderCountBloc, SalesOrderCountState>(
        builder: (context, state) {
          return state.when(
            salesOrderCountSuccessState: (salescount) {
              if (salescount != null) {
                return BlocBuilder<CustomerSettingsBloc, CustomerSettingsState>(
                  builder: (context, settings) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.white,
                          border: Border.all(
                            color: const Color(0xFFE2E8F0),
                            width: 1,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x1A000000),
                              offset: Offset(0, 1),
                              blurRadius: 2,
                              spreadRadius: -1,
                            ),
                            BoxShadow(
                              color: Color(0x1A000000),
                              offset: Offset(0, 1),
                              blurRadius: 3,
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 10),
                              child: Row(
                                spacing: 12,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: const Color(0XFFFFE2C7),
                                          width: 1),
                                      color: const Color(0XFFFEEEE5),
                                    ),
                                    child: SvgPicture.asset(
                                        'assets/svg/Package.svg'),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        AppLocalizations.of(context)!
                                            .sales_orders,
                                        style: pfontstyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                            letterSpacing: 0,
                                            color: const Color(0XFF0F172B)),
                                      ),
                                      Text(
                                        'Delivery tracking',
                                        style: ifontstyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            letterSpacing: 0,
                                            color: const Color(0XFF62748E)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const Divider(
                              color: Color(0XFFF1F5F9),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 12, right: 12, top: 10, bottom: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Visibility(
                                    visible: settings.when(
                                      getCustomerSettingsState: (settings) =>
                                          settings?.totalorders == null ||
                                                  settings?.totalorders != 'Y'
                                              ? false
                                              : true,
                                      customerSettingsFailedState: () => true,
                                    ),
                                    child: Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              Platform.isIOS
                                                  ? CupertinoPageRoute(
                                                      builder: (context) =>
                                                          TotalOrders(
                                                              user:
                                                                  widget.user))
                                                  : MaterialPageRoute(
                                                      builder: (context) =>
                                                          TotalOrders(
                                                            user: widget.user,
                                                          )));
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                color: const Color(0x80FFD6A8),
                                                width: 1,
                                              ),
                                              gradient: const LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  stops: [
                                                    0,
                                                    0.5,
                                                    1
                                                  ],
                                                  colors: [
                                                    Color(0XFFFFF7ED),
                                                    Color(0XFFFFFFFF),
                                                    Color.fromRGBO(
                                                        255, 247, 237, 0.3)
                                                  ])),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              left: 10,
                                              top: 10,
                                              bottom: 10, /* right: 15 */
                                            ),
                                            child: Row(
                                              children: [
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                        salescount
                                                                .totalOrders ??
                                                            '',
                                                        style: ifontstyle(
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            fontSize: 20,
                                                            color: const Color(
                                                                0XFF0F172B),
                                                            letterSpacing: 0)),
                                                    Text("Total Orders ",
                                                        style: ifontstyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 12,
                                                          letterSpacing: 0,
                                                          color: const Color(
                                                              0XFF45556C),
                                                        )),
                                                    BlocBuilder<
                                                        TotalOrdersHeaderBloc,
                                                        TotalOrdersHeaderState>(
                                                      builder:
                                                          (context, state) {
                                                        return state.when(
                                                          getTotalOrderState:
                                                              (count) =>
                                                                  count != null
                                                                      ? Text(
                                                                          "${count.length} items",
                                                                          style: ifontstyle(
                                                                              fontWeight: FontWeight.w500,
                                                                              fontSize: 12,
                                                                              letterSpacing: 0,
                                                                              color: const Color(0XFFCA3500)),
                                                                        )
                                                                      : Text(
                                                                          "0 items",
                                                                          style: ifontstyle(
                                                                              fontWeight: FontWeight.w500,
                                                                              fontSize: 12,
                                                                              letterSpacing: 0,
                                                                              color: const Color(0XFFCA3500)),
                                                                        ),
                                                          totalOrdersFailedState:
                                                              () => Text(
                                                            "0 items",
                                                            style: ifontstyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 12,
                                                                letterSpacing:
                                                                    0,
                                                                color: const Color(
                                                                    0XFFCA3500)),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Visibility(
                                    visible: settings.when(
                                      getCustomerSettingsState: (settings) =>
                                          settings?.totalorders == null ||
                                                  settings?.totalorders !=
                                                      'Y' ||
                                                  settings?.todaysdelivery ==
                                                      null ||
                                                  settings?.todaysdelivery !=
                                                      'Y'
                                              ? false
                                              : true,
                                      customerSettingsFailedState: () => true,
                                    ),
                                    child: SizedBox(
                                      width: 12.w,
                                    ),
                                  ),
                                  Visibility(
                                    visible: settings.when(
                                      getCustomerSettingsState: (settings) =>
                                          settings?.todaysdelivery == null ||
                                                  settings?.todaysdelivery !=
                                                      'Y'
                                              ? false
                                              : true,
                                      customerSettingsFailedState: () => true,
                                    ),
                                    child: Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              Platform.isIOS
                                                  ? CupertinoPageRoute(
                                                      builder: (context) =>
                                                          TodaysDelivery(
                                                              user:
                                                                  widget.user))
                                                  : MaterialPageRoute(
                                                      builder: (context) =>
                                                          TodaysDelivery(
                                                            user: widget.user,
                                                          )));
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                color: const Color(0x80E9D4FF),
                                                width: 1,
                                              ),
                                              gradient: const LinearGradient(
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight,
                                                stops: [
                                                  0,
                                                  0.5,
                                                  1,
                                                ],
                                                colors: [
                                                  Color(0xFFFAF5FF),
                                                  Color(0xFFFFFFFF),
                                                  Color.fromRGBO(
                                                      250, 245, 255, 0.3),
                                                ],
                                              )),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              left: 10,
                                              top: 10,
                                              bottom: 10, /* right: 15 */
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                    "${salescount.todayDel ?? ''}/${salescount.todayDelTot ?? ''}",
                                                    style: ifontstyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 20,
                                                      color: const Color(
                                                          0XFF0F172B),
                                                      letterSpacing: 0,
                                                    )),
                                                Text("Deliveries",
                                                    style: ifontstyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 12,
                                                      color: const Color(
                                                          0XFF45556C),
                                                      letterSpacing: 0,
                                                    )),
                                                Builder(
                                                  builder: (context) {
                                                    final delivered =
                                                        int.tryParse(salescount
                                                                    .todayDel ??
                                                                '') ??
                                                            0;
                                                    final total = int.tryParse(
                                                            salescount
                                                                    .todayDelTot ??
                                                                '') ??
                                                        0;
                                                    final pending =
                                                        total > delivered
                                                            ? total - delivered
                                                            : 0;

                                                    return Text(
                                                      '$pending pending',
                                                      style: ifontstyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 12,
                                                        color: const Color(
                                                            0XFF8200DB),
                                                        letterSpacing: 0,
                                                      ),
                                                    );
                                                  },
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 12, right: 12, bottom: 12),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0XFFF8FAFC),
                                  border: Border.all(
                                    color: const Color(0XFFE2E8F0),
                                    width: 1,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Builder(
                                      builder: (context) {
                                        final completed = int.tryParse(
                                                salescount.todayDel ?? '') ??
                                            0;
                                        final total = int.tryParse(
                                                salescount.todayDelTot ?? '') ??
                                            0;
                                        final inProgress = total > completed
                                            ? total - completed
                                            : 0;
                                        final progress = total > 0
                                            ? (completed / total)
                                                .clamp(0.0, 1.0)
                                            : 0.0;
                                        final percent =
                                            (progress * 100).round();

                                        return Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          spacing: 5,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Delivery Progress',
                                                  style: ifontstyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12,
                                                    color:
                                                        const Color(0XFF45556C),
                                                  ),
                                                ),
                                                Text(
                                                  '$percent%',
                                                  style: ifontstyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 12,
                                                    color:
                                                        const Color(0XFF0F172B),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(999),
                                              child: Container(
                                                height: 10,
                                                width: double.infinity,
                                                color: const Color(0XFFE2E8F0),
                                                child: FractionallySizedBox(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  widthFactor: progress,
                                                  child: Container(
                                                    decoration:
                                                        const BoxDecoration(
                                                      gradient: LinearGradient(
                                                        colors: [
                                                          Color(0xFFAD46FF),
                                                          Color(0XFF9810FA),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              '$completed completed • $inProgress in progress',
                                              style: ifontstyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 10,
                                                color: const Color(0XFF62748E),
                                                letterSpacing: 0,
                                              ),
                                            )
                                          ],
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ));
                  },
                );
              } else {
                return ShimmerContainers(
                  height: 80.h,
                  width: double.infinity,
                );
              }
            },
            salesOrderCountFailedState: () => Container(
                width: MediaQuery.of(context).size.width,
                // height: 120,
                // height: MediaQuery.of(context).size.height/5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/home/sal_bg.jpg'),
                    fit: BoxFit.cover,
                  ),
                  /*  gradient: const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Color(0xffCEE5C6), Color(0xffEAF6E6)],
                        ) */
                ),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                      border: Border.all(
                        color: const Color(0xFFE2E8F0),
                        width: 1,
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x1A000000),
                          offset: Offset(0, 1),
                          blurRadius: 2,
                          spreadRadius: -1,
                        ),
                        BoxShadow(
                          color: Color(0x1A000000),
                          offset: Offset(0, 1),
                          blurRadius: 3,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Row(
                            spacing: 10,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: const Color(0XFFFFE2C7), width: 1),
                                  color: const Color(0XFFFEEEE5),
                                ),
                                child:
                                    SvgPicture.asset('assets/svg/Package.svg'),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    AppLocalizations.of(context)!.sales_orders,
                                    style: pfontstyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        letterSpacing: 0,
                                        color: const Color(0XFF0F172B)),
                                  ),
                                  Text(
                                    'Delivery tracking',
                                    style: ifontstyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        letterSpacing: 0,
                                        color: const Color(0XFF62748E)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          color: Color(0XFFF1F5F9),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, top: 12, bottom: 8),
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
                                        Platform.isIOS
                                            ? CupertinoPageRoute(
                                                builder: (context) =>
                                                    TotalOrders(
                                                        user: widget.user))
                                            : MaterialPageRoute(
                                                builder: (context) =>
                                                    TotalOrders(
                                                      user: widget.user,
                                                    )));
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: const Color(0x80FFD6A8),
                                          width: 1,
                                        ),
                                        gradient: const LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            stops: [
                                              0,
                                              0.5,
                                              1
                                            ],
                                            colors: [
                                              Color(0XFFFFF7ED),
                                              Color(0XFFFFFFFF),
                                              Color.fromRGBO(255, 247, 237, 0.3)
                                            ])),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 10,
                                        top: 10,
                                        bottom: 10, /* right: 15 */
                                      ),
                                      child: Row(
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('0',
                                                  style: ifontstyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 20,
                                                      color: const Color(
                                                          0XFF0F172B),
                                                      letterSpacing: 0)),
                                              Text("Total Orders ",
                                                  style: ifontstyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12,
                                                    letterSpacing: 0,
                                                    color:
                                                        const Color(0XFF45556C),
                                                  )),
                                              Text(
                                                "0 items",
                                                style: ifontstyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12,
                                                    letterSpacing: 0,
                                                    color: const Color(
                                                        0XFFCA3500)),
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
                                    Navigator.push(
                                        context,
                                        Platform.isIOS
                                            ? CupertinoPageRoute(
                                                builder: (context) =>
                                                    TodaysDelivery(
                                                        user: widget.user))
                                            : MaterialPageRoute(
                                                builder: (context) =>
                                                    TodaysDelivery(
                                                      user: widget.user,
                                                    )));
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: const Color(0x80E9D4FF),
                                          width: 1,
                                        ),
                                        gradient: const LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          stops: [
                                            0,
                                            0.5,
                                            1,
                                          ],
                                          colors: [
                                            Color(0xFFFAF5FF),
                                            Color(0xFFFFFFFF),
                                            Color.fromRGBO(250, 245, 255, 0.3),
                                          ],
                                        )),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 10,
                                        top: 10,
                                        bottom: 10, /* right: 15 */
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("0/0",
                                              style: ifontstyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 20,
                                                color: const Color(0XFF0F172B),
                                                letterSpacing: 0,
                                              )),
                                          Text("Deliveries",
                                              style: ifontstyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                color: const Color(0XFF45556C),
                                                letterSpacing: 0,
                                              )),
                                          Builder(
                                            builder: (context) {
                                              const delivered = 0;
                                              const total = 0;
                                              const pending = total > delivered
                                                  ? total - delivered
                                                  : 0;

                                              return Text(
                                                '$pending pending',
                                                style: ifontstyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12,
                                                  color:
                                                      const Color(0XFF8200DB),
                                                  letterSpacing: 0,
                                                ),
                                              );
                                            },
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
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, bottom: 12),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0XFFF8FAFC),
                              border: Border.all(
                                color: const Color(0XFFE2E8F0),
                                width: 1,
                              ),
                            ),
                            child: Column(
                              children: [
                                Builder(
                                  builder: (context) {
                                    const completed = /* int.tryParse(
                                                salescount.todayDel ?? '') ??
                                            0 */
                                        4;
                                    const total = /* int.tryParse(
                                                salescount.todayDelTot ?? '') ??
                                            0 */
                                        20;
                                    const inProgress = total > completed
                                        ? total - completed
                                        : 0;
                                    final progress = total > 0
                                        ? (completed / total).clamp(0.0, 1.0)
                                        : 0.0;
                                    final percent = (progress * 100).round();

                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      spacing: 5,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Delivery Progress',
                                              style: ifontstyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                color: const Color(0XFF45556C),
                                              ),
                                            ),
                                            Text(
                                              '$percent%',
                                              style: ifontstyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 12,
                                                color: const Color(0XFF0F172B),
                                              ),
                                            ),
                                          ],
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(999),
                                          child: Container(
                                            height: 10,
                                            width: double.infinity,
                                            color: const Color(0XFFE2E8F0),
                                            child: FractionallySizedBox(
                                              alignment: Alignment.centerLeft,
                                              widthFactor: progress,
                                              child: Container(
                                                decoration: const BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Color(0xFFAD46FF),
                                                      Color(0XFF9810FA),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '$completed completed • $inProgress in progress',
                                          style: ifontstyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: const Color(0XFF62748E),
                                            letterSpacing: 0,
                                          ),
                                        )
                                      ],
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ))),
          );
        },
      ),
    );
  }
}
