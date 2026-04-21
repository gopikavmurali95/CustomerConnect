import 'dart:io';

import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/customer_transaction/customer_transaction_bloc.dart';
import 'package:customer_connect/feature/state/bloc/customertransactiontargetcount/customer_transaction_target_count_bloc.dart';
import 'package:customer_connect/feature/state/bloc/customersettings/customer_settings_bloc.dart';
import 'package:customer_connect/feature/view/arcollection/arcollection.dart';
import 'package:customer_connect/feature/view/invoices/invoiceheader.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/l10n/app_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants/fonts.dart';

class CustomerTransaction extends StatefulWidget {
  final LoginUserModel user;
  const CustomerTransaction({super.key, required this.user});

  @override
  State<CustomerTransaction> createState() => _CustomerTransactionState();
}

class _CustomerTransactionState extends State<CustomerTransaction> {
  @override
  void initState() {
    super.initState();

    context.read<CustomerTransactionTargetCountBloc>().add(
          TargetCountSuccessEvent(userId: widget.user.usrId ?? ''),
        );
  }

  double _parseTargetPercentage(String? value) {
    final cleaned = (value ?? '0').replaceAll('%', '').trim();
    final parsed = double.tryParse(cleaned) ?? 0;
    return parsed.clamp(0, 100).toDouble();
  }

