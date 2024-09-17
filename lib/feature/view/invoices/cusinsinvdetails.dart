import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/cus_ins_customers_model/cus_ins_customers_model.dart';
import 'package:customer_connect/feature/data/models/cus_ins_invoice_model/cus_ins_invoice_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/cusinvdetail/cus_inv_detail_bloc_bloc.dart';
import 'package:customer_connect/feature/view/invoices/widgets/cusinsdetaillist.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
        titleSpacing: 0,
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
          AppLocalizations.of(context)!.invoice_details,
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
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.invoice.invoiceNo ?? '',
                              style: blueTextStyle()),
                          /* Row(
                            children: [
                              Text(
                                '${widget.customer.cusCode} ',
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  color: const Color(0xff2C6B9E),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                    overflow: TextOverflow.ellipsis,
                                    selectedLocale?.languageCode == 'en'
                                        ? widget.customer.cusName ?? ''
                                        : widget.customer.arcusName ?? '',
                                    style: subTitleTextStyle()),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text('${widget.customer.headerCode} - ',
                                  style: subTitleTextStyle()),
                              Expanded(
                                child: Text(
                                    selectedLocale?.languageCode == 'en'
                                        ? widget.customer.headerName ?? ''
                                        : widget.customer.arheaderName ?? '',
                                    overflow: TextOverflow.ellipsis,
                                    style: subTitleTextStyle()),
                              ),
                            ],
                          ), */
                          SizedBox(
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
                                      text: '${widget.customer.cusCode} - ',
                                      style: kfontstyle(
                                        fontSize: 12.sp,
                                        color: const Color(0xff2C6B9E),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    TextSpan(
                                      text: selectedLocale?.languageCode == 'en'
                                          ? widget.customer.cusName ?? ""
                                          : widget.customer.arcusName ?? '',
                                      style: kfontstyle(
                                          fontSize: 12.sp,
                                          color: const Color(0xff413434)),
                                    )
                                  ]),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                                style:
                                    DefaultTextStyle.of(context).style.copyWith(
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
                                        : widget.customer.arheaderName ?? '',
                                    style: kfontstyle(
                                        fontSize: 12.sp,
                                        color: const Color(0xff413434)),
                                  )
                                ]),
                          ),
                          Text(
                            '${widget.invoice.invoiceType} | ${selectedLocale?.languageCode == 'en' ? widget.customer.rotName : widget.customer.arAreaName} | ${widget.invoice.date} | ${widget.invoice.time}',
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
                            milliseconds: 500,
                          ),
                          () async {
                            context
                                .read<CusInvDetailBlocBloc>()
                                .add(const ClearinvDetails());

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
                                    context
                                        .read<CusInvDetailBlocBloc>()
                                        .add(const ClearinvDetails());

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
              padding: EdgeInsets.only(
                  left: selectedLocale?.languageCode == 'en' ? 10 : 0,
                  right: selectedLocale?.languageCode == 'en' ? 0 : 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of(context)!.items,
                    style: boxHeading(),
                  ),
                  const Spacer(),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.type,
                          style: boxHeading(),
                        ),
                        /*  SizedBox(
                          width: 15.h,
                        ), */
                        Text(
                          AppLocalizations.of(context)!.uom,
                          style: boxHeading(),
                        ),
                        /*  SizedBox(
                          width: 15.h,
                        ), */
                        Text(
                          AppLocalizations.of(context)!.qty,
                          style: boxHeading(),
                        ),
                        /*  SizedBox(
                          width: 15.h,
                        ), */
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 8.h,
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
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppLocalizations.of(context)!.total_amount,
                      style: bottomTextStyle()),
                  Text(
                      '${AppLocalizations.of(context)!.aed} ${widget.invoice.grandTotal}',
                      style: bottomTotalAmountStyle())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
