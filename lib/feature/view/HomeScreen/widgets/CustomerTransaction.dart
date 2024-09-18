import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/customer_transaction/customer_transaction_bloc.dart';
import 'package:customer_connect/feature/state/bloc/customersettings/customer_settings_bloc.dart';
import 'package:customer_connect/feature/view/arcollection/arcollection.dart';
import 'package:customer_connect/feature/view/invoices/invoiceheader.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../constants/fonts.dart';

class CustomerTransaction extends StatelessWidget {
  final LoginUserModel user;
  const CustomerTransaction({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
        child: BlocBuilder<CustomerTransactionBloc, CustomerTransactionState>(
          builder: (context, state) {
            return state.when(
              cusTransactionSuccessState: (custranscount) {
                if (custranscount != null) {
                  return BlocBuilder<CustomerSettingsBloc,
                      CustomerSettingsState>(
                    builder: (context, settings) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image:
                                  AssetImage('assets/images/home/cus_bg.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 10,
                                    left: 5,
                                    right: 5,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        AppLocalizations.of(context)!
                                            .customer_transactions,
                                        style: countHeading(),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 5.0, right: 5, top: 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Visibility(
                                        visible: settings.when(
                                          getCustomerSettingsState:
                                              (settings) => settings?.invoice ==
                                                          null ||
                                                      settings?.invoice != 'Y'
                                                  ? false
                                                  : true,
                                          customerSettingsFailedState: () =>
                                              true,
                                        ),
                                        child: Flexible(
                                          flex: 2,
                                          fit: FlexFit.tight,
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      InvoiceHeaderScreen(
                                                    isfromUser: false,
                                                    user: user,
                                                  ),
                                                ),
                                              );
                                            },
                                            child: Container(
                                              /*  height: 70,
                                                              width: 170, */
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: Colors.white),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15.0,
                                                    top: 10,
                                                    bottom: 5,
                                                    right: 15),
                                                child: Row(
                                                  children: [
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        SvgPicture.asset(
                                                          "assets/svg/inv.svg",
                                                          height: 23,
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(width: 12.w),
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            custranscount
                                                                    .cusTrnInvoice ??
                                                                '',
                                                            style:
                                                                countHeading()),
                                                        Row(
                                                          children: [
                                                            Text(
                                                                "${AppLocalizations.of(context)!.aed} ",
                                                                style:
                                                                    subTextStyle()),
                                                            Text(
                                                                custranscount
                                                                        .invoiceAmount ??
                                                                    '',
                                                                style:
                                                                    subTextStyle()),
                                                          ],
                                                        ),
                                                        Text(
                                                          AppLocalizations.of(
                                                                  context)!
                                                              .invoices,
                                                          style:
                                                              statusTextStyle(),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: settings.when(
                                          getCustomerSettingsState:
                                              (settings) => settings?.invoice ==
                                                          null ||
                                                      settings?.invoice !=
                                                              'Y' &&
                                                          settings?.arcollection ==
                                                              null ||
                                                      settings?.arcollection !=
                                                          'Y'
                                                  ? false
                                                  : true,
                                          customerSettingsFailedState: () =>
                                              true,
                                        ),
                                        child: SizedBox(
                                          width: 8.w,
                                        ),
                                      ),
                                      Visibility(
                                        visible: settings.when(
                                          getCustomerSettingsState:
                                              (settings) => settings
                                                              ?.arcollection ==
                                                          null ||
                                                      settings?.arcollection !=
                                                          'Y'
                                                  ? false
                                                  : true,
                                          customerSettingsFailedState: () =>
                                              true,
                                        ),
                                        child: Flexible(
                                          flex: 2,
                                          fit: FlexFit.tight,
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      ArCollectionScreen(
                                                    isFromUser: false,
                                                    user: user,
                                                  ),
                                                ),
                                              );
                                            },
                                            child: Container(
                                              /* height: 70,
                                                              width: 170, */
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: Colors.white),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15.0,
                                                    top: 10,
                                                    bottom: 5,
                                                    right: 15),
                                                child: Row(
                                                  children: [
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        SvgPicture.asset(
                                                          "assets/svg/ar.svg",
                                                          height: 23,
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      width: 12.w,
                                                    ),
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            custranscount
                                                                    .cusTrnArCollection ??
                                                                '',
                                                            style:
                                                                countHeading()),
                                                        Row(
                                                          children: [
                                                            Text(
                                                                "${AppLocalizations.of(context)!.aed} ",
                                                                style:
                                                                    subTextStyle()),
                                                            Text(
                                                                custranscount
                                                                        .arAmount ??
                                                                    '',
                                                                style:
                                                                    subTextStyle()),
                                                          ],
                                                        ),
                                                        Text(
                                                          AppLocalizations.of(
                                                                  context)!
                                                              .ar_collection,
                                                          style:
                                                              statusTextStyle(),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 3.h,
                                )
                              ],
                            ),
                          ));
                    },
                  );
                } else {
                  return ShimmerContainers(
                    height: 80.h,
                    width: double.infinity,
                  );
                }
              },
              cusTransactionFailedState: () => Container(
                  width: MediaQuery.of(context).size.width,
                  // height: 120,
                  // height: MediaQuery.of(context).size.height/5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/home/cus_bg.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 10,
                            left: 5,
                            right: 5,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppLocalizations.of(context)!
                                    .customer_transactions,
                                style: countHeading(),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 5.0, right: 5, top: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            InvoiceHeaderScreen(
                                          isfromUser: false,
                                          user: user,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    /*  height: 70,
                                          width: 170, */
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, top: 10, bottom: 5),
                                      child: Row(
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                "assets/svg/inv.svg",
                                                height: 18,
                                              ),
                                            ],
                                          ),
                                          SizedBox(width: 12.w),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('0', style: countHeading()),
                                              Row(
                                                children: [
                                                  Text(
                                                      "${AppLocalizations.of(context)!.aed} ",
                                                      style: subTextStyle()),
                                                  Text('0',
                                                      style: subTextStyle()),
                                                ],
                                              ),
                                              Text(
                                                AppLocalizations.of(context)!
                                                    .invoices,
                                                style: statusTextStyle(),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ArCollectionScreen(
                                          isFromUser: false,
                                          user: user,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    /* height: 70,
                                          width: 170, */
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, top: 10, bottom: 5),
                                      child: Row(
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                "assets/svg/ar.svg",
                                                height: 18,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            width: 12.w,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('0', style: countHeading()),
                                              Row(
                                                children: [
                                                  Text(
                                                      "${AppLocalizations.of(context)!.aed} ",
                                                      style: subTextStyle()),
                                                  Text('0',
                                                      style: subTextStyle()),
                                                ],
                                              ),
                                              Text(
                                                AppLocalizations.of(context)!
                                                    .ar_collection,
                                                style: statusTextStyle(),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 3.h,
                        )
                      ],
                    ),
                  )),
            );
          },
        ));
  }
}
