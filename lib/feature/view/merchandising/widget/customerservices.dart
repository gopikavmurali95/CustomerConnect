import 'package:customer_connect/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerServicesWidget extends StatelessWidget {
  const CustomerServicesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
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
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/request@2x.png',
                            height: 28,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Expanded(
                            child: Text(
                              'Customer Requests',
                              style: kfontstyle(
                                  fontSize: 9.sp,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'New Requests',
                            style: kfontstyle(
                                fontSize: 8.sp, color: Colors.grey.shade600),
                          ),
                          Text(
                            '200',
                            style: kfontstyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff413434)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Responded Requests',
                            style: kfontstyle(
                                fontSize: 8.sp, color: Colors.grey.shade600),
                          ),
                          Text(
                            '200',
                            style: kfontstyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff413434)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Container(
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
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/cnr@2x.png',
                            height: 28,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Expanded(
                            child: Text(
                              'Credit Note Requests',
                              style: kfontstyle(
                                  fontSize: 9.sp,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Requested',
                            style: kfontstyle(
                                fontSize: 8.sp, color: Colors.grey.shade600),
                          ),
                          Text(
                            '200',
                            style: kfontstyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff413434)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Approved',
                            style: kfontstyle(
                                fontSize: 8.sp, color: Colors.grey.shade600),
                          ),
                          Text(
                            '200',
                            style: kfontstyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff413434)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
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
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/dr@2x.png',
                            height: 28,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Expanded(
                            child: Text(
                              'Dispute Note Requests',
                              style: kfontstyle(
                                  fontSize: 9.sp,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Requested',
                            style: kfontstyle(
                                fontSize: 8.sp, color: Colors.grey.shade600),
                          ),
                          Text(
                            '200',
                            style: kfontstyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff413434)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Approved',
                            style: kfontstyle(
                                fontSize: 8.sp, color: Colors.grey.shade600),
                          ),
                          Text(
                            '200',
                            style: kfontstyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff413434)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Container(
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
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/returnr@2x.png',
                            height: 28,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Expanded(
                            child: Text(
                              'Return Requests',
                              style: kfontstyle(
                                  fontSize: 9.sp,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Requested',
                            style: kfontstyle(
                                fontSize: 8.sp, color: Colors.grey.shade600),
                          ),
                          Text(
                            '200',
                            style: kfontstyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff413434)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Approved',
                            style: kfontstyle(
                                fontSize: 8.sp, color: Colors.grey.shade600),
                          ),
                          Text(
                            '200',
                            style: kfontstyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff413434)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
