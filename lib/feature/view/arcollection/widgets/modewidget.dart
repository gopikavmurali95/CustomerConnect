import 'package:customer_connect/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArChartItemWidget extends StatelessWidget {
  final Color color;
  final String title;
  final String amount;
  const ArChartItemWidget({
    super.key,
    required this.color,
    required this.title,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 13.h,
              width: 30.w,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            SizedBox(
              width: 5.h,
            ),
            Text(
              title,
              style: kfontstyle(fontSize: 10.sp),
            ),
          ],
        ),
        Text(
          amount,
          style: kfontstyle(fontSize: 10.sp, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
