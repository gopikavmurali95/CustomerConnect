import 'dart:io';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/customers/customers_list_bloc_bloc.dart';
import 'package:customer_connect/feature/view/customerinsights/customerinsightsscree.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/l10n/app_localizations.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomersListingWidget extends StatelessWidget {
  static const List<Color> _avatarColors = [
    Color(0xFF93C5FD),
    Color(0xFFA5B4FC),
    Color(0xFFBAE6FD),
    Color(0xFFA5B4FC),
  ];

  final LoginUserModel user;
  final ScrollController scrollctrl;
  const CustomersListingWidget(
      {super.key, required this.user, required this.scrollctrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
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
                          ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              itemBuilder: (context, index) => InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        Platform.isIOS
                                            ? CupertinoPageRoute(
                                                builder: (context) =>
                                                    CustomerInsightsScreen(
                                                        customer:
                                                            customers[index],
                                                        user: user))
                                            : MaterialPageRoute(
                                                builder: (context) =>
                                                    CustomerInsightsScreen(
                                                  customer: customers[index],
                                                  user: user,
                                                ),
                                              ),
                                      );
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5.0, vertical: 5),
                                      child: Container(
                                        constraints:
                                            const BoxConstraints(minHeight: 70),
                                        decoration: BoxDecoration(
                                            color: const Color(0xffFFFFFF),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color:
                                                    const Color(0xffE5E7EB))),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              CircleAvatar(
                                                  radius: 25,
                                                  backgroundColor:
                                                      _avatarColors[index %
                                                          _avatarColors.length],
                                                  child: Center(
                                                    child: Text(
                                                      customers[index]
                                                                  .cusName ==
                                                              null
                                                          ? 'D'
                                                          : customers[index]
                                                              .cusName!
                                                              .split('')
                                                              .toList()[0],
                                                      style: kfontstyle(
                                                        fontSize: 18.sp,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                  )),
                                              SizedBox(
                                                width: 10.w,
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    RichText(
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      text: TextSpan(
                                                          style: DefaultTextStyle
                                                                  .of(context)
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
                                                                  '${customers[index].cusCode} - ',
                                                              style: ifontstyle(
                                                                fontSize: 12.sp,
                                                                color: const Color(
                                                                    0xff155DFC),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
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
                                                              style: ifontstyle(
                                                                  fontSize:
                                                                      12.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: const Color(
                                                                      0xff101828)),
                                                            )
                                                          ]),
                                                    ),
                                                    RichText(
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      text: TextSpan(
                                                          style: DefaultTextStyle
                                                                  .of(context)
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
                                                                  '${customers[index].headerCode} - ',
                                                              style: ifontstyle(
                                                                  fontSize:
                                                                      11.sp,
                                                                  color: const Color(
                                                                      0xff4A5565)),
                                                            ),
                                                            TextSpan(
                                                              text: selectedLocale
                                                                          ?.languageCode ==
                                                                      'en'
                                                                  ? customers[index]
                                                                          .headerName ??
                                                                      ''
                                                                  : customers[index]
                                                                          .arheaderName ??
                                                                      '',
                                                              style: ifontstyle(
                                                                  color: const Color(
                                                                      0xff4A5565),
                                                                  fontSize:
                                                                      11.sp),
                                                            )
                                                          ]),
                                                    ),
                                                    Text(
                                                      '${customers[index].cusType} | ${selectedLocale?.languageCode == 'en' ? customers[index].rotName : customers[index].arrotName} ',
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: ifontstyle(
                                                          fontSize: 10.sp,
                                                          color: const Color(
                                                              0xff6A7282)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
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
