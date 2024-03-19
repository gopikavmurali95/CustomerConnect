import 'package:customer_connect/feature/SpecialPricing/Widgets/spcustomerlist.dart';
import 'package:customer_connect/feature/SpecialPricing/Widgets/specialpricing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/fonts.dart';

class SpecialPricingCustomer extends StatefulWidget {
  const SpecialPricingCustomer({super.key});

  @override
  State<SpecialPricingCustomer> createState() => _SpecialPricingCustomerState();
}

class _SpecialPricingCustomerState extends State<SpecialPricingCustomer> {
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
          "Special Pricing Customers",
          style: appHeading(),
        ),
        bottom: PreferredSize(
          preferredSize: Size(100, 100.h),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 15,),
            child: Column(
              children: [
                SizedBox(
                  height: 75,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: const Color(0xffB3DAF7),
                              child: Center(
                                child: Text(
                                  'FG',
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Special Pricing 01',
                                  style: blueTextStyle(),
                                ),
                                Text(
                                  '21 Feb 2021 to 24 Feb 2021',
                                  style: subTextStyle(),
                                ),
                                Text(
                                  'PR10021',
                                  style: subTextStyle(),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SpecialPricing(),
                                ),
                              );
                            },
                            child: Text(
                              'Details',
                              style: TextStyle(fontSize: 10.sp),
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SpecialPricing(),
                                ),
                              );
                            },
                            child: const Icon(
                              Icons.keyboard_arrow_right,
                              size: 18,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),

                Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey.shade200),
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 0.4,
                              spreadRadius: 0.2)
                        ]),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 20,
                          ),
                          hintText: "Search customers",
                          hintStyle: const TextStyle(
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
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Assigned Customers',
                      style: countHeading(),
                    ),
                    Text(
                      '13',
                      style: countHeading(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const SPCustomerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
