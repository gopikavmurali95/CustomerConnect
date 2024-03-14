import 'package:customer_connect/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InvoiceDetailListWidget extends StatelessWidget {
  const InvoiceDetailListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.separated(
          itemBuilder: (context, index) => Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        // color: Colors.teal,
                        width: MediaQuery.of(context).size.width / 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '23456789',
                              style: kfontstyle(
                                fontSize: 12.sp,
                                color: const Color(0xff2C6B9E),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Divella Farfalle farfalle pasta 500g Offer pack',
                              style: kfontstyle(
                                fontSize: 12.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 15.h,
                      ),
                      const Text('SL'),
                      SizedBox(
                        width: 30.h,
                      ),
                      Column(
                        children: [
                          const Text('CS'),
                          SizedBox(
                            height: 5.h,
                          ),
                          const Text('CS'),
                        ],
                      ),
                      SizedBox(
                        width: 30.h,
                      ),
                      Column(
                        children: [
                          const Text('1'),
                          SizedBox(
                            height: 5.h,
                          ),
                          const Text('1'),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        // width: 50.w,
                        height: 20.h,
                        decoration: BoxDecoration(
                          color: const Color(0xfffcf5e8),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Text(
                              'AED 34.00',
                              style: TextStyle(
                                fontSize: 10.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
          separatorBuilder: (context, index) => Divider(
                color: Colors.grey[300],
              ),
          itemCount: 10),
    );
  }
}
