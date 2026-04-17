import 'package:customer_connect/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArChartItemWidget extends StatelessWidget {
  final Color color;
  final String title;
  final String amount;
  final String items;
  const ArChartItemWidget({
    super.key,
    required this.color,
    required this.title,
    required this.amount,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 40,
        color: const Color(0xffF9FAFB),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Container(
                    height: 15.h,
                    width: 15.w,
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(7.5),
                    ),
                  ),
                  SizedBox(
                    width: 5.h,
                  ),
                  Text(
                    title,
                    style: ifontstyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff364153)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    amount,
                    style: ifontstyle(
                        fontSize: 10.sp,
                        color: const Color(0xff101828),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    items,
                    style: ifontstyle(
                        fontSize: 8.sp,
                        color: const Color(0xff6A7282),
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
