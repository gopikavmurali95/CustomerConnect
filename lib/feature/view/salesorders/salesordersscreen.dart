import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/cus_ins_customers_model/cus_ins_customers_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/sales_orders_in_model/sales_orders_in_model.dart';
import 'package:customer_connect/feature/state/bloc/cussalesorders/cus_sales_orders_bloc.dart';
import 'package:customer_connect/feature/view/salesorders/widget/salesorderslistwidget.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SalesrdersScreen extends StatefulWidget {
  final LoginUserModel user;
  final CusInsCustomersModel customer;
  final TextEditingController fromdatecontroller;
  final TextEditingController todatecontroller;
  const SalesrdersScreen(
      {super.key,
      required this.user,
      required this.customer,
      required this.fromdatecontroller,
      required this.todatecontroller});

  @override
  State<SalesrdersScreen> createState() => _SalesrdersScreenState();
}

final _salesOrdersCtrl = TextEditingController();
Timer? debounce;

class _SalesrdersScreenState extends State<SalesrdersScreen> {
  @override
  void initState() {
    _salesOrdersCtrl.clear();
    context.read<CusSalesOrdersBloc>().add(const ClearsalesOrdersEvent());
    context.read<CusSalesOrdersBloc>().add(
          GetSalesOrdersEvent(
            searchQuery: '',
            salesIn: SalesOrdersInModel(
                userId: widget.user.usrId,
                cusId: widget.customer.cusId ?? '0',
                area: '',
                fromDate: widget.fromdatecontroller.text,
                toDate: widget.todatecontroller.text,
                route: '',
                subArea: ''),
          ),
        );
    super.initState();
  }

  Future<void> _onRefreshLoadin(BuildContext context) async {
    _salesOrdersCtrl.clear();

    context.read<CusSalesOrdersBloc>().add(const ClearsalesOrdersEvent());
    context.read<CusSalesOrdersBloc>().add(
          GetSalesOrdersEvent(
            searchQuery: '',
            salesIn: SalesOrdersInModel(
                userId: widget.user.usrId,
                cusId: widget.customer.cusId ?? '0',
                area: '',
                fromDate: widget.fromdatecontroller.text,
                toDate: widget.todatecontroller.text,
                route: '',
                subArea: ''),
          ),
        );
    await Future.delayed(const Duration(seconds: 2));
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
          AppLocalizations.of(context)!.sales_orders,
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
      body: RefreshIndicator(
        triggerMode: RefreshIndicatorTriggerMode.anywhere,
        color: const Color.fromARGB(255, 181, 218, 245),
        displacement: BorderSide.strokeAlignCenter,
        onRefresh: () => _onRefreshLoadin(context),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 70,
                            width: 10,
                            decoration: BoxDecoration(
                                color: const Color(0xfffee8e0),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          SizedBox(
                            width: 320.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                      style: DefaultTextStyle.of(context)
                                          .style
                                          .copyWith(
                                            fontWeight: FontWeight.normal,
                                            decoration: TextDecoration.none,
                                          ),
                                      children: [
                                        TextSpan(
                                          text: '${widget.customer.cusCode} - ',
                                          style: kfontstyle(
                                            fontSize: 12.sp,
                                            color: const Color(0xff2C6B9E),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        TextSpan(
                                          text: selectedLocale?.languageCode ==
                                                  'en'
                                              ? "${widget.customer.cusName}"
                                              : widget.customer.arcusName,
                                          style: kfontstyle(
                                              fontSize: 12.sp,
                                              color: const Color(0xff413434)),
                                        )
                                      ]),
                                ),
                               
                                RichText(
                                  text: TextSpan(
                                      style: DefaultTextStyle.of(context)
                                          .style
                                          .copyWith(
                                            fontWeight: FontWeight.normal,
                                            decoration: TextDecoration.none,
                                          ),
                                      children: [
                                        TextSpan(
                                          text: '${widget.customer.headerCode} - ',
                                         style: kfontstyle(
                                          fontSize: 11.sp,
                                          color: const Color(0xff413434)),
                                        ),
                                        TextSpan(
                                          text: selectedLocale?.languageCode == 'en'
                                            ? widget.customer.headerName ?? ""
                                            : widget.customer.arheaderName ??
                                                '',
                                          style:  kfontstyle(fontSize: 12.sp,color: const Color(0xff413434)),
                                        )
                                      ]),
                                ),
                                Text(
                                  '${widget.customer.cusType} | ${widget.customer.className} | ${selectedLocale?.languageCode == 'en' ? widget.customer.areaName : widget.customer.arAreaName} ',
                                  style: kfontstyle(
                                      fontSize: 10.sp, color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Container(
                      height: 35.h,
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
                        controller: _salesOrdersCtrl,
                        onChanged: (value) {
                          if (debounce?.isActive ?? false) debounce!.cancel();
                          debounce = Timer(
                            const Duration(
                              milliseconds: 500,
                            ),
                            () async {
                              context
                                  .read<CusSalesOrdersBloc>()
                                  .add(const ClearsalesOrdersEvent());
                              context.read<CusSalesOrdersBloc>().add(
                                    GetSalesOrdersEvent(
                                      searchQuery: value.trim(),
                                      salesIn: SalesOrdersInModel(
                                          userId: widget.user.usrId,
                                          cusId: widget.customer.cusId,
                                          area: '',
                                          fromDate:
                                              widget.fromdatecontroller.text,
                                          toDate: widget.todatecontroller.text,
                                          route: '',
                                          subArea: ''),
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 5.h),
                                Expanded(
                                  child: IconButton(
                                    onPressed: () {
                                      _salesOrdersCtrl.clear();
                                      context
                                          .read<CusSalesOrdersBloc>()
                                          .add(const ClearsalesOrdersEvent());
                                      context.read<CusSalesOrdersBloc>().add(
                                            GetSalesOrdersEvent(
                                              searchQuery: '',
                                              salesIn: SalesOrdersInModel(
                                                  userId: widget.user.usrId,
                                                  cusId: widget.customer.cusId,
                                                  area: '',
                                                  fromDate: widget
                                                      .fromdatecontroller.text,
                                                  toDate: widget
                                                      .todatecontroller.text,
                                                  route: '',
                                                  subArea: ''),
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
                            hintText: AppLocalizations.of(context)!.searchHere,
                            hintStyle: kfontstyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.normal),
                            isDense: true,
                            counterText: "",
                            contentPadding: const EdgeInsets.all(15.0),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide.none)),
                        textAlign: TextAlign.start,
                        maxLines: 1,
                        maxLength: 20,
                        // controller: _locationNameTextController,
                      )),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                    // height: MediaQuery.of(context).size.height,
                    child: SalesOrdersListingWidget(
                  user: widget.user,
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
