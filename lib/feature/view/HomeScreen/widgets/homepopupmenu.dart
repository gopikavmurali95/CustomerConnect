import 'dart:io';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/cubit/selectlanguage/select_language_locale_cubit.dart';
import 'package:customer_connect/feature/view/LoginScreen/login_screen.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
                  "${selectedLocale?.languageCode == 'en' ? user.firstName : user.arfirstName} ${selectedLocale?.languageCode == 'en' ? user.lastName : user.arlastName}",
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
                  SvgPicture.asset(
                    "assets/svg/about.svg",
                    height: 10.h,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    AppLocalizations.of(context)!.about,
                    style: kfontstyle(
                      fontSize: 12.sp,
                      color: Colors.black87,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        backgroundColor: Colors.white,
                        surfaceTintColor: Colors.white,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                        title: Text(
                          AppLocalizations.of(context)!
                              .languageSelection /* "Select Language" */,
                          style: const TextStyle(fontWeight: FontWeight.w400),
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ListTile(
                              leading: const Icon(Icons.language),
                              title: const Text("English"),
                              onTap: () async {
                                selectedLocale = const Locale('en');
                                final sharedprefs =
                                    await SharedPreferences.getInstance();
                                await sharedprefs.setString(
                                    'SelectedLocale', 'en');
                                Future.delayed(
                                    const Duration(microseconds: 100), () {
                                  context
                                      .read<SelectLanguageLocaleCubit>()
                                      .changeLanguage(selectedLocale!);
                                  Navigator.of(context).pop();
                                });
                              },
                            ),
                            const Divider(),
                            ListTile(
                              leading: const Icon(Icons.language),
                              title: const Text('العربية'),
                              onTap: () async {
                                selectedLocale = const Locale('ar');

                                final sharedprefs =
                                    await SharedPreferences.getInstance();
                                await sharedprefs.setString(
                                    'SelectedLocale', 'ar');
                                Future.delayed(
                                    const Duration(microseconds: 100), () {
                                  context
                                      .read<SelectLanguageLocaleCubit>()
                                      .changeLanguage(selectedLocale!);
                                  Navigator.of(context).pop();
                                });
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/svg/lang.svg",
                      height: 10.h,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      AppLocalizations.of(context)!.changeLanguage,
                      style: kfontstyle(
                        fontSize: 12.sp,
                        color: Colors.black87,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              GestureDetector(
                onTap: () async {
                  showDialog(
                      context: context,
                      builder: (context) {
                        if (Platform.isIOS) {
                          return CupertinoAlertDialog(
                            title: Text(AppLocalizations.of(context)!.alert),
                            content: Text(
                              AppLocalizations.of(context)!.doYouWantToLogout,
                              style: kfontstyle(),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () async {
                                  Navigator.pop(context);
                                },
                                child:
                                    Text(AppLocalizations.of(context)!.cancel),
                              ),
                              TextButton(
                                onPressed: () async {
                                  Navigator.pop(context);
                                  final sharedprefs =
                                      await SharedPreferences.getInstance();
                                  sharedprefs.clear();
                                  Future.delayed(
                                      const Duration(microseconds: 100), () {
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        Platform.isIOS
                                            ? CupertinoPageRoute(
                                                builder: (context) =>
                                                    const LoginScreen())
                                            : MaterialPageRoute(
                                                builder: (context) =>
                                                    const LoginScreen(),
                                              ),
                                        (route) => false);
                                  });
                                },
                                child:
                                    Text(AppLocalizations.of(context)!.proceed),
                              ),
                            ],
                          );
                        } else {
                          return AlertDialog(
                            title: Text(AppLocalizations.of(context)!.alert),
                            content: Text(
                              AppLocalizations.of(context)!.doYouWantToLogout,
                              style: kfontstyle(),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () async {
                                  Navigator.pop(context);
                                },
                                child:
                                    Text(AppLocalizations.of(context)!.cancel),
                              ),
                              TextButton(
                                onPressed: () async {
                                  Navigator.pop(context);
                                  final sharedprefs =
                                      await SharedPreferences.getInstance();
                                  sharedprefs.clear();
                                  Future.delayed(
                                      const Duration(microseconds: 100), () {
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        Platform.isIOS
                                            ? CupertinoPageRoute(
                                                builder: (context) =>
                                                    const LoginScreen())
                                            : MaterialPageRoute(
                                                builder: (context) =>
                                                    const LoginScreen(),
                                              ),
                                        (route) => false);
                                  });
                                },
                                child:
                                    Text(AppLocalizations.of(context)!.proceed),
                              ),
                            ],
                          );
                        }
                      });
                },
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/svg/logout.svg",
                      height: 10.h,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      AppLocalizations.of(context)!.logout,
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
