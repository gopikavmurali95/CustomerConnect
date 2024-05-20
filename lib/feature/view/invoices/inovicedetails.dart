import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/invoice_header_model/invoice_header_model.dart';
import 'package:customer_connect/feature/state/bloc/Invoice_details/invoice_details_bloc.dart';
import 'package:customer_connect/feature/state/bloc/invoice_details_footer/invoice_details_footer_bloc.dart';
import 'package:customer_connect/feature/state/cubit/invdettotal/invoice_details_total_cubit.dart';
import 'package:customer_connect/feature/view/invoices/widgets/invoicedetaillist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InvoiceDetailScreen extends StatefulWidget {
  final bool isfromUser;
  final InvoiceHeaderModel invoiceheader;
  const InvoiceDetailScreen(
      {super.key, required this.isfromUser, required this.invoiceheader});

  @override
  State<InvoiceDetailScreen> createState() => _InvoiceDetailScreenState();
}

final _invoiceDetailsSearchCtrl = TextEditingController();
Timer? debounce;

class _InvoiceDetailScreenState extends State<InvoiceDetailScreen> {
  @override
  void initState() {
    _invoiceDetailsSearchCtrl.clear();
    // context.read<InvoiceDetailsTotalCubit>().getInvTotal([]);
    context.read<InvoiceDetailsBloc>().add(const ClearInvoiceDetails());
    context.read<InvoiceDetailsBloc>().add(
        GetInvoiceDetailsEvent(id: widget.invoiceheader.id!, searchQuery: ''));
    super.initState();
    context
        .read<InvoiceDetailsFooterBloc>()
        .add(const ClearInvoiceDetailsFooter());
    context
        .read<InvoiceDetailsFooterBloc>()
        .add(GetInvoiceDetailsFooterEvent(iD: widget.invoiceheader.id!));
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.invoiceheader.invoiceNo ?? '',
                            style: kfontstyle(
                              fontSize: 12.sp,
                              color: const Color(0xff2C6B9E),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                widget.invoiceheader.cusCode ?? '',
                                style: kfontstyle(
                                  fontSize: 11.sp,
                                  color: const Color(0xff2C6B9E),
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
                                  widget.invoiceheader.cusName ?? '',
                                  style: kfontstyle(
                                      fontSize: 12.sp,
                                      color: const Color(0xff413434)),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                widget.invoiceheader.cusOutCode ?? '',
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
                                  widget.invoiceheader.cusOutName ?? '',
                                  overflow: TextOverflow.ellipsis,
                                  style: kfontstyle(fontSize: 11.sp),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              // Text(
                              //   'CR | Route 101 | 16 May 2023 | 10:35',
                              //   style: kfontstyle(
                              //       fontSize: 10.sp,
                              //       color: Colors.grey),
                              // ),
                              Text(
                                widget.invoiceheader.payType ?? '',
                                style: kfontstyle(
                                    fontSize: 10.sp, color: Colors.grey),
                              ),
                              Text(
                                ' | ',
                                style: kfontstyle(
                                    fontSize: 10.sp, color: Colors.grey),
                              ),
                              Text(
                                widget.invoiceheader.rotName ?? '',
                                style: kfontstyle(
                                    fontSize: 10.sp, color: Colors.grey),
                              ),
                              Text(
                                ' | ',
                                style: kfontstyle(
                                    fontSize: 10.sp, color: Colors.grey),
                              ),
                              Text(
                                widget.invoiceheader.date ?? '',
                                style: kfontstyle(
                                    fontSize: 10.sp, color: Colors.grey),
                              ),
                              Text(
                                ' | ',
                                style: kfontstyle(
                                    fontSize: 10.sp, color: Colors.grey),
                              ),
                              Text(
                                widget.invoiceheader.time ?? '',
                                style: kfontstyle(
                                    fontSize: 10.sp, color: Colors.grey),
                              ),
                            ],
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
                              color: widget.invoiceheader.invoiceType == 'DI'
                                  ? const Color(0xffe3f7e2)
                                  : const Color(0xfff7f4e2),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              widget.invoiceheader.invoiceType ?? '',
                              style: kfontstyle(
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
                      controller: _invoiceDetailsSearchCtrl,
                      onChanged: (value) {
                        if (debounce?.isActive ?? false) debounce!.cancel();
                        debounce = Timer(
                          const Duration(
                            milliseconds: 500,
                          ),
                          () async {
                            context.read<InvoiceDetailsBloc>().add(
                                GetInvoiceDetailsEvent(
                                    id: widget.invoiceheader.id!,
                                    searchQuery: value.trim()));
                          },
                        );
                      },
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 20,
                          ),
                          hintText: "Search Items",
                          hintStyle: kfontstyle(
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
                              _invoiceDetailsSearchCtrl.clear();
                              context.read<InvoiceDetailsBloc>().add(
                                  GetInvoiceDetailsEvent(
                                      id: widget.invoiceheader.id!,
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
                        width: 20.h,
                      ),
                      Text(
                        'Uom',
                        style: boxHeading(),
                      ),
                      SizedBox(
                        width: 20.h,
                      ),
                      Text(
                        'Qty',
                        style: boxHeading(),
                      ),
                      /*  SizedBox(
                        width: 15.h,
                      ), */
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 15.h,
          ),
          const Expanded(child: InvoiceDetailListWidget())
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
                  /*BlocBuilder<InvoiceDetailsTotalCubit,
                      InvoiceDetailsTotalState>(
                    builder: (context, state) {
                      return Text(
                        state.amount,
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.w600),
                      );
                    },
                  )*/
                  Text(
                    widget.invoiceheader.grandTotal ?? '',
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
