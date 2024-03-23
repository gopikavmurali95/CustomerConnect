import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/view/arcollection/widgets/arddetailinvoicewidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ARDetailScreen extends StatelessWidget {
  const ARDetailScreen({super.key});

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
          "AR Detail ",
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'IV076876',
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: const Color(0xff2C6B9E),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'A025206 - ',
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: const Color(0xff2C6B9E),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              overflow: TextOverflow.ellipsis,
                              'Tromp, Muller and Mitchell',
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color: const Color(0xff413434)),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '199525 - ',
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: const Color(0xff413434)),
                          ),
                          Expanded(
                            child: Text(
                              'Carrefour Hypermarket',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 13.sp),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'CR | Route 101 | 16 May 2023 | 10:35',
                        style: TextStyle(fontSize: 10.sp, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          /*  SizedBox(
            height: 15.h,
          ), */
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Collected Amount:',
                      style: kfontstyle(fontSize: 12.sp),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Text(
                      '120.00',
                      style: kfontstyle(
                          fontSize: 12.sp, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Container(
                  height: 14.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                      color: const Color(0xffe4f7e2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      'DI',
                      style: TextStyle(
                          fontSize: 10.sp, color: const Color(0xff413434)),
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Preview Image',
                      style: kfontstyle(
                        fontSize: 12.sp,
                        color: const Color(0xff899fc6),
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 0.h,
          ),
          Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Row(
                children: [
                  Flexible(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Mode :',
                              style: kfontstyle(fontSize: 12.sp),
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Text(
                              'Cheque',
                              style: kfontstyle(
                                fontSize: 12.sp,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Text(
                              'Cheque # :',
                              style: kfontstyle(fontSize: 12.sp),
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Text(
                              '123456',
                              style: kfontstyle(
                                fontSize: 12.sp,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Flexible(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Bank :',
                              style: kfontstyle(fontSize: 12.sp),
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Text(
                              'NBD',
                              style: kfontstyle(
                                fontSize: 12.sp,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Text(
                              'Cheque Date :',
                              style: kfontstyle(fontSize: 12.sp),
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Text(
                              '12 jan 21',
                              style: kfontstyle(
                                fontSize: 12.sp,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 15.h,
          ),
          const ARDetailInvoiceWidget()
        ],
      ),
    );
  }
}
/* Column(
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Mode :',
                          style: kfontstyle(fontSize: 12.sp),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Text(
                          'Cheque',
                          style: kfontstyle(
                            fontSize: 12.sp,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 40.w,
                    ),
                    Row(
                      children: [
                        Text(
                          'Bank :',
                          style: kfontstyle(fontSize: 12.sp),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Text(
                          'NBD',
                          style: kfontstyle(
                            fontSize: 12.sp,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Cheque # :',
                          style: kfontstyle(fontSize: 12.sp),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Text(
                          '123456',
                          style: kfontstyle(
                            fontSize: 12.sp,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 40.w,
                    ),
                    Row(
                      children: [
                        Text(
                          'Cheque Date :',
                          style: kfontstyle(fontSize: 12.sp),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Text(
                          'Cheque',
                          style: kfontstyle(
                            fontSize: 12.sp,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ), */
