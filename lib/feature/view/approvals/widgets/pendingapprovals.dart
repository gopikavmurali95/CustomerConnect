import 'package:customer_connect/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PendingApprovalsWidget extends StatelessWidget {
  const PendingApprovalsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    const horizontalPadding = 10.0;
    const gridGap = 7.0;
    final cardWidth = (screenWidth - (horizontalPadding * 2) - gridGap) / 2.2;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text("Pending Approvals", style: approvalcountStyle()),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: const Color(0xffF0F9FF),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "3 New",
                    style: ifontstyle(
                        color: const Color(0xff0284C7), fontSize: 14),
                  ),
                )),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 6.h),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const ClampingScrollPhysics(),
            child: Row(
              children: List.generate(4, (index) {
                return Padding(
                  padding: EdgeInsets.only(right: index == 3 ? 0 : gridGap),
                  child: SizedBox(
                    width: cardWidth < 160.w ? 160.w : cardWidth,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(10.r),
                        border:
                            Border.all(color: const Color(0xFFE2E8F0), width: 1.w),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x08000000),
                            offset: Offset(0, 4),
                            blurRadius: 20,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset('assets/svg/Component 1.svg'),
                            SizedBox(height: 10.h),
                            Text(
                              'PRICE CHANGE',
                              style: pfontstyle(
                                  color: const Color(0xff64748B),
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(height: 6.h),
                            Text(
                              'Al Maya Supermarket',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: pfontstyle(
                                  color: const Color(0xff1E293B),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(height: 12.h),
                            SizedBox(
                              width: double.infinity,
                              height: 34.h,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: const Color(0xFF0B1736),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                ),
                                child: Text(
                                  'Review',
                                  style: ifontstyle(
                                      color: Colors.white,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
