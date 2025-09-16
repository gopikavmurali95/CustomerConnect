import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/promotion_customer/promotion_customer_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:customer_connect/l10n/app_localizations.dart';

class PromotionCustomerList extends StatelessWidget {
  const PromotionCustomerList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PromotionCustomerBloc, PromotionCustomerState>(
      builder: (context, state) {
        return state.when(
          getPromotionCustomer: (promocustomer) => promocustomer == null
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) => ShimmerContainers(
                          height: 60.h, width: double.infinity),
                      separatorBuilder: (context, index) => Divider(
                            color: Colors.grey[300],
                          ),
                      itemCount: 10),
                )
              : ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: promocustomer.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: const Color(0xffB3DAF7),
                                child: Center(
                                  child: Text(
                                    promocustomer[index]
                                        .cusName!
                                        .split('')
                                        .toList()[0],
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            style: DefaultTextStyle.of(context)
                                                .style,
                                            children: [
                                              TextSpan(
                                                  text:
                                                      '${promocustomer[index].cusCode} - ',
                                                  style: blueTextStyle()),
                                              TextSpan(
                                                  text: selectedLocale
                                                              ?.languageCode ==
                                                          'en'
                                                      ? promocustomer[index]
                                                              .cusName ??
                                                          ''
                                                      : promocustomer[index]
                                                              .arCusName ??
                                                          '',
                                                  style: subTitleTextStyle()
                                                  // overflow: TextOverflow.ellipsis,
                                                  ),
                                            ],
                                          ),
                                        ),
                                        // Flexible(
                                        //   flex: 1,
                                        //   fit: FlexFit.tight,
                                        //   child: Text(
                                        //     ' - ${selectedLocale?.languageCode == "en" ? promocustomer[index].cusName ?? '' : promocustomer[index].arCusName ?? ''}',
                                        //     overflow: TextOverflow.ellipsis,
                                        //     style: subTitleTextStyle(),
                                        //   ),
                                        // ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          promocustomer[index].cusCode ?? '',
                                          style: subTitleTextStyle(),
                                        ),
                                        Text(
                                          ' - ',
                                          style: subTitleTextStyle(),
                                        ),
                                        Text(
                                          selectedLocale?.languageCode == "en"
                                              ? promocustomer[index].areaName ??
                                                  ''
                                              : promocustomer[index]
                                                      .arareaName ??
                                                  '',
                                          // promocustomer[index].areaName ?? '',
                                          style: subTitleTextStyle(),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      '${promocustomer[index].cusType} | '
                                      '${promocustomer[index].promotionCustomerModelClass} | '
                                      '${selectedLocale?.languageCode == "en" ? promocustomer[index].areaName ?? '' : promocustomer[index].arareaName ?? ''}',
                                      style: statusTextStyle(),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 0),
                          child: Divider(
                            color: Colors.grey.shade300,
                          ),
                        )
                      ],
                    );
                  }),
          promotionCustomerFailed: () => SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: Text(
                AppLocalizations.of(context)!.noDataAvailable,
                style: kfontstyle(),
              ),
            ),
          ),
        );
      },
    );
  }
}
