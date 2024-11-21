import 'dart:io';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/freesampleheader/free_sample_header_bloc.dart';
import 'package:customer_connect/feature/view/freesample/freesampledetailscreen.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FreeSampleHeaderListWidget extends StatelessWidget {
  final LoginUserModel user;
  final String selectedMode;
  const FreeSampleHeaderListWidget(
      {super.key, required this.user, required this.selectedMode});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FreeSampleHeaderBloc, FreeSampleHeaderState>(
      builder: (context, state) {
        return Expanded(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    selectedMode == 'P'
                        ? AppLocalizations.of(context)!.pendingApprovals
                        : AppLocalizations.of(context)!.approvedRequests,
                    style: countHeading(),
                  ),
                  Text(
                    state.when(
                      getFreeSampleHeaderState: (headers) =>
                          headers == null ? '0' : headers.length.toString(),
                      freesampleHeaderFailedState: () => '0',
                    ),
                    style: countHeading(),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: state.when(
                  getFreeSampleHeaderState: (headers) => headers == null
                      ? ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) => ShimmerContainers(
                              height: 60.h, width: double.infinity),
                          separatorBuilder: (context, index) => Divider(
                                color: Colors.grey[300],
                              ),
                          itemCount: 10)
                      : ListView.separated(
                          itemBuilder: (context, index) => GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    Platform.isIOS
                                        ? CupertinoPageRoute(
                                            builder: (context) =>
                                                FreeSampleDetailScreen(
                                                    user: user,
                                                    currentMode: selectedMode,
                                                    header: headers[index]))
                                        : MaterialPageRoute(
                                            builder: (context) =>
                                                FreeSampleDetailScreen(
                                              user: user,
                                              header: headers[index],
                                              currentMode: selectedMode,
                                            ),
                                          ),
                                  );
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      height: 70,
                                      width: 10,
                                      decoration: BoxDecoration(
                                          color: const Color(0xfffee8e0),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                    headers[index].fshReqId ??
                                                        ' ',
                                                    style: blueTextStyle()),
                                                /* Row(
                                                                  children: [
                                                                    Text(
                                                                      '${header[index].cusCode} - ',
                                                                      style:
                                                                          kfontstyle(
                                                                        fontSize:
                                                                            11.sp,
                                                                        color: const Color(
                                                                            0xff2C6B9E),
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child: Text(
                                                                          overflow:
                                                                              TextOverflow
                                                                                  .ellipsis,
                                                                          selectedLocale?.languageCode ==
                                                                                  'en'
                                                                              ? header[index].cusName ??
                                                                                  ''
                                                                              : header[index].arcusName ??
                                                                                  '',
                                                                          style:
                                                                              subTitleTextStyle()),
                                                                    ),
                                                                  ],
                                                                ), */
                                                RichText(
                                                  text: TextSpan(
                                                    style: DefaultTextStyle.of(
                                                            context)
                                                        .style,
                                                    children: [
                                                      TextSpan(
                                                        text:
                                                            '${headers[index].cusCode} - ',
                                                        style: kfontstyle(
                                                          fontSize: 11.sp,
                                                          color: const Color(
                                                              0xff2C6B9E),
                                                        ),
                                                      ),
                                                      TextSpan(
                                                          text: selectedLocale
                                                                      ?.languageCode ==
                                                                  'en'
                                                              ? headers[index]
                                                                      .cusName ??
                                                                  ''
                                                              : headers[index]
                                                                      .cusName ??
                                                                  ' ',
                                                          style:
                                                              subTitleTextStyle()
                                                          // overflow: TextOverflow.ellipsis,
                                                          ),
                                                    ],
                                                  ),
                                                ),
                                                Text(
                                                  '${headers[index].rotCode} | ${headers[index].createdDate}',
                                                  style: kfontstyle(
                                                      fontSize: 10.sp,
                                                      color: Colors.grey),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: headers[index]
                                                          .approvalStatus!
                                                          .isEmpty ||
                                                      headers[index]
                                                              .approvalStatus !=
                                                          'Action Taken'
                                                  ? headers[index]
                                                              .approvalStatus ==
                                                          'Rejected'
                                                      ? Colors.red[300]
                                                      : const Color(0xfff7f4e2)
                                                  : const Color(0xffe3f7e2),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                20,
                                              ),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8,
                                                      vertical: 5),
                                              child: Text(
                                                headers[index].approvalStatus ??
                                                    '',
                                                style: kfontstyle(
                                                    fontSize: 10.sp,
                                                    fontWeight: FontWeight.w400,
                                                    color: headers[index]
                                                                .approvalStatus ==
                                                            'Rejected'
                                                        ? Colors.white54
                                                        : Colors.black54),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          separatorBuilder: (context, index) => Divider(
                                color: Colors.grey[300],
                              ),
                          itemCount: headers.length),
                  freesampleHeaderFailedState: () => Center(
                    child: Text(
                      AppLocalizations.of(context)!.noDataAvailable,
                      style: kfontstyle(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
      },
    );
  }
}
