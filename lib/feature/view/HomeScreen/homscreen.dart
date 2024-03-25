import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/view/HomeScreen/widgets/CustomerTransaction.dart';
import 'package:customer_connect/feature/view/HomeScreen/widgets/Picking.dart';
import 'package:customer_connect/feature/view/HomeScreen/widgets/SalesOrders.dart';
import 'package:customer_connect/feature/view/HomeScreen/widgets/homepopupmenu.dart';
import 'package:customer_connect/feature/view/notification/notification.dart';
import 'package:customer_connect/feature/view/promotions/promotionsheader.dart';
import 'package:customer_connect/feature/view/customerinsights/customersscreen.dart';
import 'package:customer_connect/feature/view/outstanding/outstandingheader.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../SpecialPricing/specialpricingheader.dart';

class HomeScreen extends StatefulWidget {
  final LoginUserModel user;
  const HomeScreen({super.key, required this.user});
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
        leading: /* SvgPicture.asset(
          "assets/svg/homemenu.svg",
          fit: BoxFit.scaleDown,
          height: 20,
        ) */
            const HomePopUPMenuButton(),
        title: SvgPicture.asset(
          "assets/svg/logo_ccsfa.svg",
          height: 22.sp,
        ),
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NotificationScreen()));
              },
              child: SvgPicture.asset("assets/svg/notification.svg")),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PickingWidget(
              user: widget.user,
            ),
            CustomerTransaction(
              user: widget.user,
            ),
            const SalesOrders(),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 10, top: 10),
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
              padding: const EdgeInsets.only(left: 15.0, top: 5, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CustomersScren(),
                            ));
                      },
                      child: Container(
                        //height: 50,
                        // width: MediaQuery.of(context).size.width / 2,
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
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/images/customer.png",
                                height: 15.h,
                              ),
                              // SvgPicture.asset("assets/images/os.png",height: 20,
                              //   fit: BoxFit.scaleDown,),
                              SizedBox(
                                width: 8.w,
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
                  ),
                  SizedBox(
                    width: 10.w,
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
                                    const SpecialPricingHeader()));
                      },
                      child: Container(
                        // height: 50,
                        // width: MediaQuery.of(context).size.width / 2,
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
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/images/file.png",
                                height: 15.h,
                              ),
                              SizedBox(
                                width: 8.w,
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
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 5, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PromotionHeader()));
                      },
                      child: Container(
                        // height: 50,
                        // width: MediaQuery.of(context).size.width / 2,
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
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/images/pro.png",
                                height: 15.h,
                              ),
                              SizedBox(
                                width: 8.w,
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
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OutstandingHeaderScreen(
                              isfromUser: false,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        //height: 50,
                        // width: MediaQuery.of(context).size.width / 2,
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
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/images/os.png",
                                height: 15.h,
                              ),
                              // fit: BoxFit.scaleDown,),
                              SizedBox(
                                width: 8.w,
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
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      // width: 100,
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
