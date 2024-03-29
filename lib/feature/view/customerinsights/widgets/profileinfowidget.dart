import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/cusprofile/cus_profile_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileInfoWidget extends StatelessWidget {
  const ProfileInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CusProfileBloc, CusProfileState>(
      builder: (context, state) {
        return state.when(
          getCusProfileState: (profile) => profile == null
              ? ShimmerContainers(
                  height: MediaQuery.of(context).size.width / 2,
                  width: MediaQuery.of(context).size.width)
              : Column(
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
                          profile.cusName ?? '',
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
                    Visibility(
                      visible:
                          profile.cusEmail == null || profile.cusEmail!.isEmpty
                              ? false
                              : true,
                      child: Padding(
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
                                      profile.cusEmail ?? '',
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
                    ),
                    ProfileTileRowWidget(
                      fimg: 'assets/svg/phone.svg',
                      limg: 'assets/svg/call.svg',
                      title: profile.cusPhone ?? '',
                    ),
                    ProfileTileRowWidget(
                      fimg: 'assets/svg/whatsapp_1.svg',
                      limg: 'assets/svg/whatsapp.svg',
                      title: profile.cusWhatsappNumber ?? '',
                    ),
                    ProfileTileRowWidget(
                      fimg: 'assets/svg/address.svg',
                      limg: 'assets/svg/locate.svg',
                      title: profile.cusAddress ?? '',
                    ),
                  ],
                ),
          getcusprofileFailedState: () => Center(
            child: Text(
              'No Data Available',
              style: kfontstyle(),
            ),
          ),
        );
      },
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
