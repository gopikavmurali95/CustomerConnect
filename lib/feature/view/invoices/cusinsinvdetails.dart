import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/cus_ins_customers_model/cus_ins_customers_model.dart';
import 'package:customer_connect/feature/data/models/cus_ins_invoice_model/cus_ins_invoice_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/cusinvdetail/cus_inv_detail_bloc_bloc.dart';
import 'package:customer_connect/feature/view/invoices/widgets/cusinsdetaillist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CusInsInvoiceDetailScreen extends StatefulWidget {
  final LoginUserModel user;
  final CusInsCustomersModel customer;
  final CusInsInvoiceModel invoice;
  const CusInsInvoiceDetailScreen({
    super.key,
    required this.user,
    required this.invoice,
    required this.customer,
  });

  @override
  State<CusInsInvoiceDetailScreen> createState() =>
      _CusInsInvoiceDetailScreenState();
}

final _cusInvSearchCtrl = TextEditingController();
Timer? debounce;

class _CusInsInvoiceDetailScreenState extends State<CusInsInvoiceDetailScreen> {
  @override
  void initState() {
    _cusInvSearchCtrl.clear();
    context.read<CusInvDetailBlocBloc>().add(const ClearinvDetails());
    context.read<CusInvDetailBlocBloc>().add(
        GetCusInvDetailsEvent(invId: widget.invoice.id ?? '', searchQuery: ''));
    super.initState();
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
          "Invoice Detail",
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
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'M076876',
                            style: TextStyle(
                              fontSize: 13.sp,
                              color: const Color(0xff2C6B9E),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '${widget.customer.cusCode} ',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: const Color(0xff2C6B9E),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  overflow: TextOverflow.ellipsis,
                                  widget.customer.cusName ?? '',
                                  style: TextStyle(
                                      fontSize: 13.sp,
                                      color: const Color(0xff413434)),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '${widget.customer.headerCode} - ',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xff413434)),
                              ),
                              Expanded(
                                child: Text(
                                  widget.customer.headerName ?? '',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontSize: 13.sp),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '${widget.invoice.invoiceType} | ${widget.customer.rotName} | ${widget.invoice.date} | ${widget.invoice.time}',
                            style:
                                TextStyle(fontSize: 10.sp, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          height: 14.h,
                          width: 30.w,
                          decoration: BoxDecoration(
                              color: const Color(0xffe4f7e2),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              widget.invoice.status ?? '',
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  color: const Color(0xff413434)),
                            ),
                          ),
                        )
                      ],
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
                      controller: _cusInvSearchCtrl,
                      onChanged: (value) {
                        if (debounce?.isActive ?? false) debounce!.cancel();
                        debounce = Timer(
                          const Duration(
                            milliseconds: 200,
                          ),
                          () async {
                            context.read<CusInvDetailBlocBloc>().add(
                                GetCusInvDetailsEvent(
                                    invId: widget.invoice.id ?? '',
                                    searchQuery: value.trim()));
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
                                    _cusInvSearchCtrl.clear();
                                    context.read<CusInvDetailBlocBloc>().add(
                                        GetCusInvDetailsEvent(
                                            invId: widget.invoice.id ?? '',
                                            searchQuery: ''));
                                  },
                                  icon: Icon(
                                    Icons.close,
                                    size: 13.sp,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          hintText: "Search Invoices",
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
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'items',
                    style: boxHeading(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Type',
                        style: boxHeading(),
                      ),
                      SizedBox(
                        width: 15.h,
                      ),
                      Text(
                        'Uom',
                        style: boxHeading(),
                      ),
                      SizedBox(
                        width: 15.h,
                      ),
                      Text(
                        'Qty',
                        style: boxHeading(),
                      ),
                      SizedBox(
                        width: 15.h,
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
          const Expanded(child: CusInsInvoiceDetailListWidget())
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: /* MediaQuery.of(context).size.width / 1.8 */ 30.h,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /*  Divider(
              color: Colors.grey[300],
            ), */
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Amount',
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'AED ${widget.invoice.grandTotal}',
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
