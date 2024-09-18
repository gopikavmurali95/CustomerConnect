import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/cubit/outstandingpagination/out_standing_pagination_cubit.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OutstandingListWidget extends StatelessWidget {
  const OutstandingListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child:
          BlocBuilder<OutStandingPaginationCubit, OutStandingPaginationState>(
        builder: (context, state) {
          return state.when(
            getOutStandingHeadersPageState: (headers, isLoading) => headers ==
                    null
                ? ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) =>
                        ShimmerContainers(height: 70.h, width: double.infinity),
                    separatorBuilder: (context, index) => const SizedBox(),
                    itemCount: 10)
                : headers.isEmpty
                    ? Center(
                        child: Text(
                          AppLocalizations.of(context)!.noDataFound,
                          style: kfontstyle(),
                        ),
                      )
                    : Column(
                        children: [
                          ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) => Column(
                                    children: [
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 20,
                                            backgroundColor:
                                                const Color(0xffDB95B5),
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
                                                Text(
                                                  headers[index].invoiceID ??
                                                      '',
                                                  style: kfontstyle(
                                                    fontSize: 12.sp,
                                                    color:
                                                        const Color(0xff2C6B9E),
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                /* Row(
                                                  children: [
                                                    Text(
                                                      '${headers[index].cusCode} - ',
                                                      style: kfontstyle(
                                                        fontSize: 11.sp,
                                                        color: const Color(
                                                            0xff2C6B9E),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        selectedLocale
                                                                    ?.languageCode ==
                                                                "en"
                                                            ? headers[index]
                                                                    .cusName ??
                                                                ''
                                                            : headers[index]
                                                                    .cusArName ??
                                                                '',
                                                        // headers[index].cusName ?? '',
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
                                                      '${headers[index].cshCode} - ',
                                                      style: kfontstyle(
                                                          fontSize: 11.sp,
                                                          color: const Color(
                                                              0xff413434)),
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        selectedLocale
                                                                    ?.languageCode ==
                                                                "en"
                                                            ? headers[index]
                                                                    .cshName ??
                                                                ''
                                                            : headers[index]
                                                                    .cshArName ??
                                                                '',
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: kfontstyle(
                                                            fontSize: 11.sp),
                                                      ),
                                                    ),
                                                  ],
                                                ), */
                                                SizedBox(
                                                  width: 300.w,
                                                  child: RichText(
                                                    text: TextSpan(
                                                        style:
                                                            DefaultTextStyle.of(
                                                                    context)
                                                                .style
                                                                .copyWith(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  decoration:
                                                                      TextDecoration
                                                                          .none,
                                                                ),
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
                                                                    "en"
                                                                ? headers[index]
                                                                        .cusName ??
                                                                    ''
                                                                : headers[index]
                                                                        .cusArName ??
                                                                    '',
                                                            // headers[index].cusName ?? '',
                                                            style: kfontstyle(
                                                                fontSize: 12.sp,
                                                                color: const Color(
                                                                    0xff413434)),
                                                          )
                                                        ]),
                                                  ),
                                                ),
                                                RichText(
                                                  text: TextSpan(
                                                      style:
                                                          DefaultTextStyle.of(
                                                                  context)
                                                              .style
                                                              .copyWith(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                decoration:
                                                                    TextDecoration
                                                                        .none,
                                                              ),
                                                      children: [
                                                        TextSpan(
                                                          text:
                                                              '${headers[index].cshCode} - ',
                                                          style: kfontstyle(
                                                              fontSize: 11.sp,
                                                              color: const Color(
                                                                  0xff413434)),
                                                        ),
                                                        TextSpan(
                                                          text: selectedLocale
                                                                      ?.languageCode ==
                                                                  "en"
                                                              ? headers[index]
                                                                      .cshName ??
                                                                  ''
                                                              : headers[index]
                                                                      .cshArName ??
                                                                  '',
                                                          style: kfontstyle(
                                                              fontSize: 11.sp),
                                                        ),
                                                      ]),
                                                ),
                                                Text(
                                                  '${headers[index].invPayType} | ${headers[index].rotName} |  ${headers[index].createdDate}',
                                                  style: kfontstyle(
                                                      fontSize: 10.sp,
                                                      color: Colors.grey),
                                                ),
                                                Text(
                                                  headers[index]
                                                          .invoiceAmount ??
                                                      '',
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
                                                headers[index].invoiceBalance ??
                                                    '',
                                                style: kfontstyle(
                                                    fontSize: 12.sp,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              SizedBox(
                                                height: 5.h,
                                              ),
                                              Container(
                                                height: 14.h,
                                                width: 50.w,
                                                decoration: BoxDecoration(
                                                    color: /*  index % 2 == 0
                                                  ? const Color(0xffe3f7e2)
                                                  : */
                                                       Color.fromARGB(255, 224, 241, 223),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Center(
                                                  child: Text(
                                                    selectedLocale
                                                                ?.languageCode ==
                                                            "en"
                                                        ? headers[index]
                                                                .status ??
                                                            ''
                                                        : headers[index]
                                                                .arStatus ??
                                                            '',
                                                    // headers[index].status ?? '',
                                                    style: kfontstyle(
                                                        fontSize: 10.sp,
                                                        color: const Color(
                                                            0xff413434)),
                                                  ),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Divider(
                                        color: Colors.grey[300],
                                      ),
                                    ],
                                  ),
                              itemCount: headers.length),
                          isLoading == true
                              ? const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [CircularProgressIndicator()],
                                )
                              : const SizedBox(
                                  height: 10,
                                )
                        ],
                      ),
          );
        },
      ),
    );
  }
}
////
