import 'dart:io';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/cus_ins_customers_model/cus_ins_customers_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/cusinstrnscount/cus_ins_trn_count_bloc.dart';
import 'package:customer_connect/feature/state/bloc/customersettings/customer_settings_bloc.dart';
import 'package:customer_connect/feature/view/arcollection/insightsarcollection.dart';
import 'package:customer_connect/feature/view/customerinsights/widgets/insightscustransdynamicwidget.dart';
import 'package:customer_connect/feature/view/invoices/insightsinvoicescree.dart';
import 'package:customer_connect/feature/view/salesorders/salesordersscreen.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomerTraansactionWidget extends StatefulWidget {
  final LoginUserModel user;
  final CusInsCustomersModel customer;
  final TextEditingController fromdatectrl;
  final TextEditingController todatectrl;
  const CustomerTraansactionWidget(
      {super.key,
      required this.user,
      required this.customer,
      required this.fromdatectrl,
      required this.todatectrl});

  @override
  State<CustomerTraansactionWidget> createState() =>
      _CustomerTraansactionWidgetState();
}

class _CustomerTraansactionWidgetState
    extends State<CustomerTraansactionWidget> {
  @override
  void initState() {
    context.read<CusInsTrnCountBloc>().add(GettrnCountsEvent(
        userId: widget.user.usrId ?? '',
        cusId: widget.customer.cusId ?? '',
        fDate: widget.fromdatectrl.text,
        toDate: widget.todatectrl.text));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: BlocBuilder<CusInsTrnCountBloc, CusInsTrnCountState>(
        builder: (context, state) {
          return BlocBuilder<CustomerSettingsBloc, CustomerSettingsState>(
            builder: (context, settings) {
              return Container(
                // height: MediaQuery.of(context).size.height / 3.8,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xffdeecfb),
                      Color(0xfff0e0fc),
                    ],
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            AppLocalizations.of(context)!.customerTransaction,
                            style: kfontstyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Container(
                              height: 25.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: InkWell(
                                  onTap: () {
                                    showCupertinoModalPopup(
                                      context: context,
                                      builder: (context) {
                                        return Container(
                                          color: Colors.white,
                                          height: 250,
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text(
                                                      AppLocalizations.of(
                                                              context)!
                                                          .done,
                                                      style: const TextStyle(
                                                        color: Colors.black87,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Expanded(
                                                child: CupertinoDatePicker(
                                                  initialDateTime: DateTime(
                                                    DateTime.now().year,
                                                    DateTime.now().month,
                                                    1,
                                                  ),
                                                  maximumDate: DateTime.now(),
                                                  onDateTimeChanged: (value) {
                                                    widget.fromdatectrl.text =
                                                        "${value.day}-${value.month}-${value.year}";

                                                    context
                                                        .read<
                                                            CusInsTrnCountBloc>()
                                                        .add(
                                                            GettrnCountsEvent(
                                                                userId: widget.user
                                                                        .usrId ??
                                                                    '',
                                                                cusId: widget
                                                                        .customer
                                                                        .cusId ??
                                                                    '',
                                                                fDate: widget
                                                                    .fromdatectrl
                                                                    .text,
                                                                toDate: widget
                                                                    .todatectrl
                                                                    .text));
                                                    setState(() {});
                                                  },
                                                  use24hFormat: true,
                                                  mode: CupertinoDatePickerMode
                                                      .date,
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          right: selectedLocale?.languageCode ==
                                                  "en"
                                              ? 0
                                              : 10,
                                        ),
                                        child: Text(
                                          '${AppLocalizations.of(context)!.from} ',
                                          style: kfontstyle(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '| ',
                                        style: kfontstyle(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey[300],
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          widget.fromdatectrl.text,
                                          style: kfontstyle(
                                            fontSize: 8.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: null,
                                        icon: SvgPicture.asset(
                                          'assets/svg/calendar.svg',
                                          height: 15.sp,
                                        ),
                                      ),
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
                            child: Container(
                              height: 25.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: InkWell(
                                  onTap: () {
                                    showCupertinoModalPopup(
                                      context: context,
                                      builder: (context) {
                                        return Container(
                                          color: Colors.white,
                                          height: 250,
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text(
                                                      AppLocalizations.of(
                                                              context)!
                                                          .done,
                                                      style: const TextStyle(
                                                        color: Colors.black87,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Expanded(
                                                child: CupertinoDatePicker(
                                                  initialDateTime:
                                                      DateTime.now(),
                                                  maximumDate: DateTime.now(),
                                                  onDateTimeChanged: (value) {
                                                    widget.todatectrl.text =
                                                        "${value.day}-${value.month}-${value.year}";
                                                    setState(() {});
                                                  },
                                                  use24hFormat: true,
                                                  mode: CupertinoDatePickerMode
                                                      .date,
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          right: selectedLocale?.languageCode ==
                                                  "en"
                                              ? 0
                                              : 10,
                                        ),
                                        child: Text(
                                          '${AppLocalizations.of(context)!.to}  ',
                                          style: kfontstyle(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '| ',
                                        style: kfontstyle(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey[300],
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          widget.todatectrl.text,
                                          style: kfontstyle(
                                            fontSize: 8.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: null,
                                        icon: SvgPicture.asset(
                                          'assets/svg/calendar.svg',
                                          height: 15.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      ///////////////////////////////////////////////////////////////////////////////////////
                      /*  Row(
                              children: [
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => InsightsInvoiceScreen(
                                            customer: widget.customer,
                                            user: widget.user,
                                            fromdatectrl: widget.fromdatectrl,
                                            todatectrl: widget.todatectrl,
                                          ),
                                        ),
                                      );
                                    },
                                    child: CusTransNavWIdget(
                                      title: AppLocalizations.of(context)!.invoices,
                                      imagepath: 'assets/images/invoice.png',
                                      count: state.when(
                                        getTransactionCountState: (counts) =>
                                            counts == null ? '0' : counts.invoice ?? "",
                                        getcountFailedState: () => '0',
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
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => InsightsArCollection(
                                              customer: widget.customer,
                                              user: widget.user,
                                              fromdatectrl: widget.fromdatectrl,
                                              todatectrl: widget.todatectrl,
                                            ),
                                          ));
                                    },
                                    child: CusTransNavWIdget(
                                      title: AppLocalizations.of(context)!.ar_collection,
                                      imagepath: 'assets/images/ar.png',
                                      count: state.when(
                                        getTransactionCountState: (counts) =>
                                            counts == null ? '0' : counts.ar ?? "",
                                        getcountFailedState: () => '0',
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => SalesrdersScreen(
                                              customer: widget.customer,
                                              fromdatecontroller: widget.fromdatectrl,
                                              todatecontroller: widget.todatectrl,
                                              user: widget.user,
                                            ),
                                          ));
                                    },
                                    child: CusTransNavWIdget(
                                      title: AppLocalizations.of(context)!.sales_orders,
                                      imagepath: 'assets/images/order.png',
                                      count: state.when(
                                        getTransactionCountState: (counts) =>
                                            counts == null ? '0' : counts.saleOrder ?? "",
                                        getcountFailedState: () => '0',
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
                                  child: Visibility(
                                    visible: false,
                                    child: CusTransNavWIdget(
                                      title: AppLocalizations.of(context)!.serviceJobs,
                                      imagepath: 'assets/images/sj.png',
                                      count: '6',
                                    ),
                                  ),
                                )
                              ],
                            ) */
                      InsightsCusTransDynamicGrid(items: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              Platform.isIOS
                                  ? CupertinoPageRoute(
                                      builder: (context) =>
                                          InsightsInvoiceScreen(
                                              user: widget.user,
                                              customer: widget.customer,
                                              fromdatectrl: widget.fromdatectrl,
                                              todatectrl: widget.todatectrl))
                                  : MaterialPageRoute(
                                      builder: (context) =>
                                          InsightsInvoiceScreen(
                                        customer: widget.customer,
                                        user: widget.user,
                                        fromdatectrl: widget.fromdatectrl,
                                        todatectrl: widget.todatectrl,
                                      ),
                                    ),
                            );
                          },
                          child: CusTransNavWIdget(
                            title: AppLocalizations.of(context)!.invoices,
                            imagepath: 'assets/images/invoice.png',
                            count: state.when(
                              getTransactionCountState: (counts) =>
                                  counts == null ? '0' : counts.invoice ?? "",
                              getcountFailedState: () => '0',
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                Platform.isIOS
                                    ? CupertinoPageRoute(
                                        builder: (context) =>
                                            InsightsArCollection(
                                                user: widget.user,
                                                customer: widget.customer,
                                                fromdatectrl:
                                                    widget.fromdatectrl,
                                                todatectrl: widget.todatectrl))
                                    : MaterialPageRoute(
                                        builder: (context) =>
                                            InsightsArCollection(
                                          customer: widget.customer,
                                          user: widget.user,
                                          fromdatectrl: widget.fromdatectrl,
                                          todatectrl: widget.todatectrl,
                                        ),
                                      ));
                          },
                          child: CusTransNavWIdget(
                            title: AppLocalizations.of(context)!.ar_collection,
                            imagepath: 'assets/images/ar.png',
                            count: state.when(
                              getTransactionCountState: (counts) =>
                                  counts == null ? '0' : counts.ar ?? "",
                              getcountFailedState: () => '0',
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                Platform.isIOS
                                    ? CupertinoPageRoute(
                                        builder: (context) => SalesrdersScreen(
                                            user: widget.user,
                                            customer: widget.customer,
                                            fromdatecontroller:
                                                widget.fromdatectrl,
                                            todatecontroller:
                                                widget.todatectrl))
                                    : MaterialPageRoute(
                                        builder: (context) => SalesrdersScreen(
                                          customer: widget.customer,
                                          fromdatecontroller:
                                              widget.fromdatectrl,
                                          todatecontroller: widget.todatectrl,
                                          user: widget.user,
                                        ),
                                      ));
                          },
                          child: CusTransNavWIdget(
                            title: AppLocalizations.of(context)!.sales_orders,
                            imagepath: 'assets/images/order.png',
                            count: state.when(
                              getTransactionCountState: (counts) =>
                                  counts == null ? '0' : counts.saleOrder ?? "",
                              getcountFailedState: () => '0',
                            ),
                          ),
                        ),
                        CusTransNavWIdget(
                          title: AppLocalizations.of(context)!.serviceJobs,
                          imagepath: 'assets/images/sj.png',
                          count: '6',
                        ),
                      ], visibility: [
                        settings.when(
                          getCustomerSettingsState: (settings) =>
                              settings?.cusInvoice == null ||
                                      settings?.cusInvoice != 'Y'
                                  ? false
                                  : true,
                          customerSettingsFailedState: () => true,
                        ),
                        settings.when(
                          getCustomerSettingsState: (settings) =>
                              settings?.cusArcollection == null ||
                                      settings?.cusArcollection != 'Y'
                                  ? false
                                  : true,
                          customerSettingsFailedState: () => true,
                        ),
                        settings.when(
                          getCustomerSettingsState: (settings) =>
                              settings?.cusSalesOrders == null ||
                                      settings?.cusSalesOrders != 'Y'
                                  ? false
                                  : true,
                          customerSettingsFailedState: () => true,
                        ),
                        settings.when(
                          getCustomerSettingsState: (settings) =>
                              settings?.cusServiceJobs == null ||
                                      settings?.cusServiceJobs != 'Y'
                                  ? false
                                  : true,
                          customerSettingsFailedState: () => true,
                        ),
                      ])
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class CusTransNavWIdget extends StatelessWidget {
  final String title;
  final String imagepath;
  final String count;
  const CusTransNavWIdget({
    super.key,
    required this.title,
    required this.imagepath,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 50.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  imagepath,
                  height: 13.h,
                ),
                Text(
                  count,
                  style: kfontstyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              title,
              style: kfontstyle(
                fontSize: 11.sp,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
