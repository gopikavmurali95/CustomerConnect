// ignore_for_file: file_names

import 'package:customer_connect/feature/view/arcollection/arcollection.dart';
import 'package:customer_connect/feature/view/invoices/invoiceheader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants/fonts.dart';

class CustomerTransaction extends StatelessWidget {
  const CustomerTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: 120,
          // height: MediaQuery.of(context).size.height/5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Color(0xffC6E1E5), Color(0xffE6F4F6)],
              )
            ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 10.0, right: 20, top: 10, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Customer Transactions",
                      style: boxHeading(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const InvoiceHeaderScreen(
                              isfromUser: false,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: 70,
                        width: 170,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, top: 10, bottom: 5),
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    "assets/svg/inv.svg",
                                    height: 18,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("10", style: countHeading()),
                                  Text("AED 0.00", style: subTextStyle()),
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
                    SizedBox(width: 1,),

                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ArCollectionScreen(
                              isFromUser: false,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: 70,
                        width: 170,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, top: 10, bottom: 5),
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    "assets/svg/ar.svg",
                                    height: 18,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("10", style: countHeading()),
                                  Text("AED 0.00", style: subTextStyle()),
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
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}
