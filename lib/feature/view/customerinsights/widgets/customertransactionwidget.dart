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
import 'package:customer_connect/l10n/app_localizations.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xffE5E7EB))),
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(20),
                //   color: Colors.white,
                //   // gradient: const LinearGradient(
                //   //   colors: [
                //   //     Color(0xffdeecfb),
                //   //     Color(0xfff0e0fc),
                //   //   ],
                //   // ),
                // ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            AppLocalizations.of(context)!.customerTransaction,
                            style: ifontstyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff101828),
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
                              height: 45.h,
                              decoration: BoxDecoration(
                                  color: const Color(0xffF9FAFB),
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: const Color(0xffE5E7EB))),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
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
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        '${AppLocalizations.of(context)!.from} ',
                                        style: kfontstyle(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              widget.fromdatectrl.text,
                                              style: kfontstyle(
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black,
                                              ),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 5.0, bottom: 5),
                                            child: SizedBox(
                                              width: 20.sp,
                                              height: 20.sp,
                                              child: IconButton(
                                                padding: EdgeInsets.zero,
                                                constraints:
                                                    const BoxConstraints
                                                        .tightFor(
                                                  width: 24,
                                                  height: 24,
                                                ),
                                                visualDensity:
                                                    VisualDensity.compact,
                                                onPressed: null,
                                                icon: SvgPicture.asset(
                                                  'assets/svg/calendar.svg',
                                                  height: 15.sp,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
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
                              height: 45.h,
                              decoration: BoxDecoration(
                                  color: const Color(0xffF9FAFB),
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: const Color(0xffE5E7EB))),
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
                                              SizedBox(
                                                height: 5.h,
                                              ),
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
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 5,
                                      ),
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
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              widget.todatectrl.text,
                                              style: kfontstyle(
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 5.0, bottom: 5),
                                            child: SizedBox(
                                              height: 20.sp,
                                              width: 20.sp,
                                              child: IconButton(
                                                padding: EdgeInsets.zero,
                                                constraints:
                                                    const BoxConstraints(
                                                  minWidth: 0,
                                                  minHeight: 0,
                                                ),
                                                visualDensity:
                                                    VisualDensity.compact,
                                                onPressed: null,
                                                icon: SvgPicture.asset(
                                                  'assets/svg/calendar.svg',
                                                  height: 15.sp,
                                                ),
                                              ),
                                            ),
                                          ),
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
                            color: const Color(0xFFEFF6FF),
                            borderColor: const Color(0xffDBEAFE),
                            countColor: const Color(0xff1F5DAB),
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
                            color: const Color(0xFFFAF5FF),
                            borderColor: const Color(0xffF3E8FF),
                            countColor: const Color(0xff6117AA),
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
                            color: const Color(0xFFF0FDF4),
                            borderColor: const Color(0xffDCFCE7),
                            countColor: const Color(0xff129D3D),
                          ),
                        ),
                        CusTransNavWIdget(
                          title: AppLocalizations.of(context)!.serviceJobs,
                          imagepath: 'assets/images/sj.png',
                          count: '6',
                          color: const Color(0xFFF0FDFA),
                          borderColor: const Color(0xffCBFBF1),
                          countColor: const Color(0xff0B9A79),
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

class CusTransNavWIdget extends StatefulWidget {
  final String title;
  final String imagepath;
  final String count;
  final Color color;
  final Color borderColor;
  final Color countColor;
  const CusTransNavWIdget({
    super.key,
    required this.title,
    required this.imagepath,
    required this.count,
    required this.color,
    required this.borderColor,
    required this.countColor,
  });

  @override
  State<CusTransNavWIdget> createState() => _CusTransNavWIdgetState();
}

class _CusTransNavWIdgetState extends State<CusTransNavWIdget> {
  //   static const List<Color> containerColors = [
  //   Color(0xFF93C5FD),
  //   Color(0xFFA5B4FC),
  //   Color(0xFFBAE6FD),
  //   Color(0xFFA5B4FC),
  // ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: widget.borderColor)),
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
                  widget.imagepath,
                  height: 22.h,
                ),
                Text(
                  widget.count,
                  style: kfontstyle(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w500,
                      color: widget.countColor),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              widget.title,
              style: ifontstyle(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff4A5565)),
            )
          ],
        ),
      ),
    );
  }
}
