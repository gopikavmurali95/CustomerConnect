import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/settlemetcashdetails/settlement_cash_details_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:customer_connect/l10n/app_localizations.dart';

class SettlmntCashDetailsScreen extends StatefulWidget {
  const SettlmntCashDetailsScreen({super.key});

  @override
  State<SettlmntCashDetailsScreen> createState() =>
      _SettlmntCashDetailsScreenState();
}

class _SettlmntCashDetailsScreenState extends State<SettlmntCashDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettlementCashDetailsBloc, SettlementCashDetailsState>(
        builder: (context, state) {
      return state.when(
          getCashDetailsState: (cash) => cash == null
              ? ShimmerContainers(height: 60.h, width: double.infinity)
              : Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${AppLocalizations.of(context)!.cashInvoices}  ',
                          style: kfontstyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Expanded(
                            child: Column(
                          children: [
                            SizedBox(
                              height: 7.h,
                            ),
                            DottedLine(
                              dashColor: Colors.grey.shade300,
                            )
                          ],
                        )),
                        Text(
                          "${cash.cashInv}",
                          style: kfontstyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${AppLocalizations.of(context)!.arCollectionCash} ',
                          style: kfontstyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Expanded(
                            child: Column(
                          children: [
                            SizedBox(
                              height: 7.h,
                            ),
                            DottedLine(
                              dashColor: Colors.grey.shade300,
                            )
                          ],
                        )),
                        Text(
                          "${cash.cashAr}",
                          style: kfontstyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${AppLocalizations.of(context)!.advanceCollectionCash}  ',
                          style: kfontstyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Expanded(
                            child: Column(
                          children: [
                            SizedBox(
                              height: 7.h,
                            ),
                            DottedLine(
                              dashColor: Colors.grey.shade300,
                            )
                          ],
                        )),
                        Text(
                          "${cash.cashAdv}",
                          style: kfontstyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${AppLocalizations.of(context)!.inventoryVarianceDebit}  ',
                          style: kfontstyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Expanded(
                            child: Column(
                          children: [
                            SizedBox(
                              height: 7.h,
                            ),
                            DottedLine(
                              dashColor: Colors.grey.shade300,
                            )
                          ],
                        )),
                        Text(
                          "${cash.debitNote}",
                          style: kfontstyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${AppLocalizations.of(context)!.cumulativeVarience}  ',
                          style: kfontstyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Expanded(
                            child: Column(
                          children: [
                            SizedBox(
                              height: 7.h,
                            ),
                            DottedLine(
                              dashColor: Colors.grey.shade300,
                            )
                          ],
                        )),
                        Text(
                          "${cash.pendingBalance}",
                          style: kfontstyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${AppLocalizations.of(context)!.pettyCash} ',
                          style: kfontstyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Expanded(
                            child: Column(
                          children: [
                            SizedBox(
                              height: 7.h,
                            ),
                            DottedLine(
                              dashColor: Colors.grey.shade300,
                            )
                          ],
                        )),
                        Text(
                          "${cash.pettyCash}",
                          style: kfontstyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.totalCash,
                          // "${cash.cashTotal}",
                          style: kfontstyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Expanded(
                            child: Column(
                          children: [
                            SizedBox(
                              height: 7.h,
                            ),
                            DottedLine(
                              dashColor: Colors.grey.shade300,
                            )
                          ],
                        )),
                        Text(
                          "${AppLocalizations.of(context)!.aed} ${cash.cashTotal}",
                          //'AED 7,300.00',
                          style: kfontstyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
          cashDetailFailedState: () => Center(
                child: Text(
                  AppLocalizations.of(context)!.noDataAvailableInCashDetails,
                  style: kfontstyle(),
                ),
              ));
    });
  }
}
