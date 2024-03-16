import 'package:customer_connect/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerItemListWidget extends StatelessWidget {
  const CustomerItemListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '123456',
                      style: kfontstyle(
                        fontSize: 12.sp,
                        color: const Color(0xff7b70ac),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Divella Farfalle Farfalle Pasta 500g Offer Pack',
                      style: kfontstyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Cs',
                      style: kfontstyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'Pc',
                      style: kfontstyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54),
                    ),
                  ],
                ),
                SizedBox(
                  width: 50.w,
                ),
                Column(
                  children: [
                    Text(
                      '120.00',
                      style: kfontstyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      '12.00',
                      style: kfontstyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey[300],
        ),
        itemCount: 20,
      ),
    );
  }
}
