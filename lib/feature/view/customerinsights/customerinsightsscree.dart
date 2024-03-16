import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/view/customerinsights/widgets/customertransactionwidget.dart';
import 'package:customer_connect/feature/view/customerinsights/widgets/otheroptionswidget.dart';
import 'package:customer_connect/feature/view/customerinsights/widgets/profileinfowidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              SizedBox(
                height: 10.h,
              ),
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
                          'Virtual | Supermarket | Dubai ',
                          style:
                              kfontstyle(fontSize: 10.sp, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              const CustomerTraansactionWidget(),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Text(
                    "Other Options  ",
                    style: countHeading(),
                  ),
                ],
              ),
              const OtherOptionsWidget(),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Profile Details",
                    style: countHeading(),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                        colors: [Color(0xff99bedb), Color(0xff62a5d6)],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      child: InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/svg/edit.svg',
                              height: 12.h,
                            ),
                            SizedBox(
                              width: 6.w,
                            ),
                            Text(
                              'Edit Profile',
                              style: kfontstyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              const ProfileInfoWidget(),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
