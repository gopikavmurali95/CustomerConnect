import 'package:customer_connect/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePopUPMenuButton extends StatelessWidget {
  const HomePopUPMenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      padding: const EdgeInsets.all(0),
      popUpAnimationStyle: AnimationStyle(
          curve: Curves.slowMiddle, reverseCurve: Curves.easeOut),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      surfaceTintColor: Colors.white,
      color: Colors.white,
      constraints:
          BoxConstraints(minWidth: MediaQuery.of(context).size.width / 4),
      itemBuilder: (context) => [
        PopupMenuItem(
          enabled: false,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      size: 12.sp,
                    ),
                  )
                ],
              ),
              ListTile(
                onTap: () {
                  /* Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            OutstandingHeaderScreen(isfromUser: true),
                      )); */
                },
                leading: CircleAvatar(
                  radius: 16.sp,
                ),
                title: Text(
                  'Lewis Rodney',
                  style: kfontstyle(
                    fontSize: 12.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  '123456 | Sales Executive',
                  style: kfontstyle(
                    fontSize: 10.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.close,
                    size: 12.sp,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'Settings',
                    style: kfontstyle(
                      fontSize: 14.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.close,
                    size: 12.sp,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'Change Password',
                    style: kfontstyle(
                      fontSize: 14.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.close,
                    size: 12.sp,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'About',
                    style: kfontstyle(
                      fontSize: 14.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.close,
                    size: 12.sp,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'Logout',
                    style: kfontstyle(
                      fontSize: 14.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
      child: SvgPicture.asset(
        "assets/svg/homemenu.svg",
        fit: BoxFit.scaleDown,
        height: 20,
      ),
    );
  }
}
