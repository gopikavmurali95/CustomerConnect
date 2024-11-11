import 'dart:io';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/customers/customers_list_bloc_bloc.dart';
import 'package:customer_connect/feature/view/customerinsights/customerinsightsscree.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomersListingWidget extends StatelessWidget {
  final LoginUserModel user;
  final ScrollController scrollctrl;
  const CustomersListingWidget(
      {super.key, required this.user, required this.scrollctrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: BlocBuilder<CustomersListBlocBloc, CustomersListBlocState>(
        builder: (context, state) {
          return state.when(
            getCustomersSstate: (customers, isloading) => customers == null
                ? ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) =>
                        ShimmerContainers(height: 60.h, width: double.infinity),
                    separatorBuilder: (context, index) => Divider(
                          color: Colors.grey[300],
                        ),
                    itemCount: 10)
                : customers.isEmpty
                    ? SizedBox(
                        height: MediaQuery.of(context).size.height / 1.2,
                        child: Center(
                          child: Text(
                            AppLocalizations.of(context)!.noDataFound,
                            style: kfontstyle(),
                          ),
                        ),
                      )
                    : Column(
                        children: [
                          ListView.separated(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) => InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,Platform.isIOS?CupertinoPageRoute(builder: (context)=>
                                        CustomerInsightsScreen(customer: customers[index], user: user)):
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              CustomerInsightsScreen(
                                            customer: customers[index],
                                            user: user,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                            radius: 20,
                                            backgroundColor:
                                                const Color(0xff95cbdb),
                                            child: Center(
                                              child: Text(
                                                customers[index].cusName == null
                                                    ? 'D'
                                                    : customers[index]
                                                        .cusName!
                                                        .split('')
                                                        .toList()[0],
                                                style: kfontstyle(
                                                  fontSize: 16.sp,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            )),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              RichText(
                                                text: TextSpan(
                                                    style: DefaultTextStyle.of(
                                                            context)
                                                        .style
                                                        .copyWith(
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          decoration:
                                                              TextDecoration
                                                                  .none,
                                                        ),
                                                    children: [
                                                      TextSpan(
                                                        text:
                                                            '${customers[index].cusCode} - ',
                                                        style: kfontstyle(
                                                          fontSize: 12.sp,
                                                          color: const Color(
                                                              0xff2C6B9E),
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: selectedLocale
                                                                    ?.languageCode ==
                                                                'en'
                                                            ? customers[index]
                                                                    .cusName ??
                                                                ''
                                                            : customers[index]
                                                                    .arcusName ??
                                                                '',
                                                        style: kfontstyle(
                                                            fontSize: 12.sp,
                                                            color: const Color(
                                                                0xff413434)),
                                                      )
                                                    ]),
                                              ),
                                              RichText(
                                                text: TextSpan(
                                                    style: DefaultTextStyle.of(
                                                            context)
                                                        .style
                                                        .copyWith(
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          decoration:
                                                              TextDecoration
                                                                  .none,
                                                        ),
                                                    children: [
                                                      TextSpan(
                                                        text:
                                                            '${customers[index].headerCode} - ',
                                                        style: kfontstyle(
                                                            fontSize: 11.sp,
                                                            color: const Color(
                                                                0xff413434)),
                                                      ),
                                                      TextSpan(
                                                        text: selectedLocale?.languageCode ==
                                                                'en'
                                                            ? customers[index]
                                                                    .headerName ??
                                                                ''
                                                            : customers[index]
                                                                    .arheaderName ??
                                                                '',
                                                        style: kfontstyle(
                                                            fontSize: 11.sp),
                                                      )
                                                    ]),
                                              ),
                                              Text(
                                                '${customers[index].cusType} | ${selectedLocale?.languageCode == 'en' ? customers[index].rotName : customers[index].arrotName} ',
                                                style: kfontstyle(
                                                    fontSize: 10.sp,
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                              separatorBuilder: (context, index) => Divider(
                                    color: Colors.grey[300],
                                  ),
                              itemCount: customers.length),
                          isloading == true
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
