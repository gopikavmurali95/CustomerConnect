import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/invoice_header_model/invoice_header_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/Invoice_details/invoice_details_bloc.dart';
import 'package:customer_connect/feature/state/bloc/invoice_details_footer/invoice_details_footer_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InvoiceDetailListWidget extends StatelessWidget {
  final InvoiceHeaderModel invoiceheader;
  final LoginUserModel user;
  const InvoiceDetailListWidget(
      {super.key, required this.invoiceheader, required this.user});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      triggerMode: RefreshIndicatorTriggerMode.anywhere,
      color: const Color.fromARGB(255, 181, 218, 245),
      displacement: BorderSide.strokeAlignCenter,
      onRefresh: () => _onRefreshInvoiceDetail(context),
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            BlocBuilder<InvoiceDetailsBloc, InvoiceDetailsState>(
              builder: (context, state) {
                return state.when(
                  getInvoiceDetailsState: (invdetails) => invdetails == null
                      ? Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: ListView.separated(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) =>
                                  ShimmerContainers(
                                      height: 60.h, width: double.infinity),
                              separatorBuilder: (context, index) => Divider(
                                    color: Colors.grey[300],
                                  ),
                              itemCount: 10),
                        )
                      : invdetails.isEmpty
                          ? SizedBox(
                              height: 50.h,
                              child: Center(
                                child: Text(
                                  'No Data Found',
                                  style: kfontstyle(),
                                ),
                              ),
                            )
                          : ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(
                                              // color: Colors.teal,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  2,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    invdetails[index].prdCode ??
                                                        '',
                                                    style: kfontstyle(
                                                      fontSize: 11.sp,
                                                      color: const Color(
                                                          0xff2C6B9E),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 200.w,
                                                    child: Text(
                                                      invdetails[index]
                                                              .prdName ??
                                                          '',
                                                      //'Divella Farfalle farfalle pasta 500g Offer pack',
                                                      /* style:  kfontstyle(
                                                    fontSize: 12.sp,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w400,
                                                  ), */
                                                      style: kfontstyle(
                                                          fontSize: 10.sp,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: 25.h,
                                            ),
                                            Text(
                                              invdetails[index].prdType ?? '',
                                              style: kfontstyle(
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            SizedBox(
                                              width: 30.h,
                                            ),
                                            Column(
                                              children: [
                                                Visibility(
                                                  visible: invdetails[index]
                                                                  .higherUom ==
                                                              null ||
                                                          invdetails[index]
                                                              .higherUom!
                                                              .isEmpty
                                                      ? false
                                                      : true,
                                                  child: Text(
                                                    invdetails[index]
                                                            .higherUom ??
                                                        '',
                                                    style: kfontstyle(
                                                        fontSize: 10.sp,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5.h,
                                                ),
                                                Visibility(
                                                  visible: invdetails[index]
                                                                  .lowerUom ==
                                                              null ||
                                                          invdetails[index]
                                                              .lowerUom!
                                                              .isEmpty
                                                      ? false
                                                      : true,
                                                  child: Text(
                                                    invdetails[index]
                                                            .lowerUom ??
                                                        '',
                                                    style: kfontstyle(
                                                        fontSize: 10.sp,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: 30.h,
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  invdetails[index].higherQty ??
                                                      '',
                                                  style: kfontstyle(
                                                      fontSize: 10.sp,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                SizedBox(
                                                  height: 5.h,
                                                ),
                                                Text(
                                                  invdetails[index].lowerQty ??
                                                      '',
                                                  style: kfontstyle(
                                                      fontSize: 10.sp,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              width: 40.w,
                                              height: 20.h,
                                              decoration: BoxDecoration(
                                                color: const Color(0xfffcf5e8),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Center(
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 5),
                                                  child: Text(
                                                    invdetails[index].amount ??
                                                        '',
                                                    style: TextStyle(
                                                      fontSize: 8.sp,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                              separatorBuilder: (context, index) => Divider(
                                    color: Colors.grey[300],
                                  ),
                              itemCount: invdetails.length),
                  getInvoiceDetailsFailedState: () => const SizedBox(),
                );
              },
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              height: 30.h,
              width: double.infinity,
              color: const Color(0xfff5f5f5),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 0, top: 10, bottom: 10),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      flex: 3,
                      fit: FlexFit.tight,
                      child: Text('Type', style: boxHeading()),
                    ),
                    Flexible(
                      flex: 2,
                      fit: FlexFit.tight,
                      child: Text('value', style: boxHeading()),
                    ),
                    Flexible(
                      flex: 2,
                      fit: FlexFit.tight,
                      child: Text('Discount', style: boxHeading()),
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Text('Vat', style: boxHeading()),
                    ),
                    Flexible(
                      flex: 2,
                      fit: FlexFit.tight,
                      child: Text('Subtotal', style: boxHeading()),
                    ),
                  ],
                ),
              ),
            ),
            BlocBuilder<InvoiceDetailsFooterBloc, InvoiceDetailsFooterState>(
              builder: (context, state) {
                return state.when(
                  getTypeWiseInvoice: (typewiseinvoice) => typewiseinvoice ==
                          null
                      ? const SizedBox()
                      : ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: typewiseinvoice.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 0, top: 10, bottom: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Flexible(
                                    flex: 3,
                                    fit: FlexFit.tight,
                                    // width: 115.w,
                                    child: Text(
                                      typewiseinvoice[index].type ?? '',
                                      style: kfontstyle(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: Text(
                                        typewiseinvoice[index].value ?? '',
                                        style: kfontstyle(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w400),
                                      )),
                                  /* SizedBox(
                                    width: 20.h,
                                  ), */
                                  Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: Text(
                                        typewiseinvoice[index].discount ?? '',
                                        style: kfontstyle(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w400),
                                      )),
                                  Flexible(
                                      flex: 1,
                                      fit: FlexFit.tight,
                                      child: Text(
                                        typewiseinvoice[index].vat ?? '',
                                        style: kfontstyle(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w400),
                                      )),
                                  Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: Text(
                                        typewiseinvoice[index].subTotal ?? '',
                                        textAlign: TextAlign.center,
                                        style: kfontstyle(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w400),
                                      )),
                                ],
                              ),
                            );
                          },
                        ),
                  typeWiseInvoiceFailedState: () => Center(
                    child: Text(
                      'No Data Available',
                      style: kfontstyle(),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _onRefreshInvoiceDetail(BuildContext context) async {
    context.read<InvoiceDetailsBloc>().add(const ClearInvoiceDetails());
    context
        .read<InvoiceDetailsBloc>()
        .add(GetInvoiceDetailsEvent(id: invoiceheader.id!, searchQuery: ''));
    context
        .read<InvoiceDetailsFooterBloc>()
        .add(const ClearInvoiceDetailsFooter());
    context
        .read<InvoiceDetailsFooterBloc>()
        .add(GetInvoiceDetailsFooterEvent(iD: invoiceheader.id!));
    await Future.delayed(const Duration(seconds: 2));
  }
}
