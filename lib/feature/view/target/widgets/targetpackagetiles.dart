import 'package:customer_connect/constants/fonts.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TargetPAckageContainerWidget extends StatelessWidget {
  const TargetPAckageContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final containerGradients = [
      [
        const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xffe9f2f6),
            Color(0xffdcdef7),
          ],
        ),
        const LinearGradient(colors: [
          Color(0xff8a91e4),
          Color(0xff535bcc),
        ]),
        const LinearGradient(
          colors: [
            Color(0xffc5c7e9),
            Color(0xff969add),
          ],
        ),
      ],
      [
        const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xfff5f6e9),
            Color(0xfff7f3dc),
          ],
        ),
        const LinearGradient(colors: [
          Color(0xffe0dc72),
          Color(0xffc2c72e),
        ]),
        const LinearGradient(
          colors: [
            Color(0xffe9e5c6),
            Color(0xffdcda95),
          ],
        ),
      ]
    ];
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                gradient: containerGradients[0][0]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Target Amount',
                    style: kfontstyle(fontSize: 9.sp, color: Colors.black54),
                  ),
                  Text(
                    '500.00',
                    style: countHeading(),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  DottedLine(dashColor: Colors.grey.shade400),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    'Achieved Amount',
                    style: kfontstyle(fontSize: 9.sp, color: Colors.black54),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '900.00',
                        style: countHeading(),
                      ),
                      Text(
                        '30%',
                        style: countHeading(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  DottedLine(dashColor: Colors.grey.shade400),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    'MTD Gap Amount',
                    style: kfontstyle(fontSize: 9.sp, color: Colors.black54),
                  ),
                  Text(
                    '900.00',
                    style: countHeading(),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  DottedLine(dashColor: Colors.grey.shade400),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    'Monthly Gap Amount',
                    style: kfontstyle(fontSize: 9.sp, color: Colors.black54),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '900.00',
                        style: countHeading(),
                      ),
                      Row(
                        children: [
                          Text(
                            '44%',
                            style: countHeading(),
                          ),
                          Text(
                            '(36%+8%)',
                            style: kfontstyle(
                              fontSize: 8.sp,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: 6.w,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                gradient: containerGradients[1][0]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Target Quantity',
                    style: kfontstyle(fontSize: 9.sp, color: Colors.black54),
                  ),
                  Text(
                    '150',
                    style: countHeading(),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  DottedLine(dashColor: Colors.grey.shade400),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    'Achieved Quantity',
                    style: kfontstyle(fontSize: 9.sp, color: Colors.black54),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '30',
                        style: countHeading(),
                      ),
                      Text(
                        '20%',
                        style: countHeading(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  DottedLine(dashColor: Colors.grey.shade400),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    'MTD Gap Quantity',
                    style: kfontstyle(fontSize: 9.sp, color: Colors.black54),
                  ),
                  Text(
                    '30',
                    style: countHeading(),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  DottedLine(dashColor: Colors.grey.shade400),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    'Monthly Gap Quantity',
                    style: kfontstyle(fontSize: 9.sp, color: Colors.black54),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '30',
                        style: countHeading(),
                      ),
                      Row(
                        children: [
                          Text(
                            '44%',
                            style: countHeading(),
                          ),
                          Text(
                            '(36%+8%)',
                            style: kfontstyle(
                              fontSize: 8.sp,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
