import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/sales_order_details_inparas_model/sales_order_details_inparas_model.dart';
import 'package:customer_connect/feature/data/models/sales_orders_model/sales_orders_model.dart';
import 'package:customer_connect/feature/state/bloc/salesorderdetails/sales_order_details_bloc.dart';
import 'package:customer_connect/feature/view/salesorders/widget/salesorderdetailslist.dart';
import 'package:customer_connect/main.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SalesOrderDetails extends StatefulWidget {
  final LoginUserModel user;
  final SalesOrdersModel salesorders;
  const SalesOrderDetails(
      {super.key, required this.user, required this.salesorders});

  @override
  State<SalesOrderDetails> createState() => _SalesOrderDetailsState();
}

final _salesOrderDetailsSearchCtrl = TextEditingController();
Timer? debounce;

class _SalesOrderDetailsState extends State<SalesOrderDetails> {
  @override
  void initState() {
    _salesOrderDetailsSearchCtrl.clear();
    context.read<SalesOrderDetailsBloc>().add(GetSalesOrderDetailsEvent(
        salesin: SalesOrderDetailsInparasModel(
            userId: widget.user.usrId,
            orderID: widget.salesorders.ordId,
            route: widget.salesorders.rotId,
            cusId: widget.salesorders.cusId),
        searchQuery: ''));
    log(jsonEncode(SalesOrderDetailsInparasModel(
      userId: widget.user.usrId,
      orderID: widget.salesorders.ordId,
      route: widget.salesorders.rotId,
      cusId: widget.salesorders.cusId,
    )));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    log(widget.salesorders.ordId ?? '');
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
          AppLocalizations.of(context)!.order_details,
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
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // SizedBox(
                    //   width: 10.w,
                    // ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /* Text(widget.salesorders.orderId ?? '',
                              style: blueTextStyle()), */
                          /* Row(
                            children: [
                              Text(
                                widget.salesorders.cusCode ?? '',
                                style: kfontstyle(
                                  fontSize: 11.sp,
                                  color: const Color(0xff2C6B9E),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                ' - ',
                                style: kfontstyle(
                                  fontSize: 11.sp,
                                  color: const Color(0xff2C6B9E),
                                ),
                              ),
                              Expanded(
                                  child: Text(
                                      overflow: TextOverflow.ellipsis,
                                      selectedLocale?.languageCode == 'en'
                                          ? widget.salesorders.cusName ?? ''
                                          : widget.salesorders.arcusName ?? '',
                                      style: subTitleTextStyle())),
                            ],
                          ), */
                          RichText(
                            text: TextSpan(
                              style: DefaultTextStyle.of(context).style,
                              children: [
                                TextSpan(
                                  text:
                                      '${widget.salesorders.cusCode ?? ''} - ',
                                  style: kfontstyle(
                                    fontSize: 11.sp,
                                    color: const Color(0xff2C6B9E),
                                    decoration:
                                        TextDecoration.none, // Add underline
                                  ),
                                ),
                                TextSpan(
                                  text: selectedLocale?.languageCode == 'en'
                                      ? widget.salesorders.cusName ?? ''
                                      : widget.salesorders.arcusName ?? '',
                                  style: subTitleTextStyle().copyWith(
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          /* Row(
                            children: [
                              Text(
                                widget.salesorders.cshCode ?? '',
                                style: kfontstyle(
                                    fontSize: 11.sp,
                                    color: const Color(0xff413434)),
                              ),
                              Text(
                                ' - ',
                                style: kfontstyle(
                                    fontSize: 11.sp,
                                    color: const Color(0xff413434)),
                              ),
                              Expanded(
                                child: Text(
                                  selectedLocale?.languageCode == 'en'
                                      ? widget.salesorders.cshName ?? ''
                                      : widget.salesorders.arcshName ?? '',
                                  overflow: TextOverflow.ellipsis,
                                  style: kfontstyle(fontSize: 12.sp),
                                ),
                              ),
                            ],
                          ), */
                          /* SizedBox(
                            width: 300.w,
                            child: RichText(
                              text: TextSpan(
                                  style: DefaultTextStyle.of(context)
                                      .style
                                      .copyWith(
                                        fontWeight: FontWeight.normal,
                                        decoration: TextDecoration.none,
                                      ),
                                  children: [
                                    TextSpan(
                                      text: ' ${widget.salesorders.cusCode} - ',
                                      style: kfontstyle(
                                        fontSize: 11.sp,
                                        color: const Color(0xff2C6B9E),
                                      ),
                                    ),
                                    TextSpan(
                                        text: selectedLocale?.languageCode ==
                                                'en'
                                            ? widget.salesorders.cusName ?? ''
                                            : widget.salesorders.arcusName ??
                                                '',
                                        style: subTitleTextStyle())
                                  ]),
                            ),
                          ), */
                          RichText(
                            text: TextSpan(
                                style:
                                    DefaultTextStyle.of(context).style.copyWith(
                                          fontWeight: FontWeight.normal,
                                          decoration: TextDecoration.none,
                                        ),
                                children: [
                                  TextSpan(
                                    text: '${widget.salesorders.cshCode} - ',
                                    style: kfontstyle(
                                        fontSize: 11.sp,
                                        color: const Color(0xff413434)),
                                  ),
                                  TextSpan(
                                    text: selectedLocale?.languageCode == 'en'
                                        ? widget.salesorders.cshName ?? ''
                                        : widget.salesorders.arcshName ?? '',
                                    style: kfontstyle(
                                        fontSize: 12.sp,
                                        color: const Color(0xff413434)),
                                  )
                                ]),
                          ),
                          Text(
                            '${widget.salesorders.rotName} | ${widget.salesorders.date} | ${widget.salesorders.time}',
                            style:
                                kfontstyle(fontSize: 10.sp, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 14.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                          color: widget.salesorders.status == 'C'
                              ? const Color(0xfff7f4e2)
                              : const Color(0xffe3f7e2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          widget.salesorders.status ?? '',
                          style: kfontstyle(
                              fontSize: 10.sp, color: const Color(0xff413434)),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15.h,
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
                      controller: _salesOrderDetailsSearchCtrl,
                      onChanged: (value) {
                        if (debounce?.isActive ?? false) debounce!.cancel();
                        debounce = Timer(
                          const Duration(
                            milliseconds: 500,
                          ),
                          () async {
                            context.read<SalesOrderDetailsBloc>().add(
                                GetSalesOrderDetailsEvent(
                                    salesin: SalesOrderDetailsInparasModel(
                                        userId: widget.user.usrId,
                                        orderID: widget.salesorders.ordId,
                                        route: widget.salesorders.rotId,
                                        cusId: widget.salesorders.cusId),
                                    searchQuery: value.trim()));
                          },
                        );
                      },
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 20,
                          ),
                          hintText: AppLocalizations.of(context)!.searchItems,
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
                              _salesOrderDetailsSearchCtrl.clear();
                              context.read<SalesOrderDetailsBloc>().add(
                                  GetSalesOrderDetailsEvent(
                                      salesin: SalesOrderDetailsInparasModel(
                                          userId: widget.user.usrId,
                                          orderID: widget.salesorders.ordId,
                                          route: widget.salesorders.rotId,
                                          cusId: widget.salesorders.cusId),
                                      searchQuery: ''));
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
                  height: 15.h,
                ),
              ],
            ),
          ),
          Container(
            height: 30.h,
            width: double.infinity,
            color: const Color(0xfff5f5f5),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of(context)!.items,
                    style: boxHeading(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 20.h,
                      ),
                      Text(
                        AppLocalizations.of(context)!.uom,
                        style: boxHeading(),
                      ),
                      SizedBox(
                        width: 20.h,
                      ),
                      Text(
                        AppLocalizations.of(context)!.qty,
                        style: boxHeading(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 15.h,
          ),
          Expanded(
              child: SalesOrderDetailsList(
                  salesorders: widget.salesorders, user: widget.user)),
        ],
      ),
      bottomNavigationBar: SizedBox(
        //height: MediaQuery.of(context).size.width / 1.8,
        height: 40.h,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppLocalizations.of(context)!.total_amount,
                  style: bottomTextStyle()),
              Text(widget.salesorders.grandTotal ?? '',
                  style: bottomTotalAmountStyle())
            ],
          ),
        ),
      ),
    );
  }
}
