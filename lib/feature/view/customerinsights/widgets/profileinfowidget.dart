import 'package:customer_connect/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileInfoWidget extends StatelessWidget {
  const ProfileInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(
              'assets/svg/profile.svg',
              height: 10.h,
            ),
            SizedBox(
              width: 20.w,
            ),
            Text(
              'Ahmed Kabeer',
              style: kfontstyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 7.h,
        ),
        /*  const ProfileTileRowWidget(
          fimg: 'assets/svg/mail.svg',
          limg: 'assets/svg/sendmail.svg',
          title: 'support@danat.ae',
        ), */
        Padding(
          padding: EdgeInsets.symmetric(vertical: 7.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/mail.svg",
                      height: 8.h,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Flexible(
                      child: Text(
                        "support@danat.ae",
                        style: kfontstyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SvgPicture.asset(
                "assets/svg/sendmail.svg",
                height: 15.h,
              )
            ],
          ),
        ),
        const ProfileTileRowWidget(
          fimg: 'assets/svg/phone.svg',
          limg: 'assets/svg/call.svg',
          title: '+97150124569',
        ),
        const ProfileTileRowWidget(
          fimg: 'assets/svg/whatsapp_1.svg',
          limg: 'assets/svg/whatsapp.svg',
          title: '+97150124569',
        ),
        const ProfileTileRowWidget(
          fimg: 'assets/svg/address.svg',
          limg: 'assets/svg/locate.svg',
          title:
              'Danat Al Ain Resort Al Salam Street,Al Ain- Abu Dhabi United Arab Emirates',
        ),
      ],
    );
  }
}

class ProfileTileRowWidget extends StatelessWidget {
  final String title;
  final String fimg;
  final String limg;

  const ProfileTileRowWidget({
    super.key,
    required this.title,
    required this.fimg,
    required this.limg,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 7.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  fimg,
                  height: 10.h,
                ),
                SizedBox(
                  width: 20.w,
                ),
                Flexible(
                  child: Text(
                    title,
                    style: kfontstyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SvgPicture.asset(
            limg,
            height: 15.h,
          )
        ],
      ),
    );
  }
}
