import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/view/HomeScreen/widgets/CustomerTransaction.dart';
import 'package:customer_connect/feature/view/HomeScreen/widgets/Picking.dart';
import 'package:customer_connect/feature/view/HomeScreen/widgets/SalesOrders.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 1,
        leading: SvgPicture.asset(
          "assets/svg/homemenu.svg",
          fit: BoxFit.scaleDown,
          height: 20,
        ),
        title: SvgPicture.asset(
          "assets/svg/logo_ccsfa.svg",
          height: 30,
        ),
        actions: [
          SvgPicture.asset("assets/svg/notification.svg"),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PickingWidget(),
            CustomerTransaction(),
            SalesOrders(),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Other Options",
                    style: boxHeading(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 5, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade300,
                                spreadRadius: 1,
                                blurRadius: 1)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, top: 10, bottom: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/customer.png",
                              height: 20,
                            ),
                            // SvgPicture.asset("assets/images/os.png",height: 20,
                            //   fit: BoxFit.scaleDown,),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Customer Insights",
                              style: headTextStyle(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade300,
                                spreadRadius: 1,
                                blurRadius: 1)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, top: 10, bottom: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/file.png",
                              height: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Special Pricing",
                              style: headTextStyle(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 5, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade300,
                                spreadRadius: 1,
                                blurRadius: 1)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, top: 10, bottom: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/pro.png",
                              height: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Promotions",
                              style: headTextStyle(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade300,
                                spreadRadius: 1,
                                blurRadius: 1)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, top: 10, bottom: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/os.png",
                              height: 20,
                            ),
                            // fit: BoxFit.scaleDown,),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Outstanding",
                              style: headTextStyle(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300,
                              spreadRadius: 1,
                              blurRadius: 1)
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, top: 10, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/ts.png",
                              height: 20,
                            ),
                            //SvgPicture.asset("assets/svg/ts.svg",height: 20,
                            //fit: BoxFit.scaleDown,),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Track Salesman",
                              style: headTextStyle(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
