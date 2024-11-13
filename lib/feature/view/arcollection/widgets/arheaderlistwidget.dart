import 'dart:developer';
import 'dart:io';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/arheader/ar_header_bloc.dart';
import 'package:customer_connect/feature/view/arcollection/ardetailsceren.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ARHeaderListWidget extends StatelessWidget {
  const ARHeaderListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: BlocBuilder<ArHeaderBloc, ArHeaderState>(
        builder: (context, state) {
          return state.when(
            arHeaderSuccessState: (artotal, arHeaders) => arHeaders == null
                ? ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) =>
                        ShimmerContainers(height: 60.h, width: double.infinity),
                    separatorBuilder: (context, index) => Divider(
                          color: Colors.grey[300],
                        ),
                    itemCount: 10)
                : arHeaders.isEmpty
                    ? Center(
                        child: Text(AppLocalizations.of(context)!.noDataFound),
                      )
                    : ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) => InkWell(
                              onTap: () {
                                log(arHeaders[index].arhId ?? '');
                                Navigator.push(
                                  context,Platform.isIOS?CupertinoPageRoute(builder: (context)=>
                                  ARDetailScreen(arheader: arHeaders[index])):
                                  MaterialPageRoute(
                                    builder: (context) => ARDetailScreen(
                                      arheader: arHeaders[index],
                                    ),
                                  ),
                                );
                              },
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundColor: const Color(0xffDB95B5),
                                    child: Image.asset(
                                      'assets/images/ar_li.png',
                                      height: 20.h,
                                      width: 20.w,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(arHeaders[index].arhArNumber ?? '',
                                            style: blueTextStyle()),
                                        Row(
                                          children: [
                                            Text(
                                              '${arHeaders[index].cshCode} - ',
                                              style: kfontstyle(
                                                fontSize: 11.sp,
                                                color: const Color(0xff2C6B9E),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                overflow: TextOverflow.ellipsis,
                                                selectedLocale?.languageCode ==
                                                        "en"
                                                    ? arHeaders[index]
                                                            .cshName ??
                                                        ""
                                                    : arHeaders[index]
                                                            .arcshName ??
                                                        '',
                                                style: kfontstyle(
                                                    fontSize: 12.sp,
                                                    color: const Color(
                                                        0xff413434)),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                                '${arHeaders[index].cusCode} - ',
                                                style: subTitleTextStyle()),
                                            Expanded(
                                              child: Text(
                                                  selectedLocale?.languageCode ==
                                                          "en"
                                                      ? arHeaders[index]
                                                              .cusName ??
                                                          ""
                                                      : arHeaders[index]
                                                              .arcusName ??
                                                          '',
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: subTitleTextStyle()),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          '${arHeaders[index].arhPayMode?.trim()} | ${AppLocalizations.of(context)!.route} ${arHeaders[index].rotName} | ${arHeaders[index].date} | ${arHeaders[index].time}',
                                          style: kfontstyle(
                                              fontSize: 10.sp,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        arHeaders[index].arhCollectedAmount ??
                                            "",
                                        style: kfontstyle(
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Container(
                                        height: 14.h,
                                        width: 30.w,
                                        decoration: BoxDecoration(
                                            color: arHeaders[index]
                                                        .arhPayMode ==
                                                    'HC'
                                                ? const Color.fromARGB(255, 200, 239, 249)//colorslist[0]
                                                : arHeaders[index].arhPayMode ==
                                                        "CH"
                                                    ? const Color.fromARGB(255, 246, 213, 197)//colorslist[3]
                                                    : arHeaders[index]
                                                                .arhPayMode ==
                                                            "POS"
                                                        ?  const Color.fromARGB(255, 200, 244, 218)//colorslist[2]
                                                        : const Color(
                                                            0xfff7f4e2),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Center(
                                          child: Text(
                                            arHeaders[index].arhPayMode ?? '',
                                            style: kfontstyle(
                                                fontSize: 10.sp,
                                                color: const Color(0xff413434)),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                        separatorBuilder: (context, index) => Divider(
                              color: Colors.grey[300],
                            ),
                        itemCount: arHeaders.length),
            arHeaderFailedState: () => SizedBox(
              height: MediaQuery.of(context).size.height / 1.4,
              child: Center(
                child: Text(
                  AppLocalizations.of(context)!.noDataAvailable,
                  style: kfontstyle(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
////
