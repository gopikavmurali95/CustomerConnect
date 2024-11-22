import 'dart:developer';
import 'dart:io';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/cusprofile/cus_profile_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileInfoWidget extends StatefulWidget {
  const ProfileInfoWidget({super.key});

  @override
  State<ProfileInfoWidget> createState() => _ProfileInfoWidgetState();
}

const double lat = 2.813812, long = 101.503413;

class _ProfileInfoWidgetState extends State<ProfileInfoWidget> {
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
                        Flexible(
                          child: Text(
                            selectedLocale?.languageCode == "en"
                                ? profile.cusName ?? ''
                                : profile.cusNameArabic ?? '',
                            style: kfontstyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
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
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                            GestureDetector(
                              onTap: () async {
                                logger.e('mailto:${profile.cusEmail}');
                                try {
                                  if (profile.cusEmail != null &&
                                      profile.cusEmail != '') {
                                    if (await canLaunchUrl(
                                      Uri.parse("mailto:${profile.cusEmail!}"),
                                    )) {
                                      bool issuccess = await launchUrl(
                                        Uri(
                                          scheme: 'mailto',
                                          path: profile.cusEmail!,
                                          /* queryParameters: {
                                            'subject': 'hi',
                                            'body': '',
                                          }, */
                                        ),
                                        mode: LaunchMode.platformDefault,
                                      );
                                      log('Launch success: $issuccess');
                                    } else {
                                      log('Cannot launch email');
                                      /* ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                            content: Text(
                                                'Cannot launch email client')),
                                      ); */
                                    }
                                  }
                                } catch (e) {
                                  log('Error launching mail');
                                }
                              },
                              child: SvgPicture.asset(
                                "assets/svg/sendmail.svg",
                                height: 15.h,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        try {
                          if (profile.cusPhone != null &&
                              profile.cusPhone != '') {
                            if (await canLaunchUrl(
                              Uri(scheme: 'tel', path: profile.cusPhone!),
                            )) {
                              bool issuccess = await launchUrl(
                                Uri(scheme: 'tel', path: profile.cusPhone!),
                                mode: LaunchMode.platformDefault,
                              );

                              logger.e('call status: $issuccess');
                            } else {
                              logger.e('Cannot launch phone');
                            }
                          } else {
                            return showDialog(
                                context: context,
                                builder: (context) {
                                  if (Platform.isIOS) {
                                    return CupertinoAlertDialog(
                                      title: Text(
                                          AppLocalizations.of(context)!.alert),
                                      content: Text(
                                          AppLocalizations.of(context)!
                                              .phoneNumberNotAvailable),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                                AppLocalizations.of(context)!
                                                    .ok))
                                      ],
                                    );
                                  } else {
                                    return AlertDialog(
                                      title: Text(
                                          AppLocalizations.of(context)!.alert),
                                      content: Text(
                                          AppLocalizations.of(context)!
                                              .phoneNumberNotAvailable),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                                AppLocalizations.of(context)!
                                                    .ok))
                                      ],
                                    );
                                  }
                                });
                          }
                        } catch (e) {
                          logger.e('Error opening phone: $e');
                        }
                      },
                      child: ProfileTileRowWidget(
                        fimg: 'assets/svg/phone.svg',
                        limg: 'assets/svg/call.svg',
                        title: profile.cusPhone!,
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        String contact = profile.cusWhatsappNumber!;
                        Uri androidUrl =
                            Uri.parse('https://wa.me/$contact?text=Hi');
                        /*  Uri iosUrl = Uri.parse(
                                "https://wa.me/$contact?text=${Uri.parse('Hi, I need some help')}"); */
                        try {
                          if (profile.cusWhatsappNumber != null &&
                              profile.cusWhatsappNumber != '') {
                            if (await canLaunchUrl(
                              androidUrl,
                            )) {
                              bool issuccess = await launchUrl(
                                androidUrl,
                                mode: LaunchMode.platformDefault,
                              );

                              logger.e('WhatsApp Status: $issuccess');
                            } else {
                              logger.e('Cannot launch Whatsapp');
                            }
                          } else {
                            return showDialog(
                                context: context,
                                builder: (context) {
                                  if (Platform.isIOS) {
                                    return CupertinoAlertDialog(
                                      title: Text(
                                          AppLocalizations.of(context)!.alert),
                                      content: Text(
                                          AppLocalizations.of(context)!
                                              .whatsAppNtAvailable),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                                AppLocalizations.of(context)!
                                                    .ok))
                                      ],
                                    );
                                  } else {
                                    return AlertDialog(
                                      title: Text(
                                          AppLocalizations.of(context)!.alert),
                                      content: Text(
                                          AppLocalizations.of(context)!
                                              .whatsAppNtAvailable),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                                AppLocalizations.of(context)!
                                                    .ok))
                                      ],
                                    );
                                  }
                                });
                          }
                        } catch (e) {
                          logger.e('Error opening whatsapp: $e');
                        }
                      },
                      child: ProfileTileRowWidget(
                        fimg: 'assets/svg/whatsapp_1.svg',
                        limg: 'assets/svg/whatsapp.svg',
                        title: profile.cusWhatsappNumber ?? '',
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        log("cus geo code ${profile.cusGeoCode}");
                        //String map = profile.cusGeoCode!;
                        Uri androidUrl =
                            Uri.parse('geo:0,0?q=${profile.cusGeoCode}');
                        /*  Uri iosUrl = Uri.parse(
                                "https://wa.me/$contact?text=${Uri.parse('Hi, I need some help')}"); */
                        try {
                          if (profile.cusAddress != null &&
                              profile.cusAddress != '') {
                            if (await canLaunchUrl(
                              androidUrl,
                            )) {
                              bool issuccess = await launchUrl(
                                androidUrl,
                                mode: LaunchMode.platformDefault,
                              );

                              logger.e('Map status $issuccess');
                            } else {
                              logger.e('Cannot launch map');
                            }
                          } else {
                            return showDialog(
                                context: context,
                                builder: (context) {
                                  if (Platform.isIOS) {
                                    return CupertinoAlertDialog(
                                      title: Text(
                                          AppLocalizations.of(context)!.alert),
                                      content: Text(
                                          AppLocalizations.of(context)!
                                              .locationNotAvailable),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: const Text('Ok'))
                                      ],
                                    );
                                  } else {
                                    return AlertDialog(
                                      title: Text(
                                          AppLocalizations.of(context)!.alert),
                                      content: Text(
                                          AppLocalizations.of(context)!
                                              .locationNotAvailable),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: const Text('Ok'))
                                      ],
                                    );
                                  }
                                });
                          }
                        } catch (e) {
                          logger.e('Error launching map: $e');
                        }
                      },
                      child: ProfileTileRowWidget(
                        fimg: 'assets/svg/address.svg',
                        limg: 'assets/svg/locate.svg',
                        title: selectedLocale?.languageCode == "en"
                            ? profile.cusAddress ?? ''
                            : profile.cusAddressArabic ?? '',
                      ),
                    ),
                  ],
                ),
          getcusprofileFailedState: () => Center(
            child: Text(
              AppLocalizations.of(context)!.noDataAvailable,
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