  String _formatPercentage(String? value) {
    final percentage = _parseTargetPercentage(value);
    return percentage % 1 == 0
        ? '${percentage.toInt()}%'
        : '${percentage.toStringAsFixed(1)}%';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          left: 8,
          right: 8,
        ),
        child: BlocBuilder<CustomerTransactionBloc, CustomerTransactionState>(
          builder: (context, state) {
            return state.when(
                cusTransactionSuccessState: (custranscount) {
                  if (custranscount != null) {
                    return BlocBuilder<CustomerSettingsBloc,
                        CustomerSettingsState>(
                      builder: (context, settings) {
                        return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: Colors.white,
                              border: Border.all(
                                color: const Color(0xFFE2E8F0),
                                width: 1,
                              ),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x1A000000),
                                  offset: Offset(0, 1),
                                  blurRadius: 2,
                                  spreadRadius: -1,
                                ),
                                BoxShadow(
                                  color: Color(0x1A000000),
                                  offset: Offset(0, 1),
                                  blurRadius: 3,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 10, left: 12, right: 12, top: 12),
                                  child: Row(
                                    spacing: 12,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: const Color(0x80A4F4CF),
                                              width: 1),
                                          gradient: const LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              Color.fromRGBO(0, 188, 125, 0.1),
                                              Color.fromRGBO(0, 153, 102, 0.1),
                                            ],
                                          ),
                                        ),
                                        child: SvgPicture.asset(
                                            'assets/svg/FileText.svg'),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            AppLocalizations.of(context)!
                                                .customerTransaction,
                                            style: pfontstyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14,
                                                letterSpacing: 0,
                                                color: const Color(0XFF0F172B)),
                                          ),
                                          Text(
                                            "Today's activity",
                                            style: ifontstyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                letterSpacing: 0,
                                                color: const Color(0XFF62748E)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const Divider(
                                  color: Color(0XFFF1F5F9),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 12, right: 12, top: 10, bottom: 12),
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
                                                Platform.isIOS
                                                    ? CupertinoPageRoute(
                                                        builder: (context) =>
                                                            InvoiceHeaderScreen(
                                                                isfromUser:
                                                                    false,
                                                                user: widget
                                                                    .user))
                                                    : MaterialPageRoute(
                                                        builder: (context) =>
                                                            InvoiceHeaderScreen(
                                                          isfromUser: false,
                                                          user: widget.user,
                                                        ),
                                                      ),
                                              );
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                    color:
                                                        const Color(0x80A4F4CF),
                                                    width: 1),
                                                gradient: const LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  stops: [0, 0.5, 1],
                                                  colors: [
                                                    Color(0xFFECFDF5),
                                                    Color(0xFFFFFFFF),
                                                    Color.fromRGBO(
                                                        236, 253, 245, 0.3),
                                                  ],
                                                ),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 10,
                                                  top: 10,
                                                  bottom: 10, /* right: 15 */
                                                ),
                                                child: Row(
                                                  children: [
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
                                                                '0',
                                                            style: ifontstyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                fontSize: 20,
                                                                color: const Color(
                                                                    0XFF0F172B),
                                                                letterSpacing:
                                                                    0)),
                                                        Text("Invoices ",
                                                            style: ifontstyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontSize: 12,
                                                              letterSpacing: 0,
                                                              color: const Color(
                                                                  0XFF45556C),
                                                            )),
                                                        Text(
                                                          "${AppLocalizations.of(context)!.aed} ${custranscount.invoiceAmount ?? '0.00'}",
                                                          style: ifontstyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 12,
                                                              letterSpacing: 0,
                                                              color: const Color(
                                                                  0XFF007A55)),
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
                                          width: 12.w,
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
                                                Platform.isIOS
                                                    ? CupertinoPageRoute(
                                                        builder: (context) =>
                                                            ArCollectionScreen(
                                                                isFromUser:
                                                                    false,
                                                                user: widget
                                                                    .user))
                                                    : MaterialPageRoute(
                                                        builder: (context) =>
                                                            ArCollectionScreen(
                                                          isFromUser: false,
                                                          user: widget.user,
                                                        ),
                                                      ),
                                              );
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                  color:
                                                      const Color(0x80BEDBFF),
                                                  width: 0.8,
                                                ),
                                                gradient: const LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  stops: [0, 0.5, 1],
                                                  colors: [
                                                    Color(0xFFEFF6FF),
                                                    Color(0xFFFFFFFF),
                                                    Color.fromRGBO(
                                                        239, 246, 255, 0.3),
                                                  ],
                                                ),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 10,
                                                  top: 10,
                                                  bottom: 10, /* right: 15 */
                                                ),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                        custranscount
                                                                .cusTrnArCollection ??
                                                            '0',
                                                        style: ifontstyle(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 20,
                                                          color: const Color(
                                                              0XFF0F172B),
                                                          letterSpacing: 0,
                                                        )),
                                                    Text("AR Collection",
                                                        style: ifontstyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 12,
                                                          color: const Color(
                                                              0XFF45556C),
                                                          letterSpacing: 0,
                                                        )),
                                                    Text(
                                                      "${AppLocalizations.of(context)!.aed} ${custranscount.arAmount ?? '0.00'}",
                                                      style: ifontstyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 12,
                                                        color: const Color(
                                                            0XFF1447E6),
                                                        letterSpacing: 0,
                                                      ),
                                                    )
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
                                ),
                                BlocBuilder<CustomerTransactionTargetCountBloc,
                                    CustomerTransactionTargetCountState>(
                                  builder: (context, targetState) {
                                    final targetCount = targetState.when(
                                      targetCountSuccessState: (count) => count,
                                      targetCountFailureState: () => null,
                                    );

                                    final percentage = _parseTargetPercentage(
                                        targetCount
                                            ?.dailyTargetAchievedPercentage);
                                    final percentageText = _formatPercentage(
                                        targetCount
                                            ?.dailyTargetAchievedPercentage);
                                    final targetAmount = (targetCount
                                                ?.dailyTargetAmount
                                                ?.trim()
                                                .isNotEmpty ??
                                            false)
                                        ? targetCount!.dailyTargetAmount!.trim()
                                        : '0';
                                    final remainingAmount = (targetCount
                                                ?.dailyRemainingAchievedAmount
                                                ?.trim()
                                                .isNotEmpty ??
                                            false)
                                        ? targetCount!
                                            .dailyRemainingAchievedAmount!
                                            .trim()
                                        : '0';

                                    return Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12, right: 12, bottom: 12),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color(0XFFF8FAFC),
                                          border: Border.all(
                                            color: const Color(0XFFE2E8F0),
                                            width: 1,
                                          ),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          spacing: 5,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Daily Target',
                                                  style: ifontstyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12,
                                                    color:
                                                        const Color(0XFF45556C),
                                                  ),
                                                ),
                                                Text(
                                                  percentageText,
                                                  style: ifontstyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 12,
                                                    color:
                                                        const Color(0XFF0F172B),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(999),
                                              child: Container(
                                                height: 10,
                                                width: double.infinity,
                                                color: const Color(0XFFE2E8F0),
                                                child: FractionallySizedBox(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  widthFactor: percentage / 100,
                                                  child: Container(
                                                    decoration:
                                                        const BoxDecoration(
                                                      gradient: LinearGradient(
                                                        colors: [
                                                          Color(0XFF00BC7D),
                                                          Color(0XFF009966),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              '${AppLocalizations.of(context)!.aed} $targetAmount target • $percentageText achieved • ${AppLocalizations.of(context)!.aed} $remainingAmount remaining',
                                              style: ifontstyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 10,
                                                color: const Color(0XFF62748E),
                                                letterSpacing: 0,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                )
                              ],
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
                cusTransactionFailedState: () => const SizedBox.shrink());
          },
        ));
  }
}
