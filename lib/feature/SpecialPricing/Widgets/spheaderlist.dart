
import 'package:customer_connect/feature/SpecialPricing/Widgets/specialpricing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/fonts.dart';
import '../../view/LoadInDetail/load_detail_pending.dart';
import '../specialpricingcustomer.dart';

class SpPrHeaderList extends StatelessWidget {
  const SpPrHeaderList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(
        left: 20, right: 10,
        //top: 10,
        //  bottom: 10
      ),
      shrinkWrap: true,
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            SizedBox(
              //color: Colors.red,
              height: 60,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor:
                          const Color(0xffB3DAF7),
                          child: Center(
                            child: Text(
                              'AL',
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                    const SpecialPricing()));
                          },
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.center,
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Special Pricing 0${index+1}',
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
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    // onTap: () {
                    //   Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) =>
                    //           const PromotionDetails()));
                    // },
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                    const SpecialPricing()));
                          },
                          child: Text(
                            'Details',
                            style: TextStyle(fontSize: 10.sp),
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        const Icon(
                          Icons.keyboard_arrow_right,
                          size: 18,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 05
                // top: 10,bottom: 10
              ),
              child: Divider(
                color: Colors.grey.shade300,
              ),
            )
          ],
        );
      },
    );
  }
}
