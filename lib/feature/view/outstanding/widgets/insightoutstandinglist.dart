import 'package:customer_connect/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InsightsOutstandingList extends StatelessWidget {
  const InsightsOutstandingList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: const Color(0xffDB95B5),
                    child: Image.asset(
                      'assets/images/ar_li.png',
                      height: 20.h,
                      width: 20.w,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'IV076876',
                          style: kfontstyle(
                            fontSize: 12.sp,
                            color: const Color(0xff2C6B9E),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '16 May 2023 | 10:35',
                          style:
                              kfontstyle(fontSize: 10.sp, color: Colors.grey),
                        ),
                        Text(
                          '120.00',
                          style:
                              kfontstyle(fontSize: 10.sp, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        '120.00',
                        style: kfontstyle(
                            fontSize: 12.sp, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Container(
                        height: 14.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                            color: index % 2 == 0
                                ? const Color(0xffe3f7e2)
                                : const Color(0xfff7f4e2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            index % 2 == 0 ? 'Due' : 'Overdue',
                            style: kfontstyle(
                                fontSize: 10.sp,
                                color: const Color(0xff413434)),
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
