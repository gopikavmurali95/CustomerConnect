import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/cus_ins_customers_model/cus_ins_customers_model.dart';
import 'package:customer_connect/feature/data/models/cus_ins_invoice_header_in_model/cus_ins_invoice_header_in_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/cusinsinv/cus_ins_invoice_header_bloc.dart';
import 'package:customer_connect/feature/state/cubit/cusinvtotal/cus_inv_total_counter_cubit.dart';
import 'package:customer_connect/feature/view/invoices/widgets/insightinvoicelistwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InsightsInvoiceScreen extends StatefulWidget {
  final LoginUserModel user;
  final CusInsCustomersModel customer;
  final TextEditingController fromdatectrl;
  final TextEditingController todatectrl;
  const InsightsInvoiceScreen(
      {super.key,
      required this.user,
      required this.customer,
      required this.fromdatectrl,
      required this.todatectrl});

  @override
  State<InsightsInvoiceScreen> createState() => _InsightsInvoiceScreenState();
}

final _cusInvSearchCtrl = TextEditingController();
Timer? debounce;

class _InsightsInvoiceScreenState extends State<InsightsInvoiceScreen> {
  @override
  void initState() {
    context.read<CusInsInvoiceHeaderBloc>().add(const ClearinvEvent());
    _cusInvSearchCtrl.clear();
    context.read<CusInsInvoiceHeaderBloc>().add(
          GetCusInvEvent(
            searchQuery: '',
            invIn: CusInsInvoiceHeaderInModel(
                cusId: /* widget.customer.cusId */ '1',
                userId: widget.user.usrId,
                area: '',
                fromDate: widget.fromdatectrl.text,
                toDate: widget.todatectrl.text,
                invoiceType: '',
                invoiceWith: '',
                paymentType: '',
                route: '',
                subArea: ''),
          ),
        );
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
          "Invoices ",
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
      body: BlocListener<CusInsInvoiceHeaderBloc, CusInsInvoiceHeaderState>(
        listener: (context, state) {
          state.when(
            getCusInvoiceHeaderState: (headers) {
              if (headers != null) {
                context.read<CusInvTotalCounterCubit>().getTotal(headers);
              }
            },
            getcusInvFailedState: () {},
          );
        },
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 10,
                    decoration: BoxDecoration(
                        color: const Color(0xfffee8e0),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              '${widget.customer.cusCode} - ',
                              style: kfontstyle(
                                fontSize: 12.sp,
                                color: const Color(0xff2C6B9E),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                overflow: TextOverflow.ellipsis,
                                widget.customer.cusName ?? "",
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
                              '${widget.customer.headerCode} - ',
                              style: kfontstyle(
                                  fontSize: 11.sp,
                                  color: const Color(0xff413434)),
                            ),
                            Expanded(
                              child: Text(
                                widget.customer.headerName ?? "",
                                overflow: TextOverflow.ellipsis,
                                style: kfontstyle(fontSize: 12.sp),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '${widget.customer.cusType} | ${widget.customer.className} | ${widget.customer.areaName} ',
                          style:
                              kfontstyle(fontSize: 10.sp, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
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
                          milliseconds: 500,
                        ),
                        () async {
                          context
                              .read<CusInsInvoiceHeaderBloc>()
                              .add(const ClearinvEvent());
                          context.read<CusInsInvoiceHeaderBloc>().add(
                                GetCusInvEvent(
                                  searchQuery: value.trim(),
                                  invIn: CusInsInvoiceHeaderInModel(
                                      cusId: /* widget.customer.cusId */ '1',
                                      userId: widget.user.usrId,
                                      area: '',
                                      fromDate: widget.fromdatectrl.text,
                                      toDate: widget.todatectrl.text,
                                      invoiceType: '',
                                      invoiceWith: '',
                                      paymentType: '',
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
                                  _cusInvSearchCtrl.clear();
                                  context
                                      .read<CusInsInvoiceHeaderBloc>()
                                      .add(const ClearinvEvent());
                                  context.read<CusInsInvoiceHeaderBloc>().add(
                                        GetCusInvEvent(
                                          searchQuery: '',
                                          invIn: CusInsInvoiceHeaderInModel(
                                              cusId: /* widget.customer.cusId */
                                                  '1',
                                              userId: widget.user.usrId,
                                              area: '',
                                              fromDate:
                                                  widget.fromdatectrl.text,
                                              toDate: widget.todatectrl.text,
                                              invoiceType: '',
                                              invoiceWith: '',
                                              paymentType: '',
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
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //SizedBox(width: 05,),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20, top: 10),
                  child: Text(
                    "All invoices",
                    style: countHeading(),
                  ),
                ),
                BlocBuilder<CusInsInvoiceHeaderBloc, CusInsInvoiceHeaderState>(
                  builder: (context, state) {
                    return state.when(
                      getCusInvoiceHeaderState: (headers) => headers == null
                          ? Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20, top: 10),
                              child: Text(
                                "0",
                                style: countHeading(),
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20, top: 10),
                              child: Text(
                                "${headers.length}",
                                style: countHeading(),
                              ),
                            ),
                      getcusInvFailedState: () => Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20, top: 10),
                        child: Text(
                          "0",
                          style: countHeading(),
                        ),
                      ),
                    );
                  },
                ),
                // SizedBox(width: ,),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
                child: InsightInvoiceListWidget(
              customer: widget.customer,
              user: widget.user,
            ))
          ],
        ),
      ),
      bottomNavigationBar:
          BlocBuilder<CusInsInvoiceHeaderBloc, CusInsInvoiceHeaderState>(
        builder: (context, state) {
          return state.when(
            getCusInvoiceHeaderState: (headers) => headers == null
                ? const SizedBox()
                : Container(
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                          blurRadius: 3,
                          color: Colors.black12,
                          blurStyle: BlurStyle.outer,
                          offset: Offset(3, 3))
                    ]),
                    height: 40.h,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Invoice Amount',
                            style: TextStyle(
                                fontSize: 15.sp, fontWeight: FontWeight.w400),
                          ),
                          BlocBuilder<CusInvTotalCounterCubit,
                              CusInvTotalCounterState>(
                            builder: (context, state) {
                              return Text(
                                state.amount,
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600),
                              );
                            },
                          )
                        ],
                      ),
                    ),
                  ),
            getcusInvFailedState: () => const SizedBox(),
          );
        },
      ),
    );
  }
}
