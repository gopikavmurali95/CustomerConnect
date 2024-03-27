import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/Invoice_details/invoice_details_bloc.dart';
import 'package:customer_connect/feature/state/bloc/invoice_details_footer/invoice_details_footer_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InvoiceDetailListWidget extends StatelessWidget {
  const InvoiceDetailListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          BlocBuilder<InvoiceDetailsBloc, InvoiceDetailsState>(
            builder: (context, state) {
              return state.when(
                getInvoiceDetailsState: (invdetails) => invdetails == null
                    ? const Center(
                        child: CupertinoActivityIndicator(
                          animating: true,
                          color: Colors.red,
                          radius: 30,
                        ),
                      )
                    : ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        // color: Colors.teal,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              invdetails[index].prdCode ?? '',
                                              style: kfontstyle(
                                                fontSize: 12.sp,
                                                color: const Color(0xff2C6B9E),
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 200.w,
                                              child: Text(
                                                  invdetails[index].prdName ??
                                                      '',
                                                  //'Divella Farfalle farfalle pasta 500g Offer pack',
                                                  style: /* kfontstyle(
                                                  fontSize: 12.sp,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w400,
                                                ), */
                                                      subTitleTextStyle()),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 25.h,
                                      ),
                                      Text(
                                        invdetails[index].prdType ?? '',
                                        style: subTitleTextStyle(),
                                      ),
                                      SizedBox(
                                        width: 30.h,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            invdetails[index].higherUom ?? '',
                                            style: subTitleTextStyle(),
                                          ),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Text(
                                            invdetails[index].lowerUom ?? '',
                                            style: subTitleTextStyle(),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 30.h,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            invdetails[index].higherQty ?? '',
                                            style: subTitleTextStyle(),
                                          ),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Text(
                                            invdetails[index].lowerQty ?? '',
                                            style: subTitleTextStyle(),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
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
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5),
                                            child: Text(
                                              invdetails[index].amount ?? '',
                                              style: TextStyle(
                                                fontSize: 8.sp,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400,
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
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Type',
                    style: kfontstyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'value',
                        style: kfontstyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 15.h,
                      ),
                      Text(
                        'Discount',
                        style: kfontstyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 15.h,
                      ),
                      Text(
                        'Vat',
                        style: kfontstyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 15.h,
                      ),
                      Text(
                        'Subtotal',
                        style: kfontstyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          BlocBuilder<InvoiceDetailsFooterBloc, InvoiceDetailsFooterState>(
            builder: (context, state) {
              return state.when(
                getTypeWiseInvoice: (typewiseinvoice) => typewiseinvoice == null
                    ? const SizedBox()
                    : ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: typewiseinvoice.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 115.w,
                                  child:
                                      Text(typewiseinvoice[index].type ?? ''),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(typewiseinvoice[index].value ?? ''),
                                    SizedBox(
                                      width: 20.h,
                                    ),
                                    Text(typewiseinvoice[index].discount ?? ''),
                                    SizedBox(
                                      width: 30.h,
                                    ),
                                    Text(typewiseinvoice[index].vat ?? ''),
                                    SizedBox(
                                      width: 15.h,
                                    ),
                                    Text(typewiseinvoice[index].subTotal ?? ''),
                                  ],
                                ),
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
    );
  }
}
