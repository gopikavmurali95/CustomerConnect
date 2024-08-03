import 'package:customer_connect/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RouteTargetDaysWidget extends StatelessWidget {
  const RouteTargetDaysWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Container(
        width: double.infinity,
        //height: 80.h,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade200, spreadRadius: 1.5, blurRadius: 2)
            ]),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 35, right: 10, top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Month',
                    style:
                        kfontstyle(fontSize: 9.sp, color: Colors.grey.shade600),
                  ),
                  Text(
                    'March 2023',
                    style: kfontstyle(
                        fontSize: 10.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Container(
                width: 190.h,
                decoration: BoxDecoration(
                  color: const Color(0xffEBEFF4),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Working \n   Days',
                        style: kfontstyle(
                            fontSize: 9.sp, color: Colors.grey.shade600),
                      ),
                      Column(
                        children: [
                          Text(
                            'Total',
                            style: kfontstyle(
                                fontSize: 9.sp, color: Colors.grey.shade600),
                          ),
                          Text(
                            '25',
                            style: kfontstyle(
                                fontSize: 10.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Completed',
                            style: kfontstyle(
                                fontSize: 9.sp, color: Colors.grey.shade600),
                          ),
                          Text(
                            '16',
                            style: kfontstyle(
                                fontSize: 10.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
