import 'package:customer_connect/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerInsightSpecialPriceDetailsList extends StatelessWidget {
  const CustomerInsightSpecialPriceDetailsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 2.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '40047977',
                    style: kfontstyle(
                      fontSize: 12.sp,
                      color: const Color(0xff6E62A4),
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
            Column(
              children: [
                const Text('Cs'),
                SizedBox(
                  height: 5.h,
                ),
                const Text('Pc'),
              ],
            ),
            SizedBox(
              width: 30.h,
            ),
            Column(
              children: [
                const Text('12.00'),
                SizedBox(
                  height: 5.h,
                ),
                const Text('2.50'),
              ],
            ),
            SizedBox(
              width: 30.h,
            ),
            Column(
              children: [
                const Text('10.00'),
                SizedBox(
                  height: 5.h,
                ),
                const Text('2.00'),
              ],
            ),
          ],
        ),
      ),
      separatorBuilder: (context, index) => Divider(
        color: Colors.grey[300],
      ),
      itemCount: 15,
    );
  }
}
