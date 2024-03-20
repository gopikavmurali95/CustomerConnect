import 'package:customer_connect/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InvoiceDetailListWidget extends StatelessWidget {
  const InvoiceDetailListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
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
                                      style: /* kfontstyle(
                                      fontSize: 12.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ), */
                                          subTitleTextStyle()),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 15.h,
                            ),
                            Text(
                              'SL',
                              style: subTitleTextStyle(),
                            ),
                            SizedBox(
                              width: 30.h,
                            ),
                            Column(
                              children: [
                                Text(
                                  'CS',
                                  style: subTitleTextStyle(),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  'CS',
                                  style: subTitleTextStyle(),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 30.h,
                            ),
                            Column(
                              children: [
                                Text(
                                  '1',
                                  style: subTitleTextStyle(),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  '1',
                                  style: subTitleTextStyle(),
                                ),
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
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Text(
                                    'AED 34.00',
                                    style: TextStyle(
                                      fontSize: 8.sp,
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
                  ),
              separatorBuilder: (context, index) => Divider(
                    color: Colors.grey[300],
                  ),
              itemCount: 10),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 30.h,
            width: double.infinity,
            color: const Color(0xfff5f5f5),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Type',
                    style: kfontstyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'value',
                        style: kfontstyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 15.h,
                      ),
                      Text(
                        'Discount',
                        style: kfontstyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 15.h,
                      ),
                      Text(
                        'Vat',
                        style: kfontstyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 15.h,
                      ),
                      Text(
                        'Subtotal',
                        style: kfontstyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Sales'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('108.00'),
                    SizedBox(
                      width: 20.h,
                    ),
                    const Text('2.40'),
                    SizedBox(
                      width: 20.h,
                    ),
                    const Text('5.28'),
                    SizedBox(
                      width: 20.h,
                    ),
                    const Text('100.32'),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Good Return'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('108.00'),
                    SizedBox(
                      width: 20.h,
                    ),
                    const Text('2.40'),
                    SizedBox(
                      width: 20.h,
                    ),
                    const Text('5.28'),
                    SizedBox(
                      width: 20.h,
                    ),
                    const Text('100.32'),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Bad Return'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('108.00'),
                    SizedBox(
                      width: 20.h,
                    ),
                    const Text('2.40'),
                    SizedBox(
                      width: 20.h,
                    ),
                    const Text('5.28'),
                    SizedBox(
                      width: 20.h,
                    ),
                    const Text('100.32'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
