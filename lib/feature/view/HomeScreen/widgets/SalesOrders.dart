// ignore_for_file: file_names

import 'package:customer_connect/feature/view/todaysdelivery/todaysdelivery.dart';
import 'package:customer_connect/feature/view/totalorders/totalordersheader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants/fonts.dart';

class SalesOrders extends StatelessWidget {
  const SalesOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          width: MediaQuery.of(context).size.width,
          // height: 120,
          // height: MediaQuery.of(context).size.height/5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Color(0xffCEE5C6), Color(0xffEAF6E6)],
              )),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sales Orders",
                        style: boxHeading(),
                      ),
                      //  Text("33"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 05.0, right: 05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const TotalOrders()));
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
                                        "assets/svg/orders.svg",
                                        height: 25,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("10", style: countHeading()),
                                      Text("AED 0.00", style: subTextStyle()),
                                      Expanded(
                                        child: Text(
                                          "Total Order",
                                          style: statusTextStyle(),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const TodaysDelivery()));
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
                                        "assets/svg/tdel.svg",
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("0/0", style: countHeading()),
                                      Text("AED 0.00", style: subTextStyle()),
                                      Text(
                                        "Today's Deliveries",
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
              ],
            ),
          )),
    );
  }
}
