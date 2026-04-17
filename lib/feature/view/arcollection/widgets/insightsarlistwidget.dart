import 'dart:io';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/ar_header_model/ar_header_model.dart';
import 'package:customer_connect/feature/state/bloc/cusinsarheader/cus_ins_ar_header_bloc.dart';
import 'package:customer_connect/feature/view/arcollection/ardetailsceren.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/l10n/app_localizations.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InsightArListWidget extends StatelessWidget {
  const InsightArListWidget({
    super.key,
    this.shrinkWrap = true,
    this.physics = const NeverScrollableScrollPhysics(),
  });

  final bool shrinkWrap;
  final ScrollPhysics? physics;

  Color _getPayModeStripColor(String? payMode) {
    switch (payMode) {
      case 'HC':
        return const Color.fromARGB(255, 147, 213, 237);
      case 'OP':
        return const Color.fromARGB(255, 212, 199, 246);
      case 'POS':
        return const Color.fromARGB(255, 200, 244, 218);
      case 'CH':
        return const Color.fromARGB(255, 246, 213, 197);
      default:
        return const Color(0xffE5E291);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: BlocBuilder<CusInsArHeaderBloc, CusInsArHeaderState>(
        builder: (context, state) {
          return state.when(
            getArHeadersState: (headers, totals) => headers == null
                ? ListView.separated(
                    shrinkWrap: shrinkWrap,
                    physics: physics,
                    itemBuilder: (context, index) =>
                        ShimmerContainers(height: 60.h, width: double.infinity),
                    separatorBuilder: (context, index) => Divider(
                          color: Colors.grey[300],
                        ),
                    itemCount: 10)
                : headers.isEmpty
                    ? Center(
                        child: Text(
                          AppLocalizations.of(context)!.noDataFound,
                          style: kfontstyle(),
                        ),
                      )
                    : ListView.builder(
                        shrinkWrap: shrinkWrap,
                        physics: physics,
                        itemBuilder: (context, index) => InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  Platform.isIOS
                                      ? CupertinoPageRoute(
                                          builder: (context) => ARDetailScreen(
                                            arheader: ArHeaderModel(
                                                arhBalanceAmount: headers[index]
                                                    .balanceAmount,
                                                arhCollectedAmount: headers[index]
                                                    .collectedAmount,
                                                arhPayMode: selectedLocale
                                                            ?.languageCode ==
                                                        'en'
                                                    ? headers[index].payMode
                                                    : headers[index].arPayMode,
                                                arhPayType:
                                                    headers[index].payType,
                                                arpChequeDate:
                                                    headers[index].chequeDate,
                                                arpChequeNo:
                                                    headers[index].chequeNo,
                                                bankName: selectedLocale
                                                            ?.languageCode ==
                                                        'en'
                                                    ? headers[index].bankName
                                                    : headers[index].arBankName,
                                                cshCode: headers[index].cshCode,
                                                cshId: headers[index].cshId,
                                                cshName: selectedLocale
                                                            ?.languageCode ==
                                                        'en'
                                                    ? headers[index].cshName
                                                    : headers[index].arCshName,
                                                cusCode: headers[index].cusCode,
                                                cusId: headers[index].cusId,
                                                cusName:
                                                    selectedLocale?.languageCode == 'en'
                                                        ? headers[index].cusName
                                                        : headers[index].cusName,
                                                date: headers[index].date,
                                                image: headers[index].arpImage1,
                                                rotCode: headers[index].rotCode,
                                                rotId: headers[index].rotId,
                                                rotName: headers[index].rotName,
                                                time: headers[index].time,
                                                arhArNumber: headers[index].arhArNumber,
                                                arhId: headers[index].arhId),
                                          ),
                                        )
                                      : MaterialPageRoute(
                                          builder: (context) => ARDetailScreen(
                                            arheader: ArHeaderModel(
                                                arhBalanceAmount: headers[index]
                                                    .balanceAmount,
                                                arhCollectedAmount: headers[index]
                                                    .collectedAmount,
                                                arhPayMode: selectedLocale
                                                            ?.languageCode ==
                                                        'en'
                                                    ? headers[index].payMode
                                                    : headers[index].arPayMode,
                                                arhPayType:
                                                    headers[index].payType,
                                                arpChequeDate:
                                                    headers[index].chequeDate,
                                                arpChequeNo:
                                                    headers[index].chequeNo,
                                                bankName: selectedLocale
                                                            ?.languageCode ==
                                                        'en'
                                                    ? headers[index].bankName
                                                    : headers[index].arBankName,
                                                cshCode: headers[index].cshCode,
                                                cshId: headers[index].cshId,
                                                cshName: selectedLocale
                                                            ?.languageCode ==
                                                        'en'
                                                    ? headers[index].cshName
                                                    : headers[index].arCshName,
                                                cusCode: headers[index].cusCode,
                                                cusId: headers[index].cusId,
                                                cusName:
                                                    selectedLocale?.languageCode == 'en'
                                                        ? headers[index].cusName
                                                        : headers[index].cusName,
                                                date: headers[index].date,
                                                image: headers[index].arpImage1,
                                                rotCode: headers[index].rotCode,
                                                rotId: headers[index].rotId,
                                                rotName: headers[index].rotName,
                                                time: headers[index].time,
                                                arhArNumber: headers[index].arhArNumber,
                                                arhId: headers[index].arhId),
                                          ),
                                        ),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 0.0, vertical: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xffFFFFFF),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: const Color(0xffE5E7EB),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 10),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 60,
                                          width: 5,
                                          decoration: BoxDecoration(
                                            color: _getPayModeStripColor(
                                              selectedLocale?.languageCode ==
                                                      'en'
                                                  ? headers[index].payMode
                                                  : headers[index].arPayMode,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(2),
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
                                              Row(
                                                children: [
                                                  Text(
                                                    headers[index]
                                                            .arhArNumber ??
                                                        '',
                                                    style: blueTextStyle(),
                                                  ),
                                                  SizedBox(width: 10.w),
                                                  Container(
                                                    height: 14.h,
                                                    width: 30.w,
                                                    decoration: BoxDecoration(
                                                      color: headers[
                                                                      index]
                                                                  .payMode ==
                                                              'HC'
                                                          ? const Color.fromARGB(
                                                              255,
                                                              200,
                                                              239,
                                                              249)
                                                          : headers[
                                                                          index]
                                                                      .payMode ==
                                                                  "CH"
                                                              ? const Color
                                                                  .fromARGB(255,
                                                                  246, 213, 197)
                                                              : headers[index]
                                                                          .payMode ==
                                                                      "POS"
                                                                  ? const Color
                                                                      .fromARGB(
                                                                      255,
                                                                      200,
                                                                      244,
                                                                      218)
                                                                  : const Color(
                                                                      0xfff7f4e2),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        selectedLocale
                                                                    ?.languageCode ==
                                                                'en'
                                                            ? headers[index]
                                                                    .payMode ??
                                                                ''
                                                            : headers[index]
                                                                    .arPayMode ??
                                                                '',
                                                        style: kfontstyle(
                                                          fontSize: 10.sp,
                                                          color: const Color(
                                                              0xff413434),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    '${headers[index].cusCode} - ',
                                                    style: subTitleTextStyle(),
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      selectedLocale
                                                                  ?.languageCode ==
                                                              "en"
                                                          ? headers[index]
                                                                  .cusName ??
                                                              ''
                                                          : headers[index]
                                                                  .cusName ??
                                                              '',
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style:
                                                          subTitleTextStyle(),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              // Row(
                                              //   children: [
                                              //     Text(
                                              //       '${headers[index].cshCode} - ',
                                              //       style: kfontstyle(
                                              //         fontSize: 11.sp,
                                              //         color:
                                              //             const Color(0xff2C6B9E),
                                              //       ),
                                              //     ),
                                              //     Expanded(
                                              //       child: Text(
                                              //         selectedLocale
                                              //                     ?.languageCode ==
                                              //                 "en"
                                              //             ? headers[index]
                                              //                     .cshName ??
                                              //                 ""
                                              //             : headers[index]
                                              //                     .arCshName ??
                                              //                 '',
                                              //         overflow:
                                              //             TextOverflow.ellipsis,
                                              //         style: kfontstyle(
                                              //           fontSize: 12.sp,
                                              //           color: const Color(
                                              //               0xff413434),
                                              //         ),
                                              //       ),
                                              //     ),
                                              //   ],
                                              // ),
                                              Text(
                                                '${AppLocalizations.of(context)!.route} ${headers[index].rotName} | ${headers[index].date} | ${headers[index].time}',
                                                style: kfontstyle(
                                                  fontSize: 10.sp,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              headers[index].collectedAmount ??
                                                  '',
                                              style: ifontstyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            const Text(
                                              "AED",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        itemCount: headers.length),
            getArHeadersFailedState: () => SizedBox(
              height: MediaQuery.of(context).size.height / 1.5,
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
