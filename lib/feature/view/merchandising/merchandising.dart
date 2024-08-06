import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/view/merchandising/merchandoutofcustomerdetails.dart';
import 'package:customer_connect/feature/view/merchandising/merchandoutofstockdetailscreen.dart';
import 'package:customer_connect/feature/view/merchandising/widget/calenderwidget.dart';
import 'package:customer_connect/feature/view/merchandising/widget/customerservices.dart';
import 'package:customer_connect/feature/view/merchandising/widget/outletactivities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MerchandisingScreen extends StatefulWidget {
  const MerchandisingScreen({super.key});

  @override
  State<MerchandisingScreen> createState() => _MerchandisingScreenState();
}

DateTime selectedDate = DateTime.now();
final fromdateController = TextEditingController();
final todateController = TextEditingController();

class _MerchandisingScreenState extends State<MerchandisingScreen> {
  @override
  void initState() {
    fromdateController.text =
        '${DateTime.now().year}-${DateTime.now().month}-1';
    todateController.text =
        '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.5,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
          ),
        ),
        title: Text(
          "Merchandising Dashboard",
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MerchandisingCalender(
                fromDateController: fromdateController,
                toDateController: todateController),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Inventory Monitoring',
              style: countHeading(),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade200,
                        spreadRadius: 1.5,
                        blurRadius: 2)
                  ]),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/outofstock@2x.png',
                          height: 28,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: Text(
                            'Out Of Stock',
                            style: kfontstyle(
                              fontSize: 9.sp,
                              color: Colors.black87,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Text('22', style: countHeading())
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 7,
                          decoration: BoxDecoration(
                            color: const Color(0xfffee8e0),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OutOfStockScreen(
                                  fromDateCtrl: fromdateController,
                                  toDateCtrl: todateController,
                                ),
                              ),
                            );
                          },
                          child: Text(
                            'OOS Items',
                            style: kfontstyle(
                              fontSize: 8.sp,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ),
                        Text(
                          '200',
                          style: kfontstyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff413434),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          height: 30,
                          width: 7,
                          decoration: BoxDecoration(
                            color: const Color(0xfffee8e0),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OutOfCustomerScreen(
                                  fromDate: fromdateController,
                                  toDate: todateController,
                                ),
                              ),
                            );
                          },
                          child: Text(
                            'OOS Customers',
                            style: kfontstyle(
                              fontSize: 8.sp,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ),
                        Text(
                          '15',
                          style: kfontstyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff413434),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              'Outlet Activities',
              style: countHeading(),
            ),
            SizedBox(
              height: 10.h,
            ),
            OutletAcivitiesWidget(
              fromdatectrl: fromdateController,
              todatectrl: todateController,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Customer Services',
              style: countHeading(),
            ),
            SizedBox(
              height: 10.h,
            ),
            const CustomerServicesWidget()
          ],
        ),
      ),
    );
  }
}
