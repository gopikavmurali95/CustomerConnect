import 'dart:io';

import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/view/HomeScreen/widgets/homepopupmenu.dart';
import 'package:customer_connect/feature/view/notification/notification.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Hero header (same visual language as [CustomersHeaderSection]) with
/// horizontal tabs in the style of HomeScreen graph chips (no search field).
class ApprovalsHeaderSection extends StatelessWidget {
  final LoginUserModel user;
  final int selectedTabIndex;
  final ValueChanged<int> onTabSelected;
  final List<String> tabLabels;
  final List<LinearGradient> tabGradients;

  const ApprovalsHeaderSection({
    super.key,
    required this.user,
    required this.selectedTabIndex,
    required this.onTabSelected,
    required this.tabLabels,
    required this.tabGradients,
  });

  static final List<LinearGradient> defaultTabGradients = [
    const LinearGradient(colors: [Color(0xff43c2de), Color(0xff3598c7)]),
    const LinearGradient(colors: [Color(0xff4bd944), Color(0xff3bb833)]),
    const LinearGradient(colors: [Color(0xffefbd3b), Color(0xffd3a11d)]),
  ];

  @override
  Widget build(BuildContext context) {
    assert(tabLabels.length == tabGradients.length);
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 20.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16.r),
          bottomRight: Radius.circular(16.r),
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x40B8B8B8),
            offset: Offset(0, 8),
            blurRadius: 15.2,
            spreadRadius: 0,
          ),
        ],
        image: const DecorationImage(
          image: AssetImage('assets/images/home/home_bg2.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 22.w,
                  height: 22.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                  child: HomePopUPMenuButton(user: user),
                ),
                SizedBox(width: 10.w),
                SvgPicture.asset(
                  'assets/svg/logo_ccsfa.svg',
                  height: 22.sp,
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      Platform.isIOS
                          ? CupertinoPageRoute(
                              builder: (context) =>
                                  NotificationScreen(user: user))
                          : MaterialPageRoute(
                              builder: (context) =>
                                  NotificationScreen(user: user),
                            ),
                    );
                  },
                  icon: SvgPicture.asset('assets/svg/notification.svg'),
                  splashRadius: 20.r,
                ),
              ],
            ),
            SizedBox(height: 16.h),
            SizedBox(
              height: 30.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tabLabels.length,
                itemBuilder: (context, index) {
                  final selected = selectedTabIndex == index;
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: GestureDetector(
                      onTap: () => onTabSelected(index),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: selected
                              ? tabGradients[index]
                              : const LinearGradient(
                                  colors: [Colors.white, Colors.white],
                                ),
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 18,
                            vertical: 10,
                          ),
                          child: Center(
                            child: Text(
                              tabLabels[index],
                              style: TextStyle(
                                fontSize: 10.sp,
                                color: selected ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
