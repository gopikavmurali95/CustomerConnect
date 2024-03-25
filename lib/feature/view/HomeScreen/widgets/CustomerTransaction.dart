import 'package:customer_connect/feature/state/bloc/customer_transaction/customer_transaction_bloc.dart';
import 'package:customer_connect/feature/view/arcollection/arcollection.dart';
import 'package:customer_connect/feature/view/invoices/invoiceheader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants/fonts.dart';

class CustomerTransaction extends StatelessWidget {
  const CustomerTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<CustomerTransactionBloc, CustomerTransactionState>(
          builder: (context, state) {
            return state.when(
              cusTransactionSuccessState: (custranscount) {
                if (custranscount != null) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      // height: 120,
                      // height: MediaQuery.of(context).size.height/5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Color(0xffC6E1E5), Color(0xffE6F4F6)],
                          )),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 8),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Customer Transactions",
                                    style: boxHeading(),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 0.0, right: 0, top: 3),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Flexible(
                                    flex: 2,
                                    fit: FlexFit.tight,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const InvoiceHeaderScreen(
                                              isfromUser: false,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        /*  height: 70,
                                          width: 170, */
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 15.0, top: 10, bottom: 5),
                                          child: Row(
                                            children: [
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  SvgPicture.asset(
                                                    "assets/svg/inv.svg",
                                                    height: 18,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(width: 12.w),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      custranscount
                                                              .cusTrnInvoice ??
                                                          '',
                                                      style: countHeading()),
                                                  Row(
                                                    children: [
                                                      Text("AED ",
                                                          style:
                                                              subTextStyle()),
                                                      Text(
                                                          custranscount
                                                                  .invoiceAmount ??
                                                              '',
                                                          style:
                                                              subTextStyle()),
                                                    ],
                                                  ),
                                                  Text(
                                                    "Invoices",
                                                    style: statusTextStyle(),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Flexible(
                                    flex: 2,
                                    fit: FlexFit.tight,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const ArCollectionScreen(
                                              isFromUser: false,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        /* height: 70,
                                          width: 170, */
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 15.0, top: 10, bottom: 5),
                                          child: Row(
                                            children: [
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  SvgPicture.asset(
                                                    "assets/svg/ar.svg",
                                                    height: 18,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 12.w,
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      custranscount
                                                              .cusTrnArCollection ??
                                                          '',
                                                      style: countHeading()),
                                                  Row(
                                                    children: [
                                                      Text("AED ",
                                                          style:
                                                              subTextStyle()),
                                                      Text(
                                                          custranscount
                                                                  .arAmount ??
                                                              '',
                                                          style:
                                                              subTextStyle()),
                                                    ],
                                                  ),
                                                  Text(
                                                    "Ar Collection ",
                                                    style: statusTextStyle(),
                                                  )
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
                            ),
                            SizedBox(
                              height: 3.h,
                            )
                          ],
                        ),
                      ));
                } else {
                  return const SizedBox();
                }
              },
              cusTransactionFailedState: () => const SizedBox(),
            );
          },
        ));
  }
}
