// ignore_for_file: deprecated_member_use

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/auto_update_resp_model/auto_update_resp_model.dart';
import 'package:customer_connect/feature/state/cubit/updatepercentage/update_download_percentage_cubit.dart';
import 'package:customer_connect/feature/view/HomeScreen/apkinstaller.dart';
import 'package:customer_connect/l10n/app_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AutoUpdateScreen extends StatefulWidget {
  final AutoUpdateRespModel status;
  const AutoUpdateScreen({super.key, required this.status});

  @override
  State<AutoUpdateScreen> createState() => _AutoUpdateScreenState();
}

class _AutoUpdateScreenState extends State<AutoUpdateScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    ApkInstaller().downloadAndInstallApk(widget.status.url ?? '', context);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PopScope(
        canPop: false,
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2.5,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/updatebg.jpg'))),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          AppLocalizations.of(context)!.appupdate,
                          style: kfontstyle(
                              fontSize: 19, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '${AppLocalizations.of(context)!.version} ${widget.status.verName}',
                          style: kfontstyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                BlocBuilder<UpdateDownloadPercentageCubit,
                    UpdateDownloadPercentageState>(
                  builder: (context, state) {
                    return state.percentage == -1
                        ? Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    CupertinoIcons.info_circle,
                                    color: Colors.red[200],
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    textAlign: TextAlign.center,
                                    AppLocalizations.of(context)!.updatefailed,
                                    style: kfontstyle(fontSize: 13.sp),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              CupertinoButton(
                                minSize: 20,
                                color: Colors.blue[200],
                                child: Text(
                                  AppLocalizations.of(context)!.retry,
                                  style: kfontstyle(),
                                ),
                                onPressed: () {
                                  ApkInstaller().downloadAndInstallApk(
                                      widget.status.url ?? '', context);
                                },
                              )
                            ],
                          )
                        : CustomLinearProgressIndicator(
                            percentage: state.percentage,
                          );
                  },
                ),
              ],
            ),
            Positioned(
              bottom: 6,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    CupertinoIcons.info_circle,
                    color: Colors.black38,
                    size: 13.sp,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    AppLocalizations.of(context)!.dontgoback,
                    style: kfontstyle(fontSize: 10.sp, color: Colors.black38),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomLinearProgressIndicator extends StatelessWidget {
  final int percentage;

  const CustomLinearProgressIndicator({
    super.key,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Linear progress bar
        Stack(
          children: [
            // Background bar
            Container(
              height: 30,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            // Progress bar
            Container(
              height: 30,
              width: 300 *
                  (percentage / 100), // Scale the width based on percentage
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        // Display percentage below the bar
        Text(
          '$percentage%',
          style: kfontstyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
