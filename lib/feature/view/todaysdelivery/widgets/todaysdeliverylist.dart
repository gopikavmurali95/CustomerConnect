import 'dart:io';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/todays_delivery/todays_delivery_header_bloc.dart';
import 'package:customer_connect/feature/view/todaysdelivery/todaysdeliverydetails.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TodaysDeliveryList extends StatelessWidget {
  final LoginUserModel user;
  const TodaysDeliveryList({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: BlocBuilder<TodaysDeliveryHeaderBloc, TodaysDeliveryHeaderState>(
        builder: (context, state) {
          return state.when(
            getTodaysDeliveryState: (delivery) => delivery == null
                ? ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) =>
                        ShimmerContainers(height: 60.h, width: double.infinity),
                    separatorBuilder: (context, index) => Divider(
                          color: Colors.grey[300],
                        ),
                    itemCount: 10)
                : ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              Platform.isIOS?CupertinoPageRoute(builder: (context)=>
                              TodaysDeliveryDetails(
                                todaysdelivery: delivery[index],
                                 user: user)):
                              MaterialPageRoute(
                                builder: (context) => TodaysDeliveryDetails(
                                  todaysdelivery: delivery[index],
                                  user: user,
                                ),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundColor: const Color(0xffbadb95),
                                child: Image.asset(
                                  "assets/images/delivery.png",
                                  height: 20,
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      delivery[index].orderId ?? '',
                                      style: kfontstyle(
                                        fontSize: 12.sp,
                                        color: const Color(0xff2C6B9E),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '${delivery[index].cusCode} - ',
                                          style: kfontstyle(
                                            fontSize: 11.sp,
                                            color: const Color(0xff2C6B9E),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            overflow: TextOverflow.ellipsis,
                                            selectedLocale?.languageCode == "en"
                                                ? delivery[index].cusName ?? ''
                                                : delivery[index].arcusName ??
                                                    '',
                                            style: kfontstyle(
                                                fontSize: 12.sp,
                                                color: const Color(0xff413434)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '${delivery[index].cusOutCode} - ',
                                          style: kfontstyle(
                                              fontSize: 11.sp,
                                              color: const Color(0xff413434)),
                                        ),
                                        Expanded(
                                          child: Text(
                                            selectedLocale?.languageCode == "en"
                                                ? delivery[index].cusOutName ??
                                                    ''
                                                : delivery[index]
                                                        .arcusOutName ??
                                                    '',
                                            overflow: TextOverflow.ellipsis,
                                            style: kfontstyle(fontSize: 12.sp),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      '${delivery[index].rotName} | ${delivery[index].salesman} | ${delivery[index].date} | ${delivery[index].time}',
                                      style: kfontstyle(
                                          fontSize: 10.sp, color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // height: 14.h,
                                // width: 30.w,
                                decoration: BoxDecoration(
                                    color: delivery[index].status == 'C'
                                        ? const Color(0xfff7f4e2)
                                        : const Color(0xffe3f7e2),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 4),
                                  child: Text(
                                    selectedLocale?.languageCode == "en"
                                        ? delivery[index].status ?? ''
                                        : delivery[index].arStatus ?? '',
                                    style: kfontstyle(
                                        fontSize: 10.sp,
                                        color: const Color(0xff413434)),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                    separatorBuilder: (context,
                            index) => /* const SizedBox(
                      height: 10,
                    ) */
                        Divider(
                          color: Colors.grey[300],
                        ),
                    itemCount: delivery.length),
            todaysDeliveryFailedState: () => SizedBox(
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
