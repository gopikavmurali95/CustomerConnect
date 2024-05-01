import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/view/LoginScreen/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePopUPMenuButton extends StatelessWidget {
  final LoginUserModel user;
  const HomePopUPMenuButton({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      padding: const EdgeInsets.all(0),
      popUpAnimationStyle: AnimationStyle(
          curve: Curves.slowMiddle, reverseCurve: Curves.easeOut),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      surfaceTintColor: Colors.white,
      color: Colors.white,
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width / 4,
      ),
      itemBuilder: (context) => [
        PopupMenuItem(
          enabled: false,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.close,
                      size: 12.sp,
                    )
                  ],
                ),
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
                  radius: 14.sp,
                ),
                title: Text(
                  "${user.firstName} ${user.lastName}",
                  style: kfontstyle(
                    fontSize: 11.sp,
                    color: Colors.black87,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                subtitle: Text(
                  '${user.contacInfo} | ${user.userName}',
                  style: kfontstyle(
                    fontSize: 9.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 6.h,
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
                      fontSize: 12.sp,
                      color: Colors.black87,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              GestureDetector(
                onTap: () async {
                  showCupertinoDialog(
                    context: context,
                    builder: (context) => CupertinoAlertDialog(
                      title: const Text('Alert'),
                      content: Text(
                        'Do you want to logout',
                        style: kfontstyle(),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () async {
                            Navigator.pop(context);
                          },
                          child: const Text('cancel'),
                        ),
                        TextButton(
                          onPressed: () async {
                            Navigator.pop(context);
                            final sharedprefs =
                                await SharedPreferences.getInstance();
                            sharedprefs.clear();
                            Future.delayed(const Duration(microseconds: 100),
                                () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginScreen(),
                                  ),
                                  (route) => false);
                            });
                          },
                          child: const Text('proceeda'),
                        ),
                      ],
                    ),
                  );
                },
                child: Row(
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
                        fontSize: 12.sp,
                        color: Colors.black87,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
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
