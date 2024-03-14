import 'package:customer_connect/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerInsightsScreen extends StatelessWidget {
  const CustomerInsightsScreen({super.key});

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
          "Customer Insights ",
          style: appHeading(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 20,
                    decoration: BoxDecoration(
                        color: const Color(0xfffee8e0),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'A025206 - ',
                              style: kfontstyle(
                                fontSize: 12.sp,
                                color: const Color(0xff2C6B9E),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                overflow: TextOverflow.ellipsis,
                                'Tromp, Muller and Mitchell',
                                style: kfontstyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xff413434)),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '199525 - ',
                              style: kfontstyle(
                                  fontSize: 11.sp,
                                  color: const Color(0xff413434)),
                            ),
                            Expanded(
                              child: Text(
                                'Carrefour Hypermarket',
                                overflow: TextOverflow.ellipsis,
                                style: kfontstyle(fontSize: 12.sp),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'CR | Route 101 | 16 May 2023 | 10:35',
                          style:
                              kfontstyle(fontSize: 10.sp, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
